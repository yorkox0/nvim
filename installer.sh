green="\e[0;32m\033[1m"
end="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
turquoise="\e[0;36m\033[1m"
grayr="\e[0;37m\033[1m"

function main(){

       echo
       echo -e "${red}[!] ${yellow}Installing nvim..."

       sleep 2
       
       echo
       pip install neovim 2>/dev/null
       sudo npm i -g neovim 2>/dev/null

       echo
       echo -e "${red}[!] ${yellow}Installing vim-plug..."

       sleep 2
       
       echo
       sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
              https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
      
       echo -e "${red}[!] ${yellow}Clonning config"
      
       sleep 2
      
       echo
       mkdir ~/.config/nvim/ 2>/dev/null

       cp -r nvim ~/.config/ 2>/dev/null
       
       echo
       echo -e "${green}[+] Done!"
       
       echo
       sleep 1

       echo
       echo -e "${red}[!] ${yellow}Executte 'nvim' and run :PlugInstall"
       
       echo -e "${end}"
       sleep 2

}

main
