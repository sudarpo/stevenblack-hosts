
cd "C:\_SC\data\steven-black-hosts"

echo Update...
git pull
git pull sb master
git push

echo Generating hosts files
python updateHostsFile.py --auto --extensions porn fakenews gambling --nogendata --noupdate --compress --output sc-hosts

echo Updating hosts file
copy /y sc-hosts\hosts C:\Windows\System32\drivers\etc\hosts

ipconfig /flushdns
