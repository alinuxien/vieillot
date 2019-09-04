# Vieillot.fr website 

## Requirements

  * PHP 7.1.3 or higher;
  * PDO-SQLite PHP extension enabled;
  * and the [usual Symfony application requirements][1].

## Create environnement 
The local environments for recette and production are created by Vagrant. 
To create the environment:
```bash
$ vagrant up
```
To log in the recette env:
```bash
$ vagrant ssh recette
```
To log in the production env :
```bash
$ vagrant ssh production
```

## Installation

Install dependancies : 

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
