import * as process from 'process';

export const dbConfig = {
  user: process?.env?.dbuser || 'oleksandr',
  //host: process.env.dbhost||'localhost',
  host: process?.env?.dbhost || '172.28.0.4',
  database: process?.env?.database || 'applogin',
  password: process?.env?.password || 'testweblogin',
  port: process?.env?.port || 5432, // port PostgreSQL
};

export const schema = process?.env?.schema || 'public';
