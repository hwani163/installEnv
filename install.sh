sudo apt update
sudo apt install gitless
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "\nZSH_THEME="robbyrussell"" >> ~/.zshrc
echo "\nplugins=(" >> ~/.zshrc
echo "\n  git" >> ~/.zshrc
echo "\n  zsh-syntax-highlighting" >> ~/.zshrc
echo "\n  zsh-autosuggestions" >> ~/.zshrc
echo "\n)" >> ~/.zshrc

source ~/.zshrc

ssh-keygen -t rsa -C "hwani163@naver.com"
