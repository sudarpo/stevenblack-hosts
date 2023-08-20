
cd "C:\_SC\codes\steven-black-hosts"

echo Update...
git pull
git pull sb master
git push

echo Generating hosts files
python updateHostsFile.py --extensions porn fakenews gambling --auto --nounifiedhosts --nogendata --noupdate --compress --output sc-hosts

echo Updating hosts file
copy /y sc-hosts\hosts C:\Windows\System32\drivers\etc\hosts

ipconfig /flushdns
