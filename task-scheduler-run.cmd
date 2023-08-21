
cd "C:\_SC\codes\steven-black-hosts"

echo Update...
git pull
git pull sb master
git push

echo Generating hosts files
copy /Y data\adaway.org\hosts+data\StevenBlack\hosts+data\someonewhocares.org\hosts+data\URLHaus\hosts+data\yoyo.org\hosts blacklist2
python updateHostsFile.py --extensions porn fakenews gambling --auto --nounifiedhosts -x blacklist2 --nogendata --noupdate --compress --output sc-hosts

echo Updating hosts file
copy /y sc-hosts\hosts C:\Windows\System32\drivers\etc\hosts

ipconfig /flushdns
