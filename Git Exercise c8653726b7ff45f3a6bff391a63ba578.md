# Git Exercise

## Connecting to Server

```bash
git clone https://gitexercises.fracz.com/git/exercises.git
cd exercises
git config user.name "mudit04"
git config user.email "muditmangal05@gmail.com"
./configure.sh
git start
```

## master

```bash
git start master
git verify
#output
git start next
```

## commit-one-file

```bash
git add A.txt #adds file from working area to staging area
git commit -m "commit-one-file" #staging area file added to commit
```

## commit-one-file-staged

```bash
git reset B.txt #brings B.txt back from staging area
git commit -m "commit-one-file-staged"
```

## ignore-them

```bash
touch .gitignore
nano .gitignore

---`nano terminal:#add files to be ignored
*.exe
*.o
*.jar
libraries/
`---

git add .gitignore
git commit -m "ignore-them"

```

## chase-branch

```bash
git merge escaped # fast forward merge the chase-branch(read about it on atlanssia webpage)
git commit -m "chase-branch"
```

## merge-conflict

```bash
git merge another-piece-of-work

output:
Auto-merging equation.txt
CONFLICT (content): Merge conflict in equation.txt
Automatic merge failed; fix conflicts and then commit the result.

nano equations.txt
#manually solve the conflict
git add equations.txt
git commit -m "merge-conflict"
git verify
```

## save-your-work

```bash
git stash
#fix bug in bug.txt
hit add bug.txt
git commit -m "bugfix"
git stash pop
nano bug.txt #add Finally, finished it! in last
git add bug.txt 
git add program.txt
git commit -m "save-your-work"
git verify
```

## change-branch-history

```bash
git rebase hot-bugfix
git verify
```

## remove-ignored

```bash
git rm ignored.txt
git commit -m "remove-ignored"
```

## case-sensitive-filename

```bash
git mv File.txt file.txt
git commit -m "case-sensitive-filename"
```

## fix-typo

```bash
nano file.txt
#edit the text in the nano editor
git commit --amend
#change the commit mssg in the editor which opens

```

## forge-date

```bash
git commit --amend --date="1987"
```

## fix old typo

```bash
git rebase -i
#make the 2nd last commit as editable
nano file.txt # edit according to snr k kaatb hogya tha
git add file.txt
git rebase --continue # very sweet
```