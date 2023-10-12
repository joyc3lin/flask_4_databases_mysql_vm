# flask_4_databases_mysql_vm
HHA 504 assignment 4b

Manually setting up and running a database on a cloud virtual machine. You'll get hands-on experience setting up a MySQL instance on a Virtual machine

**Guide:**

+ Create a VM on Azure 
+ Ensure that port 3306 is open for the VM
    + Go to networking -> add inbound port rule -> Service: MySQL -> Add
+ In Google Shell's terminal, enter <code>ssh</code>
+ Then enter <code>ssh [username of azurevm]@[vm's pubic IP address]</code>
+ For first time conenction, the terminal will return " Are you sure you want to continue connecting (yes/no/[fingerprint])?" 
    + enter <code>yes</code> after the prompt 
+ The terminal will then ask for a password, enter the password created for the VM
+ If successful, the terminal will link to the VM server (Ubuntu 20.04.6 OS)
+ Enter <code>sudo apt-get update</code> to update the Ubuntu server 
+ Once updated, enter <code>sudo apt install mysql-server mysql-client</code> to install MYSQL
    + The terminal will then return "Do you want to continue? [Y/n]"
    + Enter <code>Y</code> to continue installation 
+ After installation is complete, enter <code>sudo mysql</code> to log into MySQL

## To connect to mysql workbench: 

+ Create a new user and password with <code> CREATE USER '[enter-username]'@'%'IDENTIFIED BY '[enter-password]'</code>
+ Confirm that user was successfully created with <code>select user from mysql.user</code>
    + This shows a list of all avaliable users in mysql
+ To grant access to everything to the new user, enter <code>grant all privileges on *.* to '[username]'@'%' with grant option</code>
    + confirm grant with <code>show grants for [username]</code>
+ Enter <code>/quit</code> or press CTRL+C to exit out of mysql
+ Enter <code>sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf</code> to enter the configuration file 
    + Scroll down to <code>Bind:</code> and change the IP to <code>0.0.0.0</code> to allow all users to connect 
+ To allow changes to take place, restart mysql with: <code>/etc/init.d/mysql restart</code>
+ Enter password for VM in order to complete authentication 
