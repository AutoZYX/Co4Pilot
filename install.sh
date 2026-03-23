#!/usr/bin/env bash
# install.sh - Install Academic Research Claude Code Agents
# Uses append-only pattern to avoid overwriting existing configurations.
# All items are installed with "academic-" prefix to prevent conflicts.

set -euo pipefail

# --- Configuration ---
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PREFIX="academic-"

# Claude Code directories
CLAUDE_DIR="${HOME}/.claude"
SKILLS_DIR="${CLAUDE_DIR}/skills"
AGENTS_DIR="${CLAUDE_DIR}/agents"
COMMANDS_DIR="${CLAUDE_DIR}/commands"
HOOKS_DIR="${CLAUDE_DIR}/hooks"
KNOWLEDGE_DIR="${CLAUDE_DIR}/knowledge"
WORKFLOWS_DIR="${CLAUDE_DIR}/workflows"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# --- Functions ---

print_header() {
    echo ""
    echo -e "${BLUE}============================================${NC}"
    echo -e "${BLUE}  Academic Research Claude Code Agents${NC}"
    echo -e "${BLUE}  Installer v1.0${NC}"
    echo -e "${BLUE}============================================${NC}"
    echo ""
}

print_success() {
    echo -e "${GREEN}[OK]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

print_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

ensure_dir() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        print_info "Created directory: $1"
    fi
}

# Copy a file with prefix, skip if already exists (append-only)
install_file() {
    local src="$1"
    local dest_dir="$2"
    local filename
    filename="$(basename "$src")"

    # Add prefix to filename
    local dest_file="${dest_dir}/${PREFIX}${filename}"

    if [ -f "$dest_file" ]; then
        print_warning "Already exists, skipping: ${PREFIX}${filename}"
    else
        cp "$src" "$dest_file"
        print_success "Installed: ${PREFIX}${filename}"
    fi
}

# Install a directory of files with subdirectory structure
install_skill_dir() {
    local src_dir="$1"
    local dest_base="$2"
    local category
    category="$(basename "$src_dir")"

    local dest_dir="${dest_base}/${PREFIX}${category}"
    ensure_dir "$dest_dir"

    local count=0
    for file in "$src_dir"/*.md; do
        if [ -f "$file" ]; then
            local filename
            filename="$(basename "$file")"
            local dest_file="${dest_dir}/${filename}"

            if [ -f "$dest_file" ]; then
                print_warning "  Already exists, skipping: ${category}/${filename}"
            else
                cp "$file" "$dest_file"
                count=$((count + 1))
            fi
        fi
    done

    if [ $count -gt 0 ]; then
        print_success "Installed ${count} skills in ${PREFIX}${category}/"
    fi
}

do_install() {
    print_header

    # Ensure Claude Code directories exist
    print_info "Setting up directories..."
    ensure_dir "$SKILLS_DIR"
    ensure_dir "$AGENTS_DIR"
    ensure_dir "$COMMANDS_DIR"
    ensure_dir "$HOOKS_DIR"
    ensure_dir "$KNOWLEDGE_DIR"
    ensure_dir "$WORKFLOWS_DIR"

    # Install skills (with subdirectory structure)
    echo ""
    print_info "Installing skills..."
    for skill_dir in "$SCRIPT_DIR"/skills/*/; do
        if [ -d "$skill_dir" ]; then
            install_skill_dir "$skill_dir" "$SKILLS_DIR"
        fi
    done

    # Install agents
    echo ""
    print_info "Installing agents..."
    for agent_file in "$SCRIPT_DIR"/agents/*.md; do
        if [ -f "$agent_file" ]; then
            install_file "$agent_file" "$AGENTS_DIR"
        fi
    done

    # Install workflows
    echo ""
    print_info "Installing workflows..."
    for workflow_file in "$SCRIPT_DIR"/workflows/*.md; do
        if [ -f "$workflow_file" ]; then
            install_file "$workflow_file" "$WORKFLOWS_DIR"
        fi
    done

    # Install commands (if any .md files exist)
    if ls "$SCRIPT_DIR"/commands/*.md 1>/dev/null 2>&1; then
        echo ""
        print_info "Installing commands..."
        for cmd_file in "$SCRIPT_DIR"/commands/*.md; do
            if [ -f "$cmd_file" ]; then
                install_file "$cmd_file" "$COMMANDS_DIR"
            fi
        done
    fi

    # Install hooks (if any .md files exist)
    if ls "$SCRIPT_DIR"/hooks/*.md 1>/dev/null 2>&1; then
        echo ""
        print_info "Installing hooks..."
        for hook_file in "$SCRIPT_DIR"/hooks/*.md; do
            if [ -f "$hook_file" ]; then
                install_file "$hook_file" "$HOOKS_DIR"
            fi
        done
    fi

    # Install knowledge (if any files exist)
    if ls "$SCRIPT_DIR"/knowledge/*.md 1>/dev/null 2>&1; then
        echo ""
        print_info "Installing knowledge base..."
        for knowledge_file in "$SCRIPT_DIR"/knowledge/*.md; do
            if [ -f "$knowledge_file" ]; then
                install_file "$knowledge_file" "$KNOWLEDGE_DIR"
            fi
        done
    fi

    # Summary
    echo ""
    echo -e "${GREEN}============================================${NC}"
    echo -e "${GREEN}  Installation Complete!${NC}"
    echo -e "${GREEN}============================================${NC}"
    echo ""
    echo "Skills, agents, and workflows have been installed"
    echo "with the '${PREFIX}' prefix into your Claude Code environment."
    echo ""
    echo "To uninstall, run: bash uninstall.sh"
    echo ""
}

do_uninstall() {
    echo ""
    print_info "Uninstalling Academic Research Claude Code Agents..."
    echo ""

    # Remove prefixed skill directories
    for dir in "$SKILLS_DIR"/${PREFIX}*/; do
        if [ -d "$dir" ]; then
            rm -rf "$dir"
            print_success "Removed: $(basename "$dir")/"
        fi
    done

    # Remove prefixed agent files
    for file in "$AGENTS_DIR"/${PREFIX}*.md; do
        if [ -f "$file" ]; then
            rm "$file"
            print_success "Removed: $(basename "$file")"
        fi
    done

    # Remove prefixed workflow files
    for file in "$WORKFLOWS_DIR"/${PREFIX}*.md; do
        if [ -f "$file" ]; then
            rm "$file"
            print_success "Removed: $(basename "$file")"
        fi
    done

    # Remove prefixed command files
    for file in "$COMMANDS_DIR"/${PREFIX}*.md; do
        if [ -f "$file" ]; then
            rm "$file"
            print_success "Removed: $(basename "$file")"
        fi
    done

    # Remove prefixed hook files
    for file in "$HOOKS_DIR"/${PREFIX}*.md; do
        if [ -f "$file" ]; then
            rm "$file"
            print_success "Removed: $(basename "$file")"
        fi
    done

    # Remove prefixed knowledge files
    for file in "$KNOWLEDGE_DIR"/${PREFIX}*.md; do
        if [ -f "$file" ]; then
            rm "$file"
            print_success "Removed: $(basename "$file")"
        fi
    done

    echo ""
    print_success "Uninstallation complete."
    echo ""
}

# --- Main ---

case "${1:-}" in
    --uninstall|-u)
        do_uninstall
        ;;
    --help|-h)
        echo "Usage: bash install.sh [OPTIONS]"
        echo ""
        echo "Options:"
        echo "  (none)          Install academic research agents"
        echo "  --uninstall, -u Uninstall academic research agents"
        echo "  --help, -h      Show this help message"
        ;;
    *)
        do_install
        ;;
esac
