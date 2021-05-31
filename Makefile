mysql:
	-docker stop mysql
	-docker rm mysql
	docker run --name mysql -v mysql-data:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:5.7 

mysql-logs:
	docker logs -f mysql