# README

Paso a paso para instalar y ejecutar el proyecto Doctors

Versión de Ruby: 3.0.7 (windows)
Versión de Rails: Rails 7.2.3
Base de datos: Sqlite

## Clonar el repositorio

Dentro de una carpeta ejecutar el comando 

``` bash
git clone https://github.com/Mau5trakt/Doctors.git
```

una vez clonado entrar a la carpeta `Doctors`

``` bash
cd Doctors
```

## Instalación del proyecto

### Nota en caso de estar usando linux/mac comentar la línea 10 del Gemfile y descomentar la línea 13 

Instalar las librerias necesarias

``` bash
bundle install
```



##  Crear y alimentar la base de datos

``` bash
rails db:create
```

``` bash
rails db:migrate
```

``` bash
rails db:seed
```

## Ejecutar el proyecto

``` bash
rails s
```

el proyecto se ejecutará por defecto en `http://localhost:3000`

### NOTA: 
En caso de error al ejecutar por primera vez en windows, terminar la ejecución de rails,  ejecutar el comando `rails dev:cache` y volver a ejecutar el proyecto
