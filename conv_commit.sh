#!/bin/sh

# This script is used to write a conventional commit message.
# It prompts the user to choose the type of commit as specified in the
# Conventional Commit spec (https://www.conventionalcommits.org/en/v1.0.0/#specification)
# and then prompts for the summary and detailed description of the message.

if [ "$(git status --porcelain)" ]; then
  gum style --border normal --margin "1" --padding "1 2" --border-foreground 212 "Hey friend! Let's $(gum style --foreground 212 'git') committin'."

  sleep 1.5; clear

  if gum confirm "Stage all?"; then
    git add . && gum spin -s line --title "Staging files..." -- sleep 1
  else
    sleep .5; echo "No files staged...adiós partner :wave:" | gum format -t emoji && exit 1
  fi
else
  exit 1
fi

sleep 1; clear

TYPE=$(gum choose --header "Commit type" "fix" "feat" "ci" "perf" "build" "docs" "style" "refactor" "test" "chore" "revert")
SCOPE=$(gum input --placeholder "scope")

clear

# Since the scope is optional, wrap it in parentheses if it has a value.
test -n "$SCOPE" && SCOPE="($SCOPE)"

# Pre-populate the input with the type(scope): so that the user may change it
SUMMARY=$(gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change")
DESCRIPTION=$(gum write --placeholder "Details of this change (CTRL+D to finish)")

gum confirm "Commit changes?" && git commit -m "$SUMMARY" -m "$DESCRIPTION"
