if status is-interactive
# Commands to run in interactive sessions can go here
end
# Automatically start MangoWM on tty1 login
if status is-login
    if test -z "$DISPLAY" -a "$(tty)" = "/dev/tty1"
        exec mango
    end
end

set -g fish_greeting
starship init fish | source
