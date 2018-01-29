#!/bin/bash

# push to gitlab ssh
git push origin master

if [ $? -eq 0 ]
then
 echo "Gitlab uptated via ssh"
else
 echo "Push to GitLab failed, womp womp."
 exit 1
fi

# push to bitbucket https
git push bitbucket master

if [ $? -eq 0 ]
then
 echo "Bitbucket updated via https"
else
 echo "Push to bitbucket failed, womp womp."
 exit 1
fi

exit 0
