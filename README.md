# note
record work for working env migration easily, just personal

---
before install git , exec:
```
sudo apt update
sudo apt -f install 
```
otherwise, maybe get error:

```
...
 git : 依赖: liberror-perl 但无法安装它
...
```

exec git start a new work env:
---
```
git clone https://github.com/lslx/note.git
git remote remove origin
git remote add origin git@github.com:lslx/note.git
```
see gitcmd.txt for next step
