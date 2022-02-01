groupadd -g 30000 students
mkdir /home/students
for i in `seq -w 1 8`;
do
     useradd -m -d /home/students/std0$i -g 30000 -u 3000$i std0$i
     echo "std0$i:1q2w3e4r" | chpasswd
     chage -d 0 std0$i
done

docker-compose -f apps/mongo/docker-compose.yml down
cp apps/mongo/docker-compose.yml
mv exceed_server_script/docker-compose.yml apps/mongo/docker-compose.yml
docker-compose -f apps/mongo/docker-compose.yml up
