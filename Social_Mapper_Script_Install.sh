#!/bin/bash

##Inicio Bem Vindo##
clear && echo ""
echo "'########::'#######:::'#######::'##:::::::'##::::'##:::::::::::::::::::'###::::'##::::'##:'########:::'#######::"
echo "... ##..::'##.... ##:'##.... ##: ##:::::::. ##::'##:::::::::::::::::::'## ##:::. ##::'##:: ##.... ##:'##.... ##:"
echo "::: ##:::: ##:::: ##: ##:::: ##: ##::::::::. ##'##:::::::::::::::::::'##:. ##:::. ##'##::: ##:::: ##: ##::::..::"
echo "::: ##:::: ##:::: ##: ##:::: ##: ##:::::::::. ###:::::::'#######::::'##:::. ##:::. ###:::: ########:: ########::"
echo "::: ##:::: ##:::: ##: ##:::: ##: ##::::::::: ## ##::::::........:::: #########::: ## ##::: ##.. ##::: ##.... ##:"
echo "::: ##:::: ##:::: ##: ##:::: ##: ##:::::::: ##:. ##::::::::::::::::: ##.... ##:: ##:. ##:: ##::. ##:: ##:::: ##:"
echo "::: ##::::. #######::. #######:: ########: ##:::. ##:::::::::::::::: ##:::: ##: ##:::. ##: ##:::. ##:. #######::"
echo ":::..::::::.......::::.......:::........::..:::::..:::::::::::::::::..:::::..::..:::::..::..:::::..:::.......:::"
echo ""
echo -e "\033[1;32mSeja bem vindo ao ToolX_ArcherT2U!\033[0m"
echo -e "\033[1;32mLinkedin:\033[0m https://www.linkedin.com/in/thalles-canela/"
echo -e "\033[1;32mYouTube: \033[0m https://www.youtube.com/c/aXR6CyberSecurity"
echo -e "\033[1;32mFacebook:\033[0m https://www.facebook.com/axr6PenTest"
echo -e "\033[1;32mGithub:  \033[0m https://github.com/ThallesCanela"
echo -e "\033[1;32mGithub:  \033[0m https://github.com/aXR6"
echo -e "\033[1;32mTwitter: \033[0m https://twitter.com/Axr6S"
echo -e "\033[1;32mPadim:   \033[0m https://www.padrim.com.br/aXR6CyberSecurity"
echo -e "\033[1;31m:=> Não seja sujo! Se achou de graça, distribua de graça repassando os devidos créditos! \033[0m"
echo -e "\033[1;31m:=> Usuário ROOT necessário!! \033[0m"
echo ""

echo -e "\033[1;31mAguarde... atualizando as listas de repositórios.\033[0m"
apt update
echo -e "\033[1;32m..........\033[0m"
echo -e "\033[1;32m:=> ok <=:\033[0m"
echo -e "\033[1;32m..........\033[0m"

echo -e "\033[1;31mAguarde... instalando as dependências do social_mapper.\033[0m"
apt install -y build-essential cmake
apt install -y libgtk-3-dev
apt install -y libboost-all-dev
echo -e "\033[1;32m..........\033[0m"
echo -e "\033[1;32m:=> ok <=:\033[0m"
echo -e "\033[1;32m..........\033[0m"

echo -e "\033[1;31mAguarde... o framebuffer virtual Xvfb.\033[0m"
apt install -y xvfb
echo -e "\033[1;32m..........\033[0m"
echo -e "\033[1;32m:=> ok <=:\033[0m"
echo -e "\033[1;32m..........\033[0m"

echo -e "\033[1;31mAguarde... fazendo o download e extraindo do Firefox-ESR-66.\033[0m"
cd /tmp
wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/66.0.2/linux-x86_64/pt-BR/firefox-66.0.2.tar.bz2
tar -jxvf firefox-66.0.2.tar.bz2 -C /opt
mv /opt/firefox*/ /opt/firefox-esr
ln -sf /opt/firefox-esr/firefox /usr/bin/firefox-esr
echo -e "\033[1;32m..........\033[0m"
echo -e "\033[1;32m:=> ok <=:\033[0m"
echo -e "\033[1;32m..........\033[0m"

echo -e "\033[1;31mAguarde... Instalando o WGET e o Geckodriver.\033[0m"
apt update
apt install wget
cd /tmp
wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz
tar -vzxf geckodriver-v0.24.0-linux64.tar.gz
cp -R geckodriver /usr/bin
echo -e "\033[1;32m..........\033[0m"
echo -e "\033[1;32m:=> ok <=:\033[0m"
echo -e "\033[1;32m..........\033[0m"

echo -e "\033[1;31mAguarde... Clonando o repositório do Social_Mapper e instalando as dependências.\033[0m"
cd /opt
git clone https://github.com/Greenwolf/social_mapper
cd social_mapper/setup
python -m pip install --no-cache-dir -r requirements.txt
echo -e "\033[1;32m..........\033[0m"
echo -e "\033[1;32m:=> ok <=:\033[0m"
echo -e "\033[1;32m..........\033[0m"

echo -e "\033[1;31mAguarde... Removendo aplicações desnecessarias.\033[0m"
apt autoremove -y
echo -e "\033[1;32m..........\033[0m"
echo -e "\033[1;32m:=> ok <=:\033[0m"
echo -e "\033[1;32m..........\033[0m"
