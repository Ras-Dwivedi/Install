lsof /var/lib/dpkg/lock
lsof /var/lib/apt/lists/lock
lsof /var/cache/apt/archives/lock
lsof /var/lib/dpkg/lock-frontend

echo "killing all the files that holdes the lock"
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuffi
    echo "you asked for that"
    sudo rm /var/lib/apt/lists/lock
    sudo rm /var/cache/apt/archives/lock
    sudo rm /var/lib/dpkg/lock
    sudo rm /var/lib/dpkg/lock-frontend
    sudo dpkg --configure -a
fi

