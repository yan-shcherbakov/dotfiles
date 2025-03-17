# Setup symlink for .zprofile
setup_dotfile_symlink() {
  echo "Setting up symlink for .zprofile..."
  
  # Check if dotfiles directory exists
  if [ ! -d "$HOME/dotfiles" ]; then
    echo "Error: ~/dotfiles directory does not exist. Please create it first."
    return 1
  fi
  
  # Check if source file exists
  if [ ! -f "$HOME/dotfiles/.zprofile" ]; then
    echo "Warning: ~/dotfiles/.zprofile does not exist. Creating an empty file."
    touch "$HOME/dotfiles/.zprofile"
  fi
  
  # Backup existing .zprofile if it exists and is not a symlink
  if [ -f "$HOME/.zprofile" ] && [ ! -L "$HOME/.zprofile" ]; then
    echo "Backing up existing .zprofile to .zprofile.backup"
    mv "$HOME/.zprofile" "$HOME/.zprofile.backup"
  elif [ -L "$HOME/.zprofile" ]; then
    echo "Removing existing symlink"
    rm "$HOME/.zprofile"
  fi
  
  # Create the symlink
  ln -s "$HOME/dotfiles/.zprofile" "$HOME/.zprofile"
  echo "Symlink created: ~/.zprofile -> ~/dotfiles/.zprofile"

  ln -s "$HOME/dotfiles/.gitconfig" "$HOME/.gitconfig"
  echo "Symlink created: ~/.gitconfig -> ~/dotfiles/.gitconfig"
}

# Run the function
setup_dotfile_symlink