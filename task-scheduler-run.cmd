
cd "C:\_SC\codes\steven-black-hosts"

call .\_venv\Scripts\activate

echo Update...
git pull
git pull sb master
git push

echo Generating hosts files
copy /Y data\adaway.org\hosts+data\someonewhocares.org\hosts+data\URLHaus\hosts+data\yoyo.org\hosts+data\UncheckyAds\hosts blacklist2
python updateHostsFile.py --extensions fakenews gambling --auto --nounifiedhosts -x blacklist2 --nogendata --noupdate --compress --output sc-hosts

echo Updating hosts file C:\Windows\System32\drivers\etc\hosts > _log-copy.log
copy /y sc-hosts\hosts C:\Windows\System32\drivers\etc\hosts >> _log-copy.log

ipconfig /flushdns
