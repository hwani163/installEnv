sudo apt update
sudo apt install gitless
sudo apt install zsh
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
&&
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
&&
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
&&
echo "\nplugins=(" >> ~/.zshrc
echo "  git" >> ~/.zshrc
echo "  zsh-syntax-highlighting" >> ~/.zshrc
echo "  zsh-autosuggestions" >> ~/.zshrc
echo ")" >> ~/.zshrc

source ~/.zshrc

ssh-keygen -t rsa -C "hwani163@naver.com"
