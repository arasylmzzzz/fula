#!/bin/bash
# Fula -d (Download ve Yükleme)
if [ "$1" == "-d" ]; then echo "Fula: Yükleme işlemi başlatılıyor..."
    # Sistem Güncellemesi
    sudo apt update && sudo apt upgrade -y sudo apt dist-upgrade -y
    # Gerekli Sistem Araçları
    sudo apt install -y build-essential git curl wget vim htop tmux unzip zip
    # Programlama Dilleri
    sudo apt install -y python3 python3-dev python3-pip python3-venv \ ruby ruby-dev nodejs npm golang 
        default-jdk openjdk-11-jdk \ clang make gdb
    # Pentest Araçları
    sudo apt install -y nmap metasploit-framework wireshark john \ aircrack-ng hydra nikto ettercap-graphical 
        burpsuite \ sqlmap wpscan enum4linux
    # Kriptografi ve Şifreleme Araçları
    sudo apt install -y hashcat john steghide gpg openvas
    # Ağ Araçları
    sudo apt install -y netcat tcpdump dnsutils traceroute \ nmap net-tools
    # Güvenlik Araçları
    sudo apt install -y fail2ban clamav lynis ufw
    # Sistem İzleme Araçları
    sudo apt install -y glances nmon sysstat iotop iftop
    # Paket Yöneticileri: Snap, Flatpak
    sudo apt install -y snapd flatpak sudo systemctl enable --now snapd.socket
    # Snap Paketleri
    sudo snap install core sudo snap install metasploit sudo snap install spotify sudo snap install vlc
    # Flatpak Paketleri
    flatpak install flathub org.videolan.VLC -y flatpak install flathub com.spotify.Client -y
    # Temizlik
    sudo apt autoremove -y sudo apt clean
    # Sistemi yeniden başlat
    echo "Yükleme tamamlandı. Sistem yeniden başlatılıyor..." sudo reboot
# Fula -r (Remove ve Temizleme)
elif [ "$1" == "-r" ]; then echo "Fula: Yüklenen araçlar kaldırılıyor..."
    # Yüklenen araçların kaldırılması
    sudo apt purge -y build-essential git curl wget vim htop tmux unzip zip \ python3 python3-dev python3-pip 
        python3-venv ruby ruby-dev nodejs npm \ golang default-jdk openjdk-11-jdk clang make gdb \ nmap 
        metasploit-framework wireshark john aircrack-ng hydra nikto \ ettercap-graphical burpsuite sqlmap 
        wpscan enum4linux \ hashcat john steghide gpg openvas \ netcat tcpdump dnsutils traceroute nmap 
        net-tools \ fail2ban clamav lynis ufw glances nmon sysstat iotop iftop \ snapd flatpak snap core 
        metasploit spotify vlc
    # Temizlik işlemi
    sudo apt autoremove -y sudo apt clean echo "Tüm araçlar kaldırıldı." else echo "Fula: Geçersiz seçenek. 
    Kullanım:" echo " fula -d # Yükleme işlemi" echo " fula -r # Yüklenenleri kaldır"
fi
