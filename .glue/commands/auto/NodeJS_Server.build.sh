#!/usr/bin/env bash
eval "$GLUE_COMMANDS_BOOTSTRAP"
bootstrap

if [ -f "$GLUE_WD/package-lock.json" ]; then
	npm
elif [ -f "$GLUE_WD/yarn.lock" ]; then
	:
elif [ -f "$GLUE_WD/pnpm-lock.yaml" ]; then
	:
fi
