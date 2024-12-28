from almalinux:8
label course=java \
      triner=siva
run yum install nginx -y
run rm -rf /usr/share/nginx/html
workdir /usr/share/nginx/html
copy zoopark . 
cmd ["nginx","-g","daemon off;"]
