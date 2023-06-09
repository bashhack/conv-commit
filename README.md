# ConvCommit 
---

ConvCommit is a "conventional commit" script that quickly and easily enforces opinionated `git` commit message structure following the [Conventional Commit Specification](https://www.conventionalcommits.org/en/v1.0.0/#specification).

The content of the script is NOT original and comes line by line from the excellent tutorial for Charmbracelet's `gum` library [gum tutorial](https://github.com/charmbracelet/gum#tutorial) - all thanks to the original authors + contributors.

_Why_ capture this script in this form? The answer is simple - to automate this git commit workflow into my personal workflow. This script will be placed - alongside others I use frequently - within `~/shell_scripts/` where a `export PATH=~/shell_scripts:$PATH` placed within my `.zshrc` mapped to an alias like `alias gc="conv_commit.sh"` this allows me to call this script from the command line with ease.
