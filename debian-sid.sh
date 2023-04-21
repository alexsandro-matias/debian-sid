function atualiza
{
  sudo apt update -y ; sudo apt upgrade -y ; sudo apt dist-upgrade -y ; sudo apt autoremove -y;
}


atualiza


sudo su - 

echo "
#------------------------------------------------------------------------------# 
#                   OFFICIAL DEBIAN REPOS                    
#------------------------------------------------------------------------------# 

###### Debian Main Repos
deb http://deb.debian.org/debian/ unstable main contrib non-free
deb-src http://deb.debian.org/debian/ unstable main contrib non-free

" >> /etc/apt/sources.list && exit

atualiza

sudo apt autoremove firefox-esr*

# Pacotes de Idiomas
sudo apt install language-pack-gnome-pt-base myspell-pt-br aspell-pt-br libreoffice-l10n-pt-br thunderbird-locale-pt-br firefox-locale-br yt-dlp -y


# Básicos
sudo apt install libreoffice-java-common vim git vlc qbittorrent build-essential telegram-desktop gnome-shell-pomodoro screenfetch vlc virtualbox -y

# Visual Studio Code
wget -c https://az764295.vo.msecnd.net/stable/f80445acd5a3dadef24aa209168452a3d97cc326/code_1.64.2-1644445741_amd64.deb

# Brave Browser

sudo apt install apt-transport-https curl -y


sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
atualiza && sudo apt install brave-browser -y && sudo apt install -f -y

# Apagando os arquivo baixados no final
rm -rf *.deb


