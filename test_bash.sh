current_shell=$(echo $SHELL)
if [ "$current_shell" != "/bin/bash" ]; then
    echo "The current build is not working with the Bash Shell."
    exit 1
fi 
