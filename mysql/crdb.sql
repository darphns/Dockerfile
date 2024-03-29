create user 'school'@'%' identified by 'school';
grant all on *.* to 'school'@'%';
create database school;
create table school.school_info(school_id varchar(10),school_name varchar(100),school_address varchar(100));
create table school.user_info(user_email varchar(20),user_password varchar(100));
insert into school.school_info values("S01","Little Buddha","Kathmandu");
----
sudo docker build -t susimysql .
docker run -dit --name mysql01 susimysql
sudo docker image tag susimysql susigugh/susimysql:v1
sudo docker login -u=${docker01} -p=${docker01p} && sudo docker push susigugh/susimysql:v1
