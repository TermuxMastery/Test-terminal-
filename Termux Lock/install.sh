#!/bin/bash
# Termux Lock Screen Installer 🔐

SCRIPT_NAME="screenlock.sh"
DEST_DIR="$HOME/bin"

# Make script executable
chmod +x $SCRIPT_NAME

# Create bin folder if not exists
mkdir -p $DEST_DIR

# Copy script to bin folder
cp $SCRIPT_NAME $DEST_DIR/lockscreen

# Add bin folder to PATH permanently
PROFILE="$HOME/.profile"
if ! grep -q "$DEST_DIR" "$PROFILE"; then
    echo "export PATH=$DEST_DIR:\$PATH" >> "$PROFILE"
    echo -e "\n✅ Added $DEST_DIR to PATH in $PROFILE"
fi

# Add auto-run to ~/.bashrc
BASHRC="$HOME/.bashrc"
if ! grep -q "lockscreen" "$BASHRC"; then
    echo -e "\n# Auto-run Termux Lock Screen" >> "$BASHRC"
    echo "if [ -t 1 ]; then lockscreen; fi" >> "$BASHRC"
fi

echo -e "\n✅ Installation Complete!"
echo "⚡ Lock screen will now auto-run every time Termux opens."
echo "You can also run it manually with: lockscreen"
echo "Restart Termux to apply PATH changes."
