# Wargame

## Level 0

```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220
```

pwd: bandit0

## Level 0-1

```bash
cat readme

```

- The shell will return the password for next level

## Level 1-2

```bash
	cat ./-
```

- if we writ e cat - then it will consider hyphen as a flag so we enter the file by it’s address

## Level 2-3

```bash
cat "spaces in this filename"
```

## Level 3-4

```bash
cd inhere
ls -a
cat ./.hidden

```

## Level 4-5

```bash
file ./*
output:./-file00: data
									./-file01: data
									./-file02: data
									./-file03: data
									./-file04: data
									./-file05: data
									./-file06: data
									./-file07: ASCII text
									./-file08: data
									./-file09: Non-ISO extended-ASCII text, with no line terminators

cat ./-file07

```

the file07 is the only file with ASCII character

## Level 5-6

```bash
find ./* -readable -size 1033c ! -executable
output:./maybehere07/.file2
cat ./maybehere07/.file2
```

## Level 6-7

```bash
cd --  /*it will direct you to the server's base directory*/
find ./* -user bandit7 -group bandit6 -size 33c

output:
				find: ‘./boot/efi’: Permission denied
				find: ‘./dev/mqueue’: Permission denied
				find: ‘./dev/shm’: Permission denied
				find: ‘./drifter/drifter14_src/axTLS’: Permission denied
				find: ‘./etc/polkit-1/localauthority’: Permission denied
				find: ‘./etc/ssl/private’: Permission denied
				find: ‘./etc/multipath’: Permission denied
				find: ‘./etc/sudoers.d’: Permission denied
				find: ‘./home/bandit29-git’: Permission denied
				find: ‘./home/drifter6/data’: Permission denied
				find: ‘./home/bandit28-git’: Permission denied
				find: ‘./home/drifter8/chroot’: Permission denied
				find: ‘./home/ubuntu’: Permission denied
				find: ‘./home/bandit5/inhere’: Permission denied
				find: ‘./home/bandit27-git’: Permission denied
				find: ‘./home/bandit30-git’: Permission denied
				find: ‘./home/bandit31-git’: Permission denied
				find: ‘./lost+found’: Permission denied
				find: ‘./proc/tty/driver’: Permission denied
				find: ‘./proc/541042/task/541042/fd/6’: No such file or directory
				find: ‘./proc/541042/task/541042/fdinfo/6’: No such file or directory
				find: ‘./proc/541042/fd/5’: No such file or directory
				find: ‘./proc/541042/fdinfo/5’: No such file or directory
				find: ‘./root’: Permission denied
				find: ‘./run/chrony’: Permission denied
				find: ‘./run/user/11017’: Permission denied
				find: ‘./run/user/11015’: Permission denied
				find: ‘./run/user/11002’: Permission denied
				find: ‘./run/user/11028’: Permission denied
				find: ‘./run/user/11008’: Permission denied
				find: ‘./run/user/11022’: Permission denied
				find: ‘./run/user/11003’: Permission denied
				find: ‘./run/user/11018’: Permission denied
				find: ‘./run/user/11024’: Permission denied
				find: ‘./run/user/11007’: Permission denied
				find: ‘./run/user/11016’: Permission denied
				find: ‘./run/user/11023’: Permission denied
				find: ‘./run/user/11001’: Permission denied
				find: ‘./run/user/11011’: Permission denied
				find: ‘./run/user/11004’: Permission denied
				find: ‘./run/user/11006/systemd/inaccessible/dir’: Permission denied
				find: ‘./run/user/11000’: Permission denied
				find: ‘./run/user/11013’: Permission denied
				find: ‘./run/user/11020’: Permission denied
				find: ‘./run/user/11012’: Permission denied
				find: ‘./run/user/11005’: Permission denied
				find: ‘./run/sudo’: Permission denied
				find: ‘./run/screen/S-bandit20’: Permission denied
				find: ‘./run/multipath’: Permission denied
				find: ‘./run/cryptsetup’: Permission denied
				find: ‘./run/lvm’: Permission denied
				find: ‘./run/credentials/systemd-sysusers.service’: Permission denied
				find: ‘./run/systemd/propagate’: Permission denied
				find: ‘./run/systemd/unit-root’: Permission denied
				find: ‘./run/systemd/inaccessible/dir’: Permission denied
				find: ‘./run/lock/lvm’: Permission denied
				find: ‘./snap/core18/2721/etc/ssl/private’: Permission denied
				find: ‘./snap/core18/2721/root’: Permission denied
				find: ‘./snap/core18/2721/var/cache/ldconfig’: Permission denied
				find: ‘./snap/core18/2721/var/lib/private’: Permission denied
				find: ‘./snap/core20/1852/etc/ssl/private’: Permission denied
				find: ‘./snap/core20/1852/root’: Permission denied
				find: ‘./snap/core20/1852/var/cache/ldconfig’: Permission denied
				find: ‘./snap/core20/1852/var/cache/private’: Permission denied
				find: ‘./snap/core20/1852/var/lib/private’: Permission denied
				find: ‘./snap/core20/1852/var/lib/snapd/void’: Permission denied
				find: ‘./sys/kernel/tracing’: Permission denied
				find: ‘./sys/kernel/debug’: Permission denied
				find: ‘./sys/fs/pstore’: Permission denied
				find: ‘./sys/fs/bpf’: Permission denied
				find: ‘./tmp’: Permission denied
				find: ‘./var/log’: Permission denied
				find: ‘./var/crash’: Permission denied
				find: ‘./var/spool/rsyslog’: Permission denied
				find: ‘./var/spool/bandit24’: Permission denied
				find: ‘./var/spool/cron/crontabs’: Permission denied
				find: ‘./var/tmp’: Permission denied
				find: ‘./var/lib/polkit-1’: Permission denied
				**./var/lib/dpkg/info/bandit7.password**
				find: ‘./var/lib/chrony’: Permission denied
				find: ‘./var/lib/apt/lists/partial’: Permission denied
				find: ‘./var/lib/amazon’: Permission denied
				find: ‘./var/lib/update-notifier/package-data-downloads/partial’: Permission denied
				find: ‘./var/lib/snapd/void’: Permission denied
				find: ‘./var/lib/snapd/cookie’: Permission denied
				find: ‘./var/lib/ubuntu-advantage/apt-esm/var/lib/apt/lists/partial’: Permission denied
				find: ‘./var/lib/private’: Permission denied
				find: ‘./var/snap/lxd/common/lxd’: Permission denied
				find: ‘./var/cache/ldconfig’: Permission denied
				find: ‘./var/cache/apt/archives/partial’: Permission denied
				find: ‘./var/cache/pollinate’: Permission denied
				find: ‘./var/cache/private’: Permission denied
				find: ‘./var/cache/apparmor/a4dd844e.0’: Permission denied
				find: ‘./var/cache/apparmor/8eeb6286.0’: Permission denied
				

cat **./var/lib/dpkg/info/bandit7.password**

```

## Level 7-8

```bash
grep -h "millionth" data.txt  ##-h flag does not display the file name it is used when there is only oone file to search in
```

## Level 8-9

```bash
sort data.txt| uniq -c | grep -w "1"
/* sor cmd sorts the data text in the file then uniq combines the consecutively same files and display their number and by grep you find the line which has a 
only 1 as a number
```

## Level 9-10

strings command just prints the human readable characters in a text file

```bash
strings data.txt
```

## Level 10-11

```bash
cat data.txt | base64 -d
/* the 0d flag decodes the string from base64 to ASCII text*/
```

## Level 11-12

```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' 
```

the tr command link the alphabets from A-Z to N-Z A-M and similarly for lower case

## Level 12-13

```bash
mkdir /tmp/mudit004
cp data.txt /tmp/mudit004/data.txt
cd /tmp/mudit004
xxd -d data.txt > myfile
##check file type using file command rename the file into the right extension
## and continue the process till you get the tar file
rename command: mv [present name] [new name]
extract cam:
	.gz type: gzip -d filename
	.bzip2: bzip2 -d filename
	.tar: tar xvf filename

```

## Level 13-14

```bash
ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220

##logged into bandit 14 level
```

## Level 14-15

```bash
cat etc/bandit_pass/bandit14
##copy the pwd displayed
echo [pwd-retrieved] | nc localhost 30000
##pwd for Level 15 will be retrieved
```

## Level 15-16

```bash
openssl s_client -connect localhost:30001

## it will open openssl server

submit pwd of this level and press enter
##pwd of next level will be retrieved = level16PWD
```

## Level 16-17

```bash
nmap -sV -p 31000-32000 localhost
outout:
Starting Nmap 7.80 ( https://nmap.org ) at 2023-05-20 09:19 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.000095s latency).
Not shown: 996 closed ports
PORT      STATE SERVICE     VERSION
31046/tcp open  echo
31518/tcp open  ssl/echo
31691/tcp open  echo
31790/tcp open  ssl/unknown
31960/tcp open  echo
## on analysing only port 31790 and 31518 are open for ssl. But 31518 
## only accept echo command so most probable port is 31790

#open openssl s_client
openssl s_client -connect localhost:31790

##submit pwd of current level 

##RSA private key for next level will be retrieved
# copy it

mkdir /tmp/mudit004
cd /tmp/mudit004
touch sshkey17.private
nano sshkey17.private
## in nano terminal paste the rsa key copied and save it
chmod 0400 sshkey17.private
ssh -i sshkey17.private bandit17@bandit.labs.overthewire.org -p 2220
#you will be directed to bandit 17 level
```

## Level 17-18

```bash
diff password.new password.old

output:
< hga5tuuCLF6fFzUpnagiMN8ssu9LFrdg
---
> glZreTEH1V3cGKL6g4conYqZqaEj0mte

## this means remove <... from .new file and replace it with >... text to make it same as 
## .old file ==> hga5tuuCLF6fFzUpnagiMN8ssu9LFrdg is the pwd of next level

```

## Level 18-19

```bash
ssh bandit18@bandit.labs.overthewire.org -p 2220 "bash --noprofile --norc"
## this will ensure preloaded files dont load

run :
cat readme
# pwd for next level will be returned
```

## Level 19-20

```bash
./bandit20-do
# Run a command as another user.
#  Example: ./bandit20-do id
./bandit20-do /etc/bandit_pass/bandit20
#pwd for next level will be displayed

```