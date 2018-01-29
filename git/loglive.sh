#!/bin/bash

# while : 
# do
#     clear
#    git --no-pager log --graph --abbrev-commit --decorate --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'
#     sleep 1
# done


# # original
# #!/bin/bash

while :
do
    clear
    git --no-pager log $1 --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)' --abbrev-commit --date=relative
    sleep 1
done
