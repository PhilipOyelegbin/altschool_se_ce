# ✨ Exercise 6

Create an Ansible Playbook to setup a server with Apache. The server should be set to the Africa/Lagos Timezone

Host an index.php file with the following content, as the main file on the server:

```
<?php
date("F d, Y h:i:s A e", time());
?>
```

## 🖊 Instruction

- Submit the Ansible playbook, the output of systemctl status apache2 after deploying the playbook and a screenshot of the rendered page.

## 🚀 Result

1. Created a bash script to automate the memory usage log and report [memory_log script](./memory_log.sh).

2. Setup cronjob to schedule the task [cronjob content](./crontab).

3. Installed and cofigure postfix as send only smtp server using the steps below;

   - Update the package database `sudo apt-get update`
   - Installing mailutils will install Postfix as well as a few other programs needed for Postfix to function. `sudo apt install mailutils -y`
   - Select "internet-site" in the configuratin window and click "Ok" as seen below
     ![image1](./internet-site.png)
   - Update the system mail name to "localhost.com" or leave the default value.
     ![image2](./domain.png)
   - Edit the file "main.cf" to configure postfix `sudo nano /etc/postfix/main.cf`
   - Find and update the following details as seen below

   ```
   inet_interfaces = loopback-only

   # add your hostname to the list of the destination below, mine is "ubuntu2010.localdomain"
   mydestination = $myhostname, ubuntu2010.localdomain, localhost.$mydomain, $mydomain
   ```

   - Save and restart postfix `sudo systemctl restart postfix`
   - Run a test using your email, I recommend using a cpanel/professional webmail, gmail might not work

   ```
   echo "The mail is working" | mail -s "PostFix Mail Test" your_email_address
   ```

4. Set the server timezone to my local timezone using the command `sudo timedatectl set-timezone Africa/Lagos`

5. Below is the image of the mail received
   ![mail sample](./domain.png)

## 📑 Resources Used

- [DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-postfix-as-a-send-only-smtp-server-on-ubuntu-16-04)
