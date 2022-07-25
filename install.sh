sudo apt install gitless
sudo apt install zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo -e "\nZSH_THEME="robbyrussell"" >> ~/.zshrc
echo -e "\nplugins=(" >> ~/.zshrc
echo -e "\n  git" >> ~/.zshrc
echo -e "\n  zsh-syntax-highlighting" >> ~/.zshrc
echo -e "\n  zsh-autosuggestions" >> ~/.zshrc
echo -e "\n)" >> ~/.zshrc

source ~/.zshrc

ssh-keygen -t rsa -C "hwani163@naver.com"
