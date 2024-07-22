# Pass Backup

I recommend to use passphrase with the GPG keys

Backup scripts for [pass, the standard unix password manager](https://www.passwordstore.org) tool to manage your passwords

Fast tool how to back up your passwords with simple Bash scripts

[pass man](https://git.zx2c4.com/password-store/about/)

## Usage

You can use this scripts from this repository otherwise you can move them to the `/usr/local/bin` with the command:

```bash
cp -R *.sh /usr/local/bin/
```

### Pass Git Init

Firstly you need to create a new git repository where you want to back up (gitlab,github), create a new private git repository, without README.md afterwards copy the proper URL of the git repository then run the bash script: 


```bash
./pass-init.sh
```

## Export and back up GPG key

Secondly for exporting and backuping your private GPG key throught git repository use bash script below, then you need to rerun script `pass-init.sh` to commit to your git repository yours private GPG key that you have just exported

```bash
./gpg-export.sh #Exports your private GPG key to the file ~/.password-store/my-private-key.asc
./pass-init.sh #Commits the file ~/.password-store/my-private-key.asc to the yours git repository
```

### Restore GPG keys and passwords

For the restoring use the bash script `pass-restore.sh`, this will restore your git repository that contains back up for the pass, firstly you clone the repository and afterwards you restore your GPG keys, that is used for restoring your passwords

```bash
./pass-restore.sh
```

### Remove git remote

For removing git remove remote you need to use command bellow, then if you want to backup to second git repository you can reuse the script `pass-init.sh`

```bash
pass git remote remove origin
```

## FAQ? 

### What if passwords changes?

If passwords changes and you want to commit the changes to the proper git repo use command below:

```bash
pass git push
```
