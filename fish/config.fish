if status is-interactive
    # Commands to run in interactive sessions can go here
end

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
        echo sudo $history[1]
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

set PATH /opt/homebrew/opt/node@18/bin $PATH
