{
    "aws_region": "us-east-2",
    "aws_assume_role": "DPSPlatformEksBaseRole",
    "aws_account_id": "{{ op://cohorts/teamone-aws/aws-account-id }}",

    "cluster_name": "nonprod-us-east-2",
    "cluster_version": "1.28",
    "cluster_enabled_log_types": ["api", "audit", "authenticator", "controllerManager", "scheduler"],
    "cluster_log_retention": "30",
    "vpc_cni_version": "v1.14.1-eksbuild.1",
    "coredns_version": "v1.10.1-eksbuild.2",
    "kube_proxy_version": "v1.28.1-eksbuild.1",
    "aws_ebs_csi_version": "v1.23.0-eksbuild.1",
    "alert_channel": "nonprod",

    "default_node_group_name": "group-a",
    "default_node_group_ami_type": "AL2_x86_64",
    "default_node_group_platform": "linux",
    "default_node_group_min_size": "3",
    "default_node_group_max_size": "5",
    "default_node_group_desired_size": "3",
    "default_node_group_disk_size": "50",
    "default_node_group_capacity_type": "SPOT",
    "default_node_group_instance_types": ["t2.2xlarge","t3.2xlarge","t3a.2xlarge","m5n.2xlarge","m5.2xlarge","m4.2xlarge"],

    "oidc_client_id": "{{ op://cohorts/teamone-svc-auth0/twdpsio-dpsctl-client-id }}",
    "oidc_groups_claim": "https://github.com/twks-cohort/teams",
    "oidc_identity_provider_config_name": "Auth0",
    "oidc_issuer_url": "https://dev-2ibzxsfuw1nxh0uw.us.auth0.com/"
}
