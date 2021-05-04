#! /bin/bash

CURRENT_DIR="$(pwd)"
ROOT_DIR="$(dirname "$(cd "$(dirname "${BASH_SOURCE:-$0}")" && pwd)")"

if [ ! -f ./teensy/teensy_loader_cli ]; then
  echo "teensy_loader_cli as binary not found..."
  cd "${ROOT_DIR}/teensy" && make
  cd $CURRENT_DIR
  echo "teensy_loader_cli compiled success"
fi

cd "${ROOT_DIR}/keymaps"
echo "select the keymap config file:"
select fname in *.hex
do
  echo $fname
  cd $ROOT_DIR
  "${ROOT_DIR}/teensy/teensy_loader_cli" -w -mmcu=atmega32u4 "${ROOT_DIR}/keymaps/${fname}"
  break
done
