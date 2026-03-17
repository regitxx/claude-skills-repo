#!/bin/bash
# install.sh - Claude Skills Repository setup script
# Installs MCP servers and configures Claude for skills

set -e

echo "Claude Skills Repository Setup"
echo "=================================="
echo ""
echo "This script will install MCP servers and configure Claude."
echo ""

# Check prerequisites
echo "Checking prerequisites..."

if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python 3 not found"
    exit 1
fi

if ! command -v git &> /dev/null; then
    echo "ERROR: Git not found"
    exit 1
fi

echo "✓ Prerequisites installed"

# Configure Claude
echo ""
echo "Configuring Claude..."

CLAUDE_DIR="${HOME}/.claude"
mkdir -p "$CLAUDE_DIR"

# Copy MCP configs
echo "Setting up MCP configurations..."
mkdir -p "$CLAUDE_DIR/mcp-configs"
cp mcp-configs/*.json "$CLAUDE_DIR/mcp-configs/" 2>/dev/null || true

echo "✓ Claude configured"

echo ""
echo "Installation complete!"
echo ""
echo "Next steps:"
echo "1. Configure environment variables: cp .env.example .env && edit .env"
echo "2. Review the CLAUDE.md for overview"
echo "3. Browse skills in: skills/"
echo "4. Set up GitHub Actions by pushing to your repository"
echo ""