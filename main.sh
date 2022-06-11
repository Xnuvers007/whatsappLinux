#!/usr/bin/bash
#!/bin/bash
#!/bin/sh

ulangi(){
echo "=========== Linux Standard Base ==========="
echo "coded by Indradwi.25"
echo
lsb_release -a
echo "==========================================="
echo "Melakukan penginstallan whatsapp Linux"
echo "1. install whatsapp"
echo "2. Jalankan whatsapp"
echo "3. Buat Aplikasinya Di Desktop"
echo "4. Keluar"
echo "==========================================="
echo "Masukkan pilihan anda : "
read -p "Pilihan anda : " pilihan
if [[ $pilihan == 1 ]]; then
    echo "Installing whatsapp"
    echo "==========================================="
    read -p "Masukan Password Linux Kamu : " Password
    echo "$Password" | sudo -S apt-get install snapd
    sudo snap install whatsdesk
    ulangi

elif [[ $pilihan == 2 ]]; then
    echo "Jalankan whatsapp"
    echo "==========================================="
    whatsdesk

elif [[ $pilihan == 3 ]]; then
    echo "Buat Aplikasinya Di Desktop"
    echo "==========================================="
    read -p "Masukan Password Linux Kamu : " Password
    echo "$Password" | sudo -S apt-get install wget
    wget -O whatsapp.png https://i.pinimg.com/564x/d9/d9/7d/d9d97d48264770f85d35c208f279152c.jpg
    mv whatsapp.png /home/$USER/Pictures
    echo "[Desktop Entry]" | tee whatsapp.desktop
    echo "Version=1.0" | tee -a whatsapp.desktop
    echo "Type=Application" | tee -a whatsapp.desktop
    echo "Name=Whatsapp" | tee -a whatsapp.desktop
    echo "Icon=/home/$USER/Pictures/whatsapp.png" | tee -a whatsapp.desktop
    echo "Exec=whatsdesk" | tee -a whatsapp.desktop
    echo "Comment=Whatsapp" | tee -a whatsapp.desktop
    echo "Categories=Application;Network;Chat;" | tee -a whatsapp.desktop
    echo "Terminal=false" | tee -a whatsapp.desktop
    echo "StartupNotify=true" | tee -a whatsapp.desktop
    chmod 755 whatsapp.desktop
    mv whatsapp.desktop /home/$USER/Desktop
    read -p "Jika sudah muncul gambar / logo whatsapp di desktop, silahkan klik kanan pada aplikasinya pilih allow launching"

elif [[ $pilihan == 4 ]]; then
    echo "Keluar"
    echo "==========================================="
    exit

else
    echo "Pilihan tidak ada"
    echo "==========================================="
    exit
fi
}

ex(){
    exit
}

read -p "Apakah anda Ingin mulai ? [Y/n] : " tanya
if [ $tanya == "Y" ] || [ $tanya == 'y' ]; then
    ulangi
elif [ $tanya == "N" ] || [ $tanya == 'n' ]; then
    ex
else
    echo "salah input"
    exit
fi