#!/bin/bash

HEADER=$( echo -n {\"alg\":\"RS256\"} | base64 | tr -d '=' )
PAYLOAD=$( echo -n \{\"iat\":$(date -u '+%s'),\"exp\":$(( $( date -u '+%s' ) + 600 )),\"iss\":$GITHUB_APP_ID\} | base64 | tr -d '\n' | tr -d '=' | tr / _ | tr + - )
SIGNATURE=$( echo -n "$HEADER.$PAYLOAD" | openssl dgst -sha256 -sign ./private_key -binary | openssl base64 | tr -d '\n' | tr -d '=' | tr / _ | tr + - )
TOKEN=$HEADER.$PAYLOAD.$SIGNATURE

INSTALLATION_ID=$( curl -s -H "Authorization: Bearer $TOKEN" -H "Accept: application/vnd.github.v3+json" https://api.github.com/app/installations | jq .[0].id )
INSTALLATION_TOKEN=$( curl -s -H "Authorization: Bearer $TOKEN" -H "Accept: application/vnd.github.v3+json" -d '{"permissions":{ "checks":"write"}}' https://api.github.com/app/installations/$INSTALLATION_ID/access_tokens | jq .token | tr -d '"' )
echo $INSTALLATION_TOKEN