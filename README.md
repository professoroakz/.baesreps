# .baesreps

Reps derived from Bae's Secrets - A dotfiles collection for managing secrets, vaults, and personal workflows.

## 💜 What is .baesreps?

.baesreps is a hybrid dotfiles application for **Secrets, Vaults & Personal Reps** - a personal productivity system capable of:
- 🔒 **Managing secrets** securely
- 🔐 **Organizing vaults** (secure storage environments)
- 📝 **Creating reps** (routines/repetitions/workflows)
- ✍️ **Taking notes** and journaling
- 🃏 **Managing cards** (minimal units of work with points)
- 📊 **Calculating points** for projects and tasks

## Features

### Project & Card Management
- Create projects to organize your work
- Add cards (minimal work units) with point values
- Track progress with visual progress bars
- Calculate total, completed, and pending points

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
baesreps init
```

## Quick Start

```bash
# Check your .baesreps status
baesreps status

# Create a new project
baesreps project create myapp "My awesome app"

# Add cards (work units) with points
baesreps card add myapp setup-auth 5 "Setup authentication"
baesreps card add myapp build-ui 10 "Build UI components"
baesreps card add myapp write-tests 3 "Write unit tests"

# List all cards
baesreps card list

# Complete a card
baesreps card complete card-1234567890-12345

# Calculate progress
baesreps calc progress myapp

# View summary
baesreps calc summary

# Stash a new secret
baesreps secret stash my-first-secret

# List all secrets
baesreps secret list

# Create a secure vault
baesreps vault create personal

# Unlock the vault
baesreps vault unlock personal

# Create a rep
baesreps rep create "Morning routine"

# Create a note
baesreps note create "Remember to check the vault"

# Open today's journal
baesreps note journal
```

## Executable Scripts (bin/)

The `bin/` directory contains executable scripts that form the core CLI for .baesreps:

| Script | Description |
|--------|-------------|
| `baesreps` | Main entry point CLI |
| `baesreps-project` | Project management |
| `baesreps-card` | Card (work unit) management |
| `baesreps-calc` | Points calculator and progress tracker |
| `baesreps-secret` | Secret management |
| `baesreps-vault` | Vault management |
| `baesreps-rep` | Rep (routine) management |
| `baesreps-note` | Note and journal management |
| `baesreps-json` | JSON parsing utility |

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
| `BAESREPS_PROJECTS_DIR` | Projects directory | `~/projects` |
| `BAESREPS_CARDS_DIR` | Cards directory | `~/cards` |
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

### Main Commands
- `baesreps init` - Initialize .baesreps environment
- `baesreps status` - Show current status and statistics
- `baesreps version` - Show version

### Project Commands
- `baesreps project create <name> [desc]` - Create a new project
- `baesreps project list` - List all projects
- `baesreps project show <name>` - Show project details
- `baesreps project archive <name>` - Archive a project
- `baesreps project delete <name>` - Delete a project

### Card Commands
- `baesreps card add <project> <name> [points] [desc]` - Add a card
- `baesreps card list [project]` - List all cards
- `baesreps card show <card-id>` - Show card details
- `baesreps card complete <card-id>` - Mark card as completed
- `baesreps card update <card-id> <field> <value>` - Update card
- `baesreps card delete <card-id>` - Delete a card

### Calculator Commands
- `baesreps calc total [project]` - Calculate total points
- `baesreps calc completed [project]` - Calculate completed points
- `baesreps calc pending [project]` - Calculate pending points
- `baesreps calc progress [project]` - Show progress with visual bar
- `baesreps calc summary` - Show overall summary

### Secret Commands
- `baesreps secret stash <name>` - Stash a new secret
- `baesreps secret list` - List all secrets
- `baesreps secret status <name>` - Show secret status
- `baesreps secret shred <name>` - Remove a secret

### Vault Commands
- `baesreps vault create <name>` - Create a new vault
- `baesreps vault list` - List all vaults
- `baesreps vault unlock <name>` - Unlock a vault
- `baesreps vault lock` - Lock current vault

### Rep Commands
- `baesreps rep create <name>` - Create a new rep
- `baesreps rep list` - List all reps
- `baesreps rep execute <id>` - Execute a rep

### Note Commands
- `baesreps note create <text>` - Create a note
- `baesreps note journal` - Open today's journal
- `baesreps note memo <text>` - Quick memo

## License

MIT License - Inspired by [xaoex/.gamers](https://github.com/xaoex/.gamers)
