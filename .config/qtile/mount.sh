#!/bin/sh

echo -e '123' | sudo -S mount /dev/sda1 /mnt/win_a
echo -e '123' | sudo -S mount /dev/sda4 /mnt/win_c
echo -e '123' | sudo -S mount /dev/sda10 /mnt/win_b
echo -e '123' | sudo -S mount /dev/sda11 /mnt/win_d
# mount /dev/sda6 /mnt/win_c
# mount /dev/sda4 /mnt/win_b
# mount /dev/sda7 /mnt/win_d
# mount /dev/sda8 /mnt/win_e
