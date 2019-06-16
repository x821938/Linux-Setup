#!/usr/bin/env bash


# Install zsh, tmux,  git and most essential tools for me
apt install -y tmux zsh git mc htop curl vim atop net-tools wget sudo

# Disable ssh password authentication
sed -i '/PasswordAuthentication\s/ s/# *//' /etc/ssh/sshd_config
sed -i '/^PasswordAuthentication/s/yes/no/' /etc/ssh/sshd_config
