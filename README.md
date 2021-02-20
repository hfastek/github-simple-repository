# github-repository-modules

Simple GitHub repository with modules in Terraform (demo)

## Usage

Set up GitHub provider with environment variables and apply:

```bash
export GITHUB_TOKEN=<YOUR_TOKEN>
export GITHUB_ORGANIZATION=<YOUR_ORGANIZATION_NAME> # Optional
terraform apply
```

## Problems

There are some problems with GitHub provider since the GitHub took ownership of that.
See [Github issue](https://github.com/integrations/terraform-provider-github/issues/652) on that.
