start:
	php -S 0.0.0.0:${PORT:-8000} -t public

setup:
	composer install
	cp -n .env.example .env|| true
	php artisan key:gen --ansi
	php artisan migrate
	php artisan db:seed
	npm install
