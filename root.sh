#!/bin/sh

set -e

ROOTFS_DIR=$(pwd)
export PATH=$PATH:~/.local/usr/bin
max_retries=50
timeout=1
ARCH=$(uname -m)

if [ "$ARCH" = "x86_64" ]; then
  ARCH_ALT=amd64
  elif [ "$ARCH" = "aarch64" ]; then
    ARCH_ALT=arm64
    else
      echo "Unsupported CPU architecture: $ARCH"
        exit 1
        fi

        if [ ! -e $ROOTFS_DIR/.installed ]; then
          echo "#######################################################################################"
            echo "#"
              echo "#                                Foxytoux Auto INSTALLER"
                echo "#"
                  echo "#                         Copyright (C) 2024, RecodeStudios.Cloud"
                    echo "#"
                      echo "#######################################################################################"

                        echo "[*] Bắt đầu tải Ubuntu Base 20.04 cho kiến trúc ${ARCH_ALT}..."

                          wget --tries=$max_retries --timeout=$timeout --no-hsts -O /tmp/rootfs.tar.gz \
                              "http://cdimage.ubuntu.com/ubuntu-base/releases/20.04/release/ubuntu-base-20.04.4-base-${ARCH_ALT}.tar.gz"

                                echo "[*] Giải nén rootfs..."
                                  tar -xf /tmp/rootfs.tar.gz -C $ROOTFS_DIR
                                  fi

                                  if [ ! -e $ROOTFS_DIR/.installed ]; then
                                    echo "[*] Cài đặt proot..."
                                      mkdir -p $ROOTFS_DIR/usr/local/bin
                                        wget --tries=$max_retries --timeout=$timeout --no-hsts -O $ROOTFS_DIR/usr/local/bin/proot \
                                            "https://raw.githubusercontent.com/foxytouxxx/freeroot/main/proot-${ARCH}"

                                              while [ ! -s "$ROOTFS_DIR/usr/local/bin/proot" ]; do
                                                  echo "[!] proot tải bị lỗi, thử lại..."
                                                      rm -f $ROOTFS_DIR/usr/local/bin/proot
                                                          wget --tries=$max_retries --timeout=$timeout --no-hsts -O $ROOTFS_DIR/usr/local/bin/proot \
                                                                "https://raw.githubusercontent.com/foxytouxxx/freeroot/main/proot-${ARCH}"
                                                                    sleep 1
                                                                      done

                                                                        chmod 755 $ROOTFS_DIR/usr/local/bin/proot
                                                                        fi

                                                                        if [ ! -e $ROOTFS_DIR/.installed ]; then
                                                                          echo "[*] Cấu hình DNS..."
                                                                            echo "nameserver 1.1.1.1" > ${ROOTFS_DIR}/etc/resolv.conf
                                                                              echo "nameserver 1.0.0.1" >> ${ROOTFS_DIR}/etc/resolv.conf
                                                                                touch $ROOTFS_DIR/.installed
                                                                                fi

                                                                                CYAN='\e[0;36m'
                                                                                WHITE='\e[0;37m'
                                                                                RESET_COLOR='\e[0m'

                                                                                display_done() {
                                                                                  echo -e "${WHITE}___________________________________________________${RESET_COLOR}"
                                                                                    echo -e ""
                                                                                      echo -e "           ${CYAN}-----> Ubuntu Installed Successfully! <----${RESET_COLOR}"
                                                                                      }

                                                                                      clear
                                                                                      display_done

                                                                                      echo "[*] Khởi chạy Ubuntu..."
                                                                                      $ROOTFS_DIR/usr/local/bin/proot \
                                                                                        --rootfs="${ROOTFS_DIR}" \
                                                                                          -0 -w "/root" \
                                                                                            -b /dev -b /sys -b /proc -b /etc/resolv.conf --kill-on-exit
