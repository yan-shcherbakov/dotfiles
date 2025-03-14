echo "Restoring VS Code extensions..."
xargs -L 1 code --install-extension < vscode-extensions.txt
echo "VS Code extensions restored!"