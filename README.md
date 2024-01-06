
## Installation

```bash
$ git clone github.com:irbistwo/app.git
$ cd app
$ sudo docker-compose build
$ sudo docker-compose up -d
I do not know why
volumes:
  initdb script not running
  - ./initsql/init.sql:/docker-entrypoint-initdb.d/init.sql
  in the internet lot of issues this trouble
  you must manually exec this command
  $ sudo docker-compose exec db psql -U postgres -d applogin -f /docker-entrypoint-initdb.d/init.sql
```

## Running the app

```bash
# development
$ sudo docker-compose up -d

http://<host>:3000
