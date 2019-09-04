# Vieillot.fr website 

## Requirements

  * PHP 7.1.3 or higher;
  * PDO-SQLite PHP extension enabled;
  * and the [usual Symfony application requirements][1].

## Create environnement 
Local env for recette and production is create by Vagrant. 
For create env : 
```bash
$ vagrant up
```
For login in recette env :
```bash
$ vagrant ssh recette
```
For login in production env :
```bash
$ vagrant ssh production
```

## Installation

Install deps : 

```bash
$ composer install -n 
```

## Launch server

```bash
$ php bin/console server:start
```

## Tests

Execute this command to run tests:

```bash
$ ./bin/phpunit
```

[1]: https://symfony.com/doc/current/reference/requirements.html