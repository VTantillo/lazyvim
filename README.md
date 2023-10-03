# My LazyVim

This is my tmux config so that I can get it on my work computer.

```bash
set -g default-terminal "screen-256color"

set -g mouse on

unbind C-b
set -g prefix C-a
bind-key C-a send-prefix

bind -r j resize-pane -D 5
bind -r k resize-pane -U 5
bind -r l resize-pane -R 5
bind -r h resize-pane -L 5

set -g base-index 1
set -g pane-base-index 1
set-window-option -g pane-base-index 1
set-option -g renumber-windows on



# Shift arrow to switch windows
bind -n S-Left  previous-window
bind -n S-Right next-window

# Shift Alt vim keys to switch windows
bind -n M-H previous-window
bind -n M-L next-window

bind -r m resize-pane -Z

# unbind r
# bind r source-file ~/.config/tmux/.tmux.conf

set-window-option -g mode-keys vi

bind-key -T copy-mode-vi 'v' send -X begin-selection # start selecting text with "v"
bind-key -T copy-mode-vi 'y' send -X copy-selection # copy text with "y"

unbind -T copy-mode-vi MouseDragEnd1Pane # don't exit copy mode when draggin w/ mouse

# tpm plugin
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'jimeh/tmux-themepack'

# plugin config
set -g @themepack 'powerline/default/cyan'

# Initialize TMUX plugin manager
# (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'

# set vi-mode
set-window-option -g mode-keys vi
# keybindings
bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

unbind %
bind - split-window -v -c "#{pane_current_path}"

unbind '"'
bind | split-window -h -c "#{pane_current_path}"
```
