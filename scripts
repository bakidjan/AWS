#!/bin/bash
#install apache on AWS EC2 and run a static web page via github repository
sudo yum update -y
sudo yum -y install httpd
sudo yum -y install git
sudo systemctl enable httpd
cd /var/www/html/
sudo git clone https://github.com/diranetafen/static-website-example.git
cd static-website-example/
sudo cp -R static-website-example/* /var/www/html/
sudo systemctl start http


#push a aws repository
git init 
git staus
git add .
git commit -m "add deployment"
git remote add codecommit https://"aws clone link here"
git push codecommit master


#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker
sudo yum install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
#docker run -d -p 80:8080 pengbai/docker-supermario
docker run --name myNginx -p 80:8080 -d nginx


 
#!/bin/bash
#install odoo docker ec2
sudo yum update -y
sudo amazon-linux-extras install docker
sudo yum install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo docker run -p 8082:80 --name mywordpress -e WORDPRESS_DB_HOST=x.x.x.x -e WORDPRESS_DB_USER=diallo -e WORDPRESS_DB_PASSWORD=12345 -e WORDPRESS_DB_NAME=mylocalsql -d wordpress


#!/bin/bash
#install docker on aws ec2
sudo yum update -y
sudo amazon-linux-extras install docker
sudo yum install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
#docker run -d -p 80:8080 pengbai/docker-supermario
docker run --name myNginx -p 80:8080 -d nginx