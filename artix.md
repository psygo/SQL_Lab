# SQL Basics on Artix

Tags: SQL, Database

## Installation

If you're using Artix OpenRC, install `postgresql-openrc`.

Then:

```sh
sudo rc-service postgresql start
initdb
sudo -iu postgres

psql
```

## Adding a user as Superuser

In `psql`:

```sh
CREATE USER librarian;
ALTER USER librarian WITH SUPERUSER;
ALTER USER philippe WITH CREATEDB;
```

## Basic Commands

You can enter a database with `psql <db-name>`.

> You can run `.sql` scripts with `psql -d <db-name> -f <file-name>`

```sql
CREATE TABLE <table-name> (
  column_1 column_type
);

DROP TABLE <table-name>;

SHOW TABLES -- or `\dt` for when on interactive `psql`
```

## Resources

- [PostgreSQL on the ArchWiki](https://wiki.archlinux.org/index.php/PostgreSQL)
- [Failure to install postgresql question on the Artix Forum](https://forum.artixlinux.org/index.php/topic,1455.0.h
