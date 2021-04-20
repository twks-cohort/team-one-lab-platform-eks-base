#!/usr/bin/env bash
export NODE_GROUP=$1
export TERRAFORM_STEP=$2

if [[ -v $TAINT ]]; then
  case $TERRAFORM_STEP in
    Plan)
      echo -n "node_group ${NODE_GROUP} scheduled for taint"
      ;;

    Apply)
      echo -n "Apply taint to node_group ${NODE_GROUP}"
      terraform taint "module.eks.module.node_groups.random_pet.node_groups[\"${NODE_GROUP}\"]"
      terraform taint "module.eks.module.node_groups.aws_eks_node_group.workers[\"${NODE_GROUP}\"]"
      ;;

    *)
      echo -n "error: unknown terraform step (${TERRAFORM_STEP}) provided to taint_node_groups.sh"
      exit 1
      ;;
  esac
else
  echo -n "node_group ${NODE_GROUP} NOT scheduled for taint"
fi

# use circleci api to clear TAINT
