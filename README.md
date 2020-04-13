# Le admin

## Ruby version

- ruby 2.7.0p0


# System dependencies

- Ruby >= 2.7
- Nodejs >= 12
- Mysql >= 8.0.19
- Yarn >= 1.22.4


## Database creation

1. Clone repository

```sh
git clone https://github.com/joelerll/Le-Admin.git
```

2. Move to folder

```sh
cd Le-Admin
```

3. Install nodejs repostories

```sh
yarn install
```

4. Install ruby dependencies

```sh
bundle install
```

5. Config datbase.yml

```yml
development:
  adapter: mysql2
  host: localhost
  database: le_admin
  username: root
  password: joelerl # change this password
```

6. Init database

```sh
rails db:create
```

7. Run migrations

```sh
rails db:migrate
```

8. Run seeds. You dont need the .sql for populate the database.

```sh
rails db:seed
```

9. Run database

```sh
rails s
```

10. [Go to](http://localhost:3000/)

