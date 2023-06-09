# ConvCommit 

ConvCommit is a "conventional commit" script that quickly and easily enforces opinionated `git` commit message structure following the [Conventional Commit Specification](https://www.conventionalcommits.org/en/v1.0.0/#specification).

## Rationale

_Why_ capture this script in this form? The answer is simple - to automate this git commit workflow into my personal workflow. This script will be placed - alongside others I use frequently - within `~/shell_scripts/` where a `export PATH=~/shell_scripts:$PATH` placed within my `.zshrc` mapped to an alias like `alias gc="conv_commit.sh"` this allows me to call this script from the command line with ease.

Coupled with related projects like `gitlint` (see: [gitlint docs](https://jorisroovers.com/gitlint/latest/)) - this shell script can be a part of a small but powerful ecosystem of tools to help you be a good `gitizen` as you contribute to your favorite repositories.

## Credit/Acknowledgements

Much of the content of the script is NOT original and is borrowed with modification from the excellent tutorial for Charmbracelet's `gum` library [gum tutorial](https://github.com/charmbracelet/gum#tutorial) - all thanks to the original authors + contributors.
