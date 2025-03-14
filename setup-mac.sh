# 1. Install XCode Command Line Tools
xcode-select --install

# 2. Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 3. Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 4. Install Homebrew Packages
./brew.sh
./brew-cask.sh

# 5. Install Global NPM Packages
./npm-global-packages.sh

# 6. Install VS Code Extensions
./vscode.sh

# 7. Setup Dock
./.macos
./dock.sh