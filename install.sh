#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
cp $SCRIPT_DIR/.p_reload.sh ~/
cp $SCRIPT_DIR/.p_hidden.sh ~/

if [ -f "$HOME/.bashrc" ]; then
  echo "Add probe to .bashrc? [y/n]"
  read reply
  if [ "$reply" != "${reply#[Yy]}" ]; then
    echo "source $SCRIPT_DIR/definitions" >> ~/.bashrc
  fi
fi

if [ -f "$HOME/.zshrc" ]; then
  echo "Add probe to .zshrc? [y/n]"
  read reply
  if [ "$reply" != "${reply#[Yy]}" ]; then
    echo "source $SCRIPT_DIR/definitions" >> ~/.zshrc
  fi
fi
