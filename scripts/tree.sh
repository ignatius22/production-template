#!/usr/bin/env bash

find . \
-not -path "./.git/*" \
-not -path "./node_modules/*" \
| sort