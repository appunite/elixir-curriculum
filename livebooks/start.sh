#!/usr/bin/env bash

docker compose up -d
LIVEBOOK_HOME=. livebook server open
