#!/bin/sh
set -e

yamllint .
cat tool-definitions.yaml config.example.yaml | yamllint -
