
cd "C:\_SC\codes\steven-black-hosts"

echo Update...
git pull
git pull sb master
git push

echo Generating hosts files
python updateHostsFile.py --extensions fakenews gambling --auto --nogendata --noupdate --compress --output sc-hosts
REM   porn  # porn generates 200K entries

echo Updating hosts file
copy /y sc-hosts\hosts C:\Windows\System32\drivers\etc\hosts

ipconfig /flushdns
