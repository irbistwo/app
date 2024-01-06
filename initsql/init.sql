create user apploginowner;
CREATE DATABASE  "applogin"
WITH OWNER  "apploginowner"
ENCODING 'UTF8';

create user oleksandr with password 'testweblogin';
GRANT ALL PRIVILEGES ON DATABASE applogin to oleksandr;
GRANT ALL  ON ALL TABLES IN SCHEMA  public  to oleksandr;

CREATE TABLE IF NOT EXISTS users
  (id INTEGER primary key ,
  uuid varchar(30),/*GUID field for integrate another database in cluster if need*/
  name varchar(100) not null,
  email varchar(50) NOT NULL,
  password varchar(100),
  data_create timestamp,
  data_lastactivity timestamp,
  is_locked integer, /*many database have not boolean for example oracle and sqlite*/
  CONSTRAINT emailusers_unique UNIQUE (email),
  CONSTRAINT uuidusers_unique UNIQUE (uuid)
  );

GRANT ALL ON TABLE users TO public;
create sequence id_users;
grant ALL on id_users to public;
