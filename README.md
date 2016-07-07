# Relais & Chateaux Africa



The project uses Capistrano to deploy fetching the new code from github.

Run on your local machine the following command:

    cap production deploy

Capistrano will ask you which branch to deploy and will deploy all changes needed, run migrations, precompile assets and all other related tasks.

If you want to deploy to the staging server you can by using:

    cap staging deploy

## Server setup
The production and staging servers are hosted by Digitalocean.com

There are two main linux user to access the servers:
The "deployer" has root access and can be used to make changes, install packages and everything else.
The "deploy" user has no root access and no password and it's use to deploy (by capistrano) and also is the user that runs the rail process.



## CMS Admin interface
The website admin interface is powered by ActiveAdmin and is accessible by visiting the `/admin` page.
In the backend it is possible to customize most of the content of the website.
