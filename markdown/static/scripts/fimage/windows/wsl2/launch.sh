#! /usr/bin/env bash

while [[ $# -gt 0 ]]; do
  PROG_ARGS+=("${1}")
  case "${1}" in
    -gui|--gui)
      sudo apt update;sudo apt install git unzip dnsmasq -y;wget https://github.com/dahliaOS/fimage/releases/download/fimage-210525/fimage-210525.zip;unzip fimage-210525.zip;cd fimage-210525;./ffx-linux-x64 platform preflight;./network-config;sudo ./fimage-gui-hostGPU 4096
      break
      ;;
    -cli|--cli)
      sudo apt update;sudo apt install git unzip dnsmasq -y;wget https://github.com/dahliaOS/fimage/releases/download/fimage-210525/fimage-210525.zip;unzip fimage-210525.zip;cd fimage-210525;./ffx-linux-x64 platform preflight;./network-config;sudo ./fimage-headless 4096
      break
      ;;
    -reset|--reset)
      sudo rm -r fimage-210525/;sudo rm fimage-210525.zip
      break
      ;;
        esac
done