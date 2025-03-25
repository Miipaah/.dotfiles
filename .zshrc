# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- Remove any oh-my-posh files (if they exist) ---
rm -rf "$HOME/.poshthemes"



# --- Oh My Zsh Setup ---

# Set the path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set the theme to Powerlevel10k.
# Make sure powerlevel10k is installed; if installed via Oh My Zsh, it should be in the themes directory.
export ZSH_THEME="powerlevel10k/powerlevel10k"

# List of plugins to load.
# autosuggestions, syntax-highlighting, and completions are included for a rich experience.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

# Load Oh My Zsh.
source "$ZSH/oh-my-zsh.sh"

# --- Additional PATH and Environment Setup ---

# Set up PATH for local binaries and Conda.
export PATH="$HOME/.local/bin:$HOME/miniconda3/bin:/opt/miniconda/bin:$PATH"

# Initialize Conda if available.
if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
    source "$HOME/miniconda3/etc/profile.d/conda.sh"
fi

# --- Useful Aliases ---
# Quickly reload your Zsh configuration.
alias reload='source ~/.zshrc'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
