#!/bin/bash
# Termux Lock Screen Installer 🔐

# --------------------------
# Paths
# --------------------------
SCRIPT_NAME="lockscreen.sh"
DEST_DIR="$HOME/bin"

# --------------------------
# Make script executable
# --------------------------
chmod +x $SCRIPT_NAME

# --------------------------
# Create bin folder if not exists
# --------------------------
mkdir -p $DEST_DIR

# --------------------------
# Copy script to bin folder
# --------------------------
cp $SCRIPT_NAME $DEST_DIR/lockscreen

# --------------------------
# Add bin folder to PATH if not already
# --------------------------
if ! echo $PATH | grep -q "$DEST_DIR"; then
    echo "export PATH=\$PATH:$DEST_DIR" >> $HOME/.bashrc
    source $HOME/.bashrc
fi

# --------------------------
# Success message
# --------------------------
echo -e "\n✅ Installation Complete!"
echo "You can now run your Termux Lock Screen by typing: lockscreen"