# Terraform 500 Vulnerable Files Corpus

This repo contains 500 intentionally vulnerable Terraform files for static IaC scanner testing.

## Do not deploy
All values are fake/placeholders. This is for tfsec, Trivy config, and Checkov testing only.

## Scan

```bash
tfsec .
trivy config .
checkov -d .
```

## Included issue types

- Open security groups
- SSH/RDP exposed to the world
- Public S3 ACLs
- Missing S3 security controls
- Wildcard IAM policies
- Public and unencrypted RDS
- EC2 IMDSv1 / optional token usage
- Unencrypted EBS/EFS
- Weak CloudTrail configuration
- KMS key rotation disabled
