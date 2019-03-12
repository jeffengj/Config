#set -g default-terminal "xterm-256color"

# 解除默认前缀
unbind C-b
# 设置自定义前缀
set -g prefix `
# 采用vim的操作方式
setw -g mode-keys vi
# 窗口序号从1开始计数
set -g base-index 1
# 开启鼠标模式
set-option -g mouse on

set-option -g allow-rename off

# 通过前缀+KJHL快速切换pane
#up
bind-key k select-pane -U
#down
bind-key j select-pane -D
#left
bind-key h select-pane -L
#right
bind-key l select-pane -R

# key bindings for horizontal and vertical panes
unbind %
bind \ split-window -h      # 使用|竖屏，方便分屏
unbind '"'
bind - split-window -v      # 使用-横屏，方便分屏

# panes 分割线颜色
set -g pane-border-bg colour0
set -g pane-border-fg colour7
 
#set -g pane-active-border-bg colour123
set -g pane-active-border-fg colour50

set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-resurrect'

run -b '~/.tmux/plugins/tpm/tpm'

bind R source-file ~/.tmux.conf ; display-message "Config reloaded.."

