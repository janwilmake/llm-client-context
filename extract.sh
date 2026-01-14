#!/bin/bash

# List of major LLM client llms.txt URLs
URLS=(
  "https://agentskills.io/llms.txt"
  "https://code.claude.com/docs/llms.txt"
  "https://platform.claude.com/llms.txt"
  "https://cursor.com/llms.txt"
  "https://developers.openai.com/llms.txt"
  "https://developers.openai.com/codex/llms.txt"
  "https://docs.cline.bot/llms.txt"
  "https://docs.windsurf.com/llms.txt"
)

# Clear/create output file
> ./llms.txt

for url in "${URLS[@]}"; do
  echo "Fetching: $url"
  echo "# Source: $url" >> ./llms.txt
  echo "" >> ./llms.txt
  curl -sL "$url" >> ./llms.txt
  echo "" >> ./llms.txt
  echo "" >> ./llms.txt
done

echo "Done! Combined llms.txt created."
