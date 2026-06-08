#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright 2026 The Secureblue Authors
#
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

restrict_path() {
    local path="$1"
    if [[ -d "${path}" ]]; then
        chmod 0700 "${path}"
    fi
}

restrict_path "/boot"
restrict_path "/usr/src"
restrict_path "/lib/modules"
restrict_path "/usr/lib/modules"
