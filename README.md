# Terraform Module Template

In the future this repository will be integrated with a unified command line, for now you can copy the content of this repository to your new terraform module, both for GCP or AWS.

## Prerequisites(s)

Please make sure you are working on some kind of this environment and installed software bellow:

- Terraform [v12.0](https://www.terraform.io/)
- [Git](https://git-scm.com/book/en/v1/Getting-Started-Installing-Git)
- [terraform-docs](https://formulae.brew.sh/formula/terraform-docs)
- [pre-commit](https://pre-commit.com/)

### Feature(s)

This template contains some basic linter and convention below:

- Terraform linter
- Terraform docs creator
- Conflict on merge check
- Symlink check
- YAML linter
- Private key detector ( Why do you need to store private key in repository? )
- Trailing whitespace fixer
- End of file fixer

### How to get started

Please follow this instruction to start the deployment smoothly:

Please use semantic commit[^1] to generate good changelog.

To interact with the `make` script, here are some information you need to know based on `semtag` documentation:

```txt
VERSION:
  - final: Bumps the version top a final version
  - alpha: Bumps the version top an alpha version (appending -alpha.# to the version)
  - beta: Bumps the version top a beta version (appending -beta.# to the version)
  - candidate: Bumps the version top an release candidate version (appending -rc.# to the version)

SCOPE:
  - major
  - minor
  - patch

The format for scope based on semantic versioning format v<major>.<minor>.<patch>
```
For more information and details please visit [semtag](https://github.com/pnikosis/semtag)

### Available commands

To setup the project run
```bash
~ make setup
```

To create changelog run:
```bash
~ make changelog version=<version> scope=<scope>
```

To create release run:
```bash
~ make release version=<version> scope=<scope>
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


#### Footnotes
[^1]: Semantic commit following this format: `<type>`(`<scope>`): `<subject>` | `<scope>` is optional
	```
	feat(core): A subject that matters
	^--^  	  ^------------^
	|     	  |
	|     	  +-> Summary in present tense.
	|
	+-------> Type: feat, fix, docs, style, refactor, test, chore
	```
