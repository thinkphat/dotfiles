if status is-interactive
  if test -z "$TMUX"; and test "$TERM" = "xterm-kitty"
    exec tmux new-session -A -s main
  end
end

# pnpm
set -gx PNPM_HOME "/home/phat/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

export EDITOR=nvim

fish_vi_key_bindings
export PATH="$PATH:/home/phat/.dotnet/tools"


set -Ux GTK_IM_MODULE fcitx
set -Ux QT_IM_MODULE fcitx
set -Ux XMODIFIERS "@im=fcitx"

