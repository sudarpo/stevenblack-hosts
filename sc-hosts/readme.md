# Usage

## Windows

```
python updateHostsFile.py --auto --extensions porn fakenews gambling --nogendata --noupdate --output sc-hosts
python updateHostsFile.py --auto --extensions porn fakenews gambling --nogendata --noupdate --compress --output sc-hosts
python updateHostsFile.py --auto --extensions porn fakenews gambling social --nogendata --noupdate --compress --output sc-hosts

cd "C:\_SC\repo\hosts"
copy /y sc-hosts\hosts C:\Windows\System32\drivers\etc\hosts
ipconfig /flushdns

cd "C:\_SC\data\steven-black-hosts"
copy /y sc-hosts\hosts C:\Windows\System32\drivers\etc\hosts
ipconfig /flushdns

code C:\Windows\System32\drivers\etc
start C:\Windows\System32\drivers\etc

# PS
copy .\sc-hosts\hosts C:\Windows\System32\drivers\etc\hosts
```

##############################################

## Mac OS

```
python3 updateHostsFile.py --auto --extensions porn fakenews gambling --nogendata --noupdate --output sc-hosts
python3 updateHostsFile.py --auto --extensions porn fakenews gambling --nogendata --noupdate --compress --output sc-hosts
python3 updateHostsFile.py --auto --extensions porn fakenews gambling social --nogendata --noupdate --compress --output sc-hosts

sudo cp sc-hosts/hosts /private/etc/hosts

sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder
```
