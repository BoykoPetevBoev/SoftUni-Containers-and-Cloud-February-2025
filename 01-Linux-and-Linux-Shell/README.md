# WSL Commands

WSL Installation & Setup
```
wsl --install
```

Lists installed distros with their WSL versions.
```
wsl --list --verbose
wsl -l -v
```

Sets a default distro to open with wsl command.
```
wsl --set-default <DistroName>
```

Launches the default Linux distro.
```
wsl
```

Launches a specific Linux distribution.
```
wsl -d <DistroName>
```

# Users

Shows all users on the system.
```
cat /etc/passwd
```

Lists only usernames.
```
compgen -u
```

Shows the currently logged-in user.
```
whoami
```

Displays the user ID (UID) and group ID (GID).
```
id
```

Displays password expiry details for a user.
```
chage -l <username>
```

Renames a user.
```
sudo usermod -l <newname> <oldname>
```

Displays the last login of all users.
```
lastlog
```

Shows who is logged in and their activity.
```
w
```

### Creating Users

Creates a new user and prompts for password setup.
```
sudo adduser <username>
```

Creates a new user without setting a password.
```
sudo useradd -m <username>
```

Sets or changes the password for a user.
```
sudo passwd <username>
```

### Switching Users

Switches to another user (requires password).
```
su <username>
```

### Deleting Users

Deletes a user but keeps their home directory.
```
sudo deluser <username>
```

Deletes a user and their home directory.
```
sudo deluser --remove-home <username>
```

Force deletes a user and their files.
```
sudo userdel -r <username>
```

### User Groups

Lists all groups on the system.
```
getent group
```

Lists the groups the current user belongs to.
```
groups
```

Creates a new group.
```
sudo groupadd <groupname>
```

Adds a user to a group.
```
sudo usermod -aG <groupname> <username>
```

Removes a user from a group.
```
sudo deluser <username> <groupname>
```

# Files

### Listing Files and Directories

Lists files in the current directory.
```
ls
```

Shows detailed file information (permissions, size, owner, etc.).
```
ls -l
```

Lists all files, including hidden ones (. and ..).
```
ls -al
```

Displays file sizes in human-readable format (KB, MB, GB).
```
ls -lh
```

### Navigating Directories

Prints the current directory path.
```
pwd
```

Changes to a specific directory.
```
cd <directory>
```

Moves up one directory level.
```
cd ..
```

Goes to the root directory.
```
cd /
```

### Creating Files and Directories

Creates an empty file or updates the timestamp of an existing file.
```
touch file.txt
```

Creates a new directory.
```
mkdir mydir
```

Creates nested directories.
```
mkdir -p dir1/dir2
```

### Copying Files and Directoriesvv

Copies a file to another location.
```
cp file1.txt file2.txt
```

Copies a directory and its contents.
```
cp -r dir1 dir2
```

### Moving and Renaming Files

Moves a file to another directory.
```
mv file.txt /new/location/
```

Renames a file.
```
mv file1.txt file2.txt
```
### Deleting Files and Directories

Deletes a file.
```
rm file.txt
```

Deletes a directory and its contents.
```
rm -r mydir
```

### Writing Inside a File

Creates a file (or overwrites if it exists) with "Hello, World!".
```
echo "Hello, World!" > file.txt
```

Appends text to the file without overwriting existing content.
```
echo "New line of text" >> file.txt
```

Writes text to a file (overwrites existing content). Press CTRL+D to save and exit.
```
cat > file.txt
```

Appends text to an existing file.
```
cat >> file.txt
```

### Viewing File Contents

Displays the entire file.
```
cat file.txt
```

Shows the first 10 lines of a file.
```
head -n 10 file.txt
```

Shows the last 10 lines of a file.
```
tail -n 10 file.txt
```

### File Permissions

Shows file permissions.
```
ls -l file.txt
```

Changes file permissions (rwxr-xr-x).
```
chmod 755 file.txt
```

Changes file ownership.
```
chown user:user file.txt
```

Makes a script executable.
```
chmod +x script.sh
```
