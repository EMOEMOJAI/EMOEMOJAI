#!/bin/bash
# One-time: grant the "user" scope, then set profile fields.
gh auth refresh -h github.com -s user
gh api -X PATCH /user \
  -f name="EMOJAI" \
  -f bio="Mostly arguing with agents until it ships" \
  -F hireable=true \
  --jq '{name,bio,hireable}'
# Social links shown under the bio. Edit the URLs, delete lines you don't have.
# gh api -X POST /user/social_accounts -f 'account_urls[]=https://x.com/YOURHANDLE'
# gh api -X POST /user/social_accounts -f 'account_urls[]=https://www.youtube.com/@YOURCHANNEL'
# gh api -X POST /user/social_accounts -f 'account_urls[]=https://twitch.tv/YOURCHANNEL'
