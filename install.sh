/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo -e "\nZSH_THEME="robbyrussell"" >> ~/.zshrc
eco -e "\nplugins=(" >> ~/.zshrc
eco -e "\n  git" >> ~/.zshrc
eco -e "\n  zsh-syntax-highlighting" >> ~/.zshrc
eco -e "\n  zsh-autosuggestions" >> ~/.zshrc
eco -e "\n)" >> ~/.zshrc

source ~/.zshrc

ssh-keygen -t rsa -C "hwani163@naver.com"
