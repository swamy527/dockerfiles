from almalinux:8
label course=java \
      triner=siva
run yum install nginx -y
run rm -rf /usr/share/nginx/html
workdir /usr/share/nginx/html
copy healet-html/. . #here source dot means copy everything including files and directories recusively and dest dot means copy to working directory which is set before this instruction using "workdir"
run chmod -R 777 /usr/share/nginx/html
cmd ["nginx","-g","daemon off;"]
