#!/bin/bash

COMMAND="certbot"

if [[ -n "$EMAIL" && -n "$URL" ]]; then
	COMMAND="$COMMAND certonly --standalone \
		-n --renew-with-new-domains --agree-tos \
		--email $EMAIL \
		-d $URL"

	if [[ -n "$EXTRA_DOMAINS" ]]; then
		DOMAINS=$(echo "$EXTRA_DOMAINS" | tr "," "\n")
		for d in $DOMAINS; do
			COMMAND="$COMMAND -d $d"
		done
	fi
else
	COMMAND="$COMMAND renew"
fi

eval "$COMMAND"

