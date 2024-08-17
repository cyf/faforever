#!/bin/sh

set -e

if [[ "$VERCEL_ENV" == "preview" ]] ; then
  echo "🔥Building web app in preview environment"
  flutter/bin/flutter build web --dart-define SENTRY_DSN="$FF_ENV_STG"
else
  echo "🔥Building web app in production environment"
  flutter/bin/flutter build web --dart-define SENTRY_DSN="$FF_ENV_PROD"
fi

exit 0
