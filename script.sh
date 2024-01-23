#!/bin/bash

TAP_TIN_LOG="install_log.txt"
ghi_log() {
  echo "$(date +"%Y-%m-%d %H:%M:%S"): $1" >> "$TAP_TIN_LOG"
}
clear

ghi_log "Đang chạy: termux-setup-storage"
termux-setup-storage

ghi_log "Đang chạy: apt update && apt upgrade"
apt update && apt upgrade

ghi_log "Cài đặt termux-api"
apt install termux-api

ghi_log "Cài đặt nodejs"
apt install nodejs
ghi_log "Thiết lập npm"
npm config set bin-links false

ghi_log "Cài đặt hoàn tất thành công!"
