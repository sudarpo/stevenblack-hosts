# Usage

## Windows

```
python updateHostsFile.py --auto --extensions porn fakenews gambling --nogendata --noupdate --output sc-hosts
python updateHostsFile.py --auto --extensions porn fakenews gambling --nogendata --noupdate --compress --output sc-hosts
python updateHostsFile.py --auto --extensions porn fakenews gambling social --nogendata --noupdate --compress --output sc-hosts

cd "C:\_SC\data\steven-black-hosts"
copy /y sc-hosts\hosts C:\Windows\System32\drivers\etc\hosts
ipconfig /flushdns

code C:\Windows\System32\drivers\etc
start C:\Windows\System32\drivers\etc

# Commonly used tasks
cd "C:\_SC\data\steven-black-hosts"
git pull
git pull sb master
git push
python updateHostsFile.py --auto --extensions porn fakenews gambling --nogendata --noupdate --compress --output sc-hosts
copy /y sc-hosts\hosts C:\Windows\System32\drivers\etc\hosts
ipconfig /flushdns

# PS
copy .\sc-hosts\hosts C:\Windows\System32\drivers\etc\hosts
```

##############################################

## Mac OS

```
python3 updateHostsFile.py --auto --extensions porn fakenews gambling --nogendata --noupdate --output sc-hosts
python3 updateHostsFile.py --auto --extensions porn fakenews gambling --nogendata --noupdate --minimise --output sc-hosts
python3 updateHostsFile.py --auto --extensions porn fakenews gambling social --nogendata --noupdate --minimise --output sc-hosts

sudo cp sc-hosts/hosts /private/etc/hosts

sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder

---

git pull
git pull sb master
git push
python3 updateHostsFile.py --auto --extensions porn fakenews gambling social --nogendata --noupdate --minimise --output sc-hosts
sudo cp sc-hosts/hosts /private/etc/hosts
sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder

```
