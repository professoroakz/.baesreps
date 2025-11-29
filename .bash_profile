# .baesreps Bash Profile
# Reps derived from Bae's Secrets - Shell Configuration

# Add baesreps bin to PATH
export PATH="$HOME/.baesreps/bin:$HOME/bin:$PATH"

# Load .baesreps shell dotfiles
for file in ~/.{exports,bash_prompt,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Initialize .baesreps directories if they don't exist
if [ -n "$BAESREPS_HOME" ]; then
	mkdir -p "$BAESREPS_PROJECTS_DIR" 2>/dev/null
	mkdir -p "$BAESREPS_CARDS_DIR" 2>/dev/null
	mkdir -p "$BAESREPS_SECRETS_DIR" 2>/dev/null
	mkdir -p "$BAESREPS_VAULTS_DIR" 2>/dev/null
	mkdir -p "$BAESREPS_REPS_DIR" 2>/dev/null
	mkdir -p "$BAESREPS_NOTES_DIR" 2>/dev/null
fi

# Case-insensitive globbing
shopt -s nocaseglob 2>/dev/null

# Append to Bash history
shopt -s histappend 2>/dev/null

# Autocorrect typos in path names
shopt -s cdspell 2>/dev/null

# Enable autocd and globstar if available
for option in autocd globstar; do
	shopt -s "$option" 2>/dev/null
done

# Tab completion for git
if type _git &>/dev/null; then
	complete -o default -o nospace -F _git g
fi

# Welcome message (only for interactive shells)
if [[ $- == *i* ]]; then
	echo "💜 .baesreps loaded - Reps derived from Bae's Secrets"
	echo "   Type 'baesreps status' to see your environment status"
	echo "   Type 'baesreps init' to initialize directories"
fi
