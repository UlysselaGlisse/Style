#!/bin/bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Sprites generation..."

echo "sprite @2x..."
spreet --retina "$SCRIPT_DIR/icons" "$SCRIPT_DIR/sprites/skitourenguru@2x"

# standard
echo "Standard sprite..."
spreet "$SCRIPT_DIR/icons" "$SCRIPT_DIR/sprites/skitourenguru"

echo "Sprites generated successfully !"
