
# Task 1
mkdir ~/myteam
chmod 400 ~/myteam   # Read-only for the owner

# Task 2
echo "Please log out and log in as another user to continue."

# Task 3
# The user will try to access the folder (myteam) after logging in.

# Task 4
# a.
chmod u=rw,g=wx,o=x ~/oldpasswd
chmod 220 ~/oldpasswd

# b.
umask 220

# c.
# The default permissions for a file: 666 (rw-rw-rw-)
# The default permissions for a directory: 777 (rwxrwxrwx)

# d.
umask 777
mkdir ~/test_directory
touch ~/test_file

# e.
echo "Access to the file:"
ls -l ~/test_file
echo "Access to the directory:"
ls -ld ~/test_directory

# Task 5
touch ~/readonly_file
chmod 444 ~/readonly_file
# Try to edit the file (will fail) and remove it
echo "Trying to edit the readonly file..."
echo "This is some content" > ~/readonly_file  # Will fail
rm ~/readonly_file

# Task 6
# The "x" permission for a file allows executing it (if it's a script or binary).
# For a directory, the "x" permission allows access to its contents (cd into it).

# New Directory for Task 7
mkdir ~/sticky_directory

# Task 7
# a.
chmod +t ~/sticky_directory

# b.
chmod g+s ~/sticky_directory

# c.
# Create multiple user accounts and allow them to create files within the directory.

# d.
# Attempt to delete or rename each other's files within the directory.

# e.
echo "Clear output demonstrating the impact of the sticky bit:"

# Display the contents of the sticky_directory
ls -l ~/sticky_directory

# Cleanup
rm -rf ~/myteam ~/test_directory ~/test_file ~/readonly_file ~/sticky_directory

