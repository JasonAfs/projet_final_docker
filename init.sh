
#lancement du docker-compose
docker-compose up -d

#php1 conteneur
docker-compose exec php1 /bin/sh -c "composer install"
docker-compose exec php1 php artisan key:generate
docker-compose exec php1 php artisan config:cache
docker-compose exec php1 php artisan migrate:fresh --seed
docker-compose exec php1 npm install
docker-compose exec php1 npm run build

#php2 conteneur
docker-compose exec php2 /bin/sh -c "composer install"
docker-compose exec php2 php artisan key:generate
docker-compose exec php2 php artisan config:cache
docker-compose exec php2 php artisan migrate:fresh --seed
docker-compose exec php2 npm install
docker-compose exec php2 npm run build