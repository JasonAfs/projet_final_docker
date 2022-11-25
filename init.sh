docker-compose up -d

docker-compose exec php1 /bin/sh -c "composer install"

docker-compose exec php1 php artisan key:generate
docker-compose exec php1 php artisan config:cache
docker-compose exec php1 php artisan migrate:fresh --seed

docker-compose exec php2 /bin/sh -c "composer install"
docker-compose exec php2 php artisan key:generate
docker-compose exec php2 php artisan config:cache
docker-compose exec php2 php artisan migrate:fresh --seed
