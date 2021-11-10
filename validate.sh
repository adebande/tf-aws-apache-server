#!/bin/bash

terraform fmt
for d in ./modules/*/ ; do (cd "$d" && terraform fmt); done
terraform validate