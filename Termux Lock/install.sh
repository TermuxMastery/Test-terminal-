#!/bin/bash
# Termux Lock Screen Installer 🔐

SCRIPT_NAME="lockscreen.sh"
DEST_DIR="$HOME/bin"

# Make script executable
chmod +x $SCRIPT_NAME

# Create bin folder if not exists
mkdir -p $DEST_DIR

# Copy script
cp $SCRIPT_NAME $DEST_DIR/lockscreen

# Add bin to PATH if not already
if ! echo $PATH | grep -q "$DEST_DIR"; then
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.profile
    source ~/.profile
fi

# Optional: auto-run on Termux start
BASHRC="$HOME/.bashrc"
if ! grep -q "lockscreen" "$BASHRC"; then
    echo -e "\n# Auto-run Termux Lock Screen" >> "$BASHRC"
    echo "if [ -t 1 ]; then lockscreen; fi" >> "$BASHRC"
fi

echo -e "\n✅ Installation Complete!"
echo "Run Termux Lock Screen anytime with: lockscreen"
echo "It will also auto-run on Termux start."
