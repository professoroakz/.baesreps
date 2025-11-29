# .baesreps

Reps derived from Bae's Secrets - A dotfiles collection for managing secrets, vaults, and personal workflows.

## 💜 What is .baesreps?

.baesreps is a dotfiles collection for **Secrets, Vaults & Personal Reps** - a personal productivity system capable of:
- 🔒 **Managing secrets** securely
- 🔐 **Organizing vaults** (secure storage environments)
- 📝 **Creating reps** (routines/repetitions/workflows)
- ✍️ **Taking notes** and journaling

## Features

### Secret Management
- Stash, list, and manage secrets
- Track secret metadata and status
- Secure shredding of sensitive data

### Vault System
- Create and manage secure vaults
- Lock and unlock different environments
- Track current vault context

### Rep Execution
- Create and queue reps (routines/repetitions)
- Execute workflows automatically
- Track rep progress and status

### Note Taking
- Create notes with timestamps
- Daily journaling support
- Quick memo capture

## Installation

```bash
# Clone the repository
git clone https://github.com/professoroakz/.baesreps.git ~/.baesreps

# Create symlinks
ln -sf ~/.baesreps/.aliases ~/.aliases
ln -sf ~/.baesreps/.bash_profile ~/.bash_profile
ln -sf ~/.baesreps/.bash_prompt ~/.bash_prompt
ln -sf ~/.baesreps/.bashrc ~/.bashrc
ln -sf ~/.baesreps/.exports ~/.exports
ln -sf ~/.baesreps/.functions ~/.functions
ln -sf ~/.baesreps/.gitconfig ~/.gitconfig
ln -sf ~/.baesreps/.gitignore_global ~/.gitignore_global

# Reload your shell
source ~/.bash_profile

# Initialize .baesreps directories
baesreps-init
```

## Quick Start

```bash
# Check your .baesreps status
baesreps-status

# Stash a new secret
baesreps-secret stash my-first-secret

# List all secrets
baesreps-secret list

# Create a secure vault
baesreps-vault create personal

# Unlock the vault
baesreps-vault unlock personal

# Create a rep
baesreps-rep create "Morning routine"

# Create a note
baesreps-note create "Remember to check the vault"

# Open today's journal
baesreps-note journal
```

## Included Dotfiles

| File | Description |
|------|-------------|
| `.aliases` | Secret, vault, rep, and note shortcuts |
| `.bash_profile` | Main entry point, loads .baesreps environment |
| `.bash_prompt` | Custom prompt showing current vault and git status |
| `.bashrc` | Sources `.bash_profile` for non-login shells |
| `.exports` | Environment variables for .baesreps configuration |
| `.functions` | Core functions for secret/vault/rep management |
| `.gitconfig` | Git configuration with useful aliases |
| `.gitignore_global` | Global gitignore patterns |

## Configuration

### Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `BAESREPS_HOME` | .baesreps installation directory | `~/.baesreps` |
| `BAESREPS_SECRETS_DIR` | Secret storage directory | `~/secrets` |
| `BAESREPS_VAULTS_DIR` | Secure vaults directory | `~/vaults` |
| `BAESREPS_REPS_DIR` | Reps directory | `~/reps` |
| `BAESREPS_NOTES_DIR` | Notes directory | `~/notes` |
| `BAESREPS_ENCRYPTION` | Default encryption method | `aes-256` |
| `BAESREPS_VAULT_TIMEOUT` | Vault auto-lock timeout (seconds) | `300` |

### Customization

Create a `~/.extra` file for personal settings:

```bash
# Your custom settings
export BAESREPS_VAULT_TIMEOUT=600

# Custom encryption preference
export BAESREPS_ENCRYPTION="aes-256-gcm"
```

## Commands Reference

### Secret Commands
- `baesreps-secret stash <name>` - Stash a new secret
- `baesreps-secret list` - List all secrets
- `baesreps-secret status <name>` - Show secret status
- `baesreps-secret shred <name>` - Remove a secret

### Vault Commands
- `baesreps-vault create <name>` - Create a new vault
- `baesreps-vault list` - List all vaults
- `baesreps-vault unlock <name>` - Unlock a vault
- `baesreps-vault lock` - Lock current vault

### Rep Commands
- `baesreps-rep create <name>` - Create a new rep
- `baesreps-rep list` - List all reps
- `baesreps-rep execute <id>` - Execute a rep

### Note Commands
- `baesreps-note create <text>` - Create a note
- `baesreps-note journal` - Open today's journal
- `baesreps-note memo <text>` - Quick memo

## License

MIT License - Inspired by [xaoex/.gamers](https://github.com/xaoex/.gamers)
