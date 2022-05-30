# cogip-deployment

+ Initial Server Setup with Ubuntu 20.04<br>
+ Install Apache Server on a VM<br>
(vm server login henri@apacherserver, pw: Eclips/e125)


https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-20-04#how-to-find-your-server-s-public-ip-address

https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-20-04

cat /etc/issue

# <b>Initial Server Setup with Ubuntu 20.04</b>

When you first create a new Ubuntu 20.04 server, you should perform some important configuration steps as part of the initial setup. These steps will increase the security and usability of your server, and will give you a solid foundation for subsequent actions.
Step 1 — Logging in as root

To log into your server, you will need to know your server’s public IP address. You will also need the password or — if you installed an SSH key for authentication — the private key for the root user’s account. If you have not already logged into your server, you may want to follow our guide on how to Connect to Droplets with SSH, which covers this process in detail.

If you are not already connected to your server, log in now as the root user using the following command (substitute the highlighted portion of the command with your server’s public IP address):

    ssh root@your_server_ip

Accept the warning about host authenticity if it appears. If you are using password authentication, provide your root password to log in. If you are using an SSH key that is passphrase protected, you may be prompted to enter the passphrase the first time you use the key each session. If this is your first time logging into the server with a password, you may also be prompted to change the root password.
About root

The root user is the administrative user in a Linux environment that has very broad privileges. Because of the heightened privileges of the root account, you are <b>discouraged from using it on a regular basis</b>. This is because the root account is able to make very destructive changes, even by accident.

The next step is setting up a new user account with reduced privileges for day-to-day use. Later, we’ll show you how to temporarily gain increased privileges for the times when you need them.
 

# How to add user on Ubuntu 20.04 Focal Fossa Linux ?

$ sudo adduser sammy
pw: CogIp123

Depending on your system and the environment you might need to add user to a specific group:
$ sudo usermod -aG <b>sudousers sammy


NOTE
To list all available system groups enter the cat /etc/group command into your terminal window.

Lastly, retrieve user and group information to confirm the successful user creation: $ id sammy


# Step 1 — Install Apache Server on the VM server<br>

# Step 2 — Installing MySQL

Now that you have a web server up and running, you need to install the database system to be able to store and manage data for your site. MySQL is a popular database management system used within PHP environments.

Again, use apt to acquire and install this software:

    sudo apt install mysql-server

When prompted, confirm installation by typing Y, and then ENTER.

When the installation is finished, it’s recommended that you run a security script that comes pre-installed with MySQL. This script will remove some insecure default settings and lock down access to your database system. Start the interactive script by running:

    sudo mysql_secure_installation

This will ask if you want to configure the VALIDATE PASSWORD PLUGIN.

Note: Enabling this feature is something of a judgment call. If enabled, passwords which don’t match the specified criteria will be rejected by MySQL with an error. It is safe to leave validation disabled, but you should always use strong, unique passwords for database credentials.

Answer Y for yes, or anything else to continue without enabling.

VALIDATE PASSWORD PLUGIN can be used to test passwords
and improve security. It checks the strength of password
and allows the users to set only those passwords which are
secure enough. Would you like to setup VALIDATE PASSWORD plugin?

Press y|Y for Yes, any other key for No:

If you answer “yes”, you’ll be asked to select a level of password validation. Keep in mind that if you enter 2 for the strongest level, you will receive errors when attempting to set any password which does not contain numbers, upper and lowercase letters, and special characters, or which is based on common dictionary words.

There are three levels of password validation policy:

LOW    Length >= 8
MEDIUM Length >= 8, numeric, mixed case, and special characters
STRONG Length >= 8, numeric, mixed case, special characters and dictionary file

Please enter 0 = LOW, 1 = MEDIUM and 2 = STRONG: 1

# Regardless of whether you chose to set up the VALIDATE PASSWORD PLUGIN, your server will next <br><br>
<b><u>ask you to select and confirm a password for the MySQL root user</u></b>.

 <center><b>MySQL root password: <u>Corei5/Eclipse</u></b>
<br>

This is not to be confused with the system root. The database root user is an administrative user with full privileges over the database system. Even though the default authentication method for the MySQL root user dispenses the use of a password, even when one is set, you should define a strong password here as an additional safety measure. We’ll talk about this in a moment.

If you enabled password validation, you’ll be shown the password strength for the root password you just entered and your server will ask if you want to continue with that password. If you are happy with your current password, enter Y for “yes” at the prompt:

# Step 3 — Installing PHP

# Step 4 — Creating a Virtual Host for your Website



# IMPORT tar file

send the file:
scp file.txt remote_username@10.10.0.2:/remote/directory




# How to disable directory listing in Apache


# copy 

 /home/henri/cogip/* cp -R  /var/www/html 

# How To Create New MySQL User and Grant Privileges
https://phoenixnap.com/kb/how-to-create-new-mysql-user-account-grant-privileges#ftoc-heading-1

CREATE USER user2@localhost IDENTIFIED BY 'cO/R1_2Ip@76513Ei5';
GRANT ALL PRIVILEGES ON *.* TO user2@localhost;
flush privileges;

# import the database structure:


# connexion php
check the mysql port 
netstat mysql -tulp

# Redirect HTTP to HTTPS



