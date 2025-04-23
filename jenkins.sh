echo "Cloning Your Code !"

docker --version

cd /var/jenkins_home/workspace/DemoCICD

echo "Building Your Docker Image"

docker build -t node-app:v1 .

echo "Building Your Docker Image Successfully"

echo "==================List of Docker Images======================"

docker images

echo "==================Running Your Node App on Port 3000======================"

docker run -d -p 3001:3000 node-app:v1
