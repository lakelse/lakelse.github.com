#!/bin/bash

VIRTUAL_MACHINES=(list machines here)

start() {
  for vm in ${VIRTUAL_MACHINES[@]}
    do 
      VBoxManage startvm $vm ;
    done
}

save() {
  for vm in ${VIRTUAL_MACHINES[@]}
    do 
      echo "Saving state for ${vm}..."
      VBoxManage controlvm $vm savestate;
    done
}

case "$1" in
  start) start;;
  save)  save;;
  *) echo "usage $0 start|save" >&2
     exit 1
     ;;
esac
