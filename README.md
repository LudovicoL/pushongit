# pushongit
A script to push on Git quickly.

If you don't need to specify what your commit changes, you can use this script which automatically creates a commit with the following format:

Commit # (AAAA-MM-DD_HH:mm:ss)

\# is an autoincrementing number. The code will then be pushed.

## Installation
Download and copy the file in the  ```~/bin``` folder and add that in ```.bashrc``` file:
```
echo "export PATH=$PATH:~/bin" >> '~/.bashrc'
source ~/.bashrc
```

## How to use
Go with the terminal in your repository folder and run:
```
pushongit
```


