set -x
alias name1='echo "John Doe"' >> $HOME/.bashrc
name2='echo "John Doe"' >> $HOME/.bashrc
source $HOME/.bashrc
output=$($name1)
output=$($name2)
output=$(eval $name2)
if [ "$output" != "John Doe" ]; then
    echo "Sourcing is not working for some reason."
    exit 1
fi 
