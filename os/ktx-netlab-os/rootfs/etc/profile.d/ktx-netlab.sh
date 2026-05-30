#!/usr/bin/env bash
if [[ $- == *i* ]] && [[ -z "${KTX_WELCOME_SHOWN:-}" ]]; then
  export KTX_WELCOME_SHOWN=1
  if command -v ktx-welcome >/dev/null 2>&1; then
    ktx-welcome
  fi
fi
