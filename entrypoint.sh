#!/usr/bin/env sh

set -e

{
    exec smbd --foreground --no-process-group "$@"
}
