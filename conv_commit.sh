#!/bin/sh

gum style --border normal --margin "1" --padding "1 2" --border-foreground 212 "Hey friend! Let's $(gum style --foreground 212 'git') committin'."

sleep 1.5; clear

if [ -z "$(git status -s -uno | grep -v '^ ' | awk '{print $2}')" ]; then
  if gum confirm "Stage all?"; then
    git add . && gum spin -s line --title "Staging files..." -- sleep 1
  else
    sleep .5; echo "No files staged...adiós partner :wave:" | gum format -t emoji && exit 1
  fi
fi

sleep 1; clear

echo "Can you tell me the type this commit?"

TYPE=$(gum choose "fix" "feat" "docs" "style" "refactor" "test" "chore" "revert")
SCOPE=$(gum input --placeholder "scope")

clear

# Since the scope is optional, wrap it in parentheses if it has a value.
test -n "$SCOPE" && SCOPE="($SCOPE)"

# Pre-populate the input with the type(scope): so that the user may change it
SUMMARY=$(gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change")
DESCRIPTION=$(gum write --placeholder "Details of this change (CTRL+D to finish)")

# Commit these changes
gum confirm "Commit changes?" && git commit -m "$SUMMARY" -m "$DESCRIPTION"
