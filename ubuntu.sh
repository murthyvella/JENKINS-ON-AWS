#system update for dependency 
sudo apt update
sudo apt install fontconfig openjdk-21-jre -y
java -versioN
#installing jenkins on linux(ubuntu)
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y
#checking jenkins status 
sudo systemctl status jenkins
