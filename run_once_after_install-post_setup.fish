#!/opt/homebrew/bin/fish

echo "Installing fisher..."
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher update
