Nginx setup that caches the img responses from a simple Ruby on Rails app.
Requests to `/purge/images/path` purges the cache for 1 file.
Run `docker-compose up` and then run `./test.sh` to test.