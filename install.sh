# Install zsh, tmux,  git and most essential tools for me
sudo apt install -y tmux zsh git mc htop

# Disable ssh password authentication
sudo sed -i '/PasswordAuthentication\s/ s/# *//' /etc/ssh/sshd_config
sudo sed -i '/^PasswordAuthentication/s/yes/no/' /etc/ssh/sshd_config

# Delete previous installtion of oh-my-zsh if it's there
rm -rf ~/.oh-my-zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install my configfiles from vim, tmux and zsh
srcdir=`dirname $0`
cp -R $srcdir/home/. ~

# Install oh-my-zsh syntax highlight plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting/ ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
