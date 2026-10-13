# cPouta Web Server

This OpenTofu configuration creates an Ubuntu VM on cPouta, installs Apache, and serves a custom web page.

## Before you start

- Install OpenTofu and configure your cPouta credentials in a local `clouds.yaml` under the cloud name `openstack`. Do not commit this credentials file.
- Copy `terraform.tfvars.example` to `terraform.tfvars` and replace the placeholders with your project network, SSH public-key path, public IP, and name. Get the exact image and flavor names from the cPouta web interface.
- Set `ssh_allowed_cidr` to your public IP with `/32` (for example, `198.51.100.25/32`). Do not use `0.0.0.0/0` for SSH access.

The network, SSH CIDR, and student name have no defaults so the deployment cannot silently use the wrong network, expose SSH too broadly, or show a placeholder identity.

## Run

From this directory, run:

```powershell
tofu init
tofu plan
tofu apply
```

After apply, open the `web_url` output in a browser. To remove the VM and related resources, run `tofu destroy`.
