#!/usr/bin/env bash

source "$(dirname "${BASH_SOURCE[0]}")/colors.sh"

info() {
    printf "${BLUE}ℹ${RESET} %s\n" "$1"
}

success() {
    printf "${GREEN}✓${RESET} %s\n" "$1"
}

warning() {
    printf "${YELLOW}⚠${RESET} %s\n" "$1"
}

error() {
    printf "${RED}✗${RESET} %s\n" "$1"
}