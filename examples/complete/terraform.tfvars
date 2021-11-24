availability_zones             = ["us-east-2a", "us-east-2b"]
bucket_name_for_logs           = "tamr-poc-complete-logs"
bucket_name_for_root_directory = "tamr-poc-complete-root"
egress_cidr_blocks             = ["0.0.0.0/0"]
ingress_cidr_blocks            = []
key_pair                       = "fd-emr-test"
tls_certificate_arn            = "arn:aws:acm:us-east-2:131578276461:certificate/aac769b8-23a4-47d9-a507-299627680d19"
name_prefix                    = "tamr-poc-complete-example"
