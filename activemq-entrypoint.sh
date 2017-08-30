#!/bin/bash
set -e

run_activemq() {
    exec /usr/local/bin/activemq ${@:-console}
}

case "$1" in
    activemq)
        shift 1
        run_activemq "$@"
        ;;
    *)
        exec "$@"
esac
