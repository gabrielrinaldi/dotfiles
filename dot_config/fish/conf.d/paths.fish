# Setting up the Path
set -e fish_user_paths

# Load homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Directories
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_DESKTOP_DIR $HOME/Desktop
set -gx XDG_DOWNLOAD_DIR $HOME/Downloads
set -gx XDG_DOCUMENTS_DIR $HOME/Documents
set -gx XDG_MUSIC_DIR $HOME/Music
set -gx XDG_PICTURES_DIR $HOME/Pictures
set -gx XDG_VIDEOS_DIR $HOME/Videos

# Set local bin path
set -x PATH ~/.local/bin $PATH

# Set lmstudio path
set -gx PATH ~/.lmstudio/bin $PATH
