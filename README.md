For official Documention to install jenkins on different distribution you can follow this URL:https://www.jenkins.io/doc/book/installing/linux/

Jenkins Installation on Ubuntu (with Java 21)

This guide explains how to install Jenkins on an Ubuntu Linux system using OpenJDK 21.

Prerequisites

Ubuntu 20.04 / 22.04 / 24.04

User with sudo privileges

Internet access
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Step 1: Update the System**
sudo apt update

**Step 2: Install Java (OpenJDK 21)**

Jenkins requires Java to run. Install OpenJDK 21 and required font packages:

sudo apt install fontconfig openjdk-21-jre -y


Verify Java installation:

java -version

**Step 3: Add Jenkins Repository Key
**
Download and add the official Jenkins GPG key:

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

**Step 4: Add Jenkins Repository**

Add the Jenkins stable repository to your system:

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/" | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

**Step 5: Install Jenkins**

Update package lists and install Jenkins:

sudo apt update
sudo apt install jenkins -y

**Step 6: Check Jenkins Service Status**

Verify that Jenkins is running:

sudo systemctl status jenkins


If Jenkins is running correctly, you should see active (running) in the output.

Accessing Jenkins

**By default, Jenkins runs on port 8080.**

Open your browser and navigate to:

http://<your-server-ip>:8080


**To get the initial admin password:**

sudo cat /var/lib/jenkins/secrets/initialAdminPassword


