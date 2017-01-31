#Phalcon Vagrant Box

Getting started with [Phalcon](phalconphp.com) should be simple. This is an Ansible playbook to make that so.


### What's in the box?
When you run `vagrant up` you'll be set up with an Ubuntu vagrant box that has the following installed:

- Apache
- git
- Node (with `bower`, `gulp`, and `grunt-cli` installed globally)
- PHP 5.6
- MySQL
- Composer
- Xdebug (manual configuration is needed to use with a debugger for now)
- All of the build tools needed to build Phalcon from source
- Phalcon 3
- Phalcon Developer Tools

### Pre-requisities 
Get set up for using Vagrant if you aren't already by installing [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/downloads.html).

You will also need to install [Ansible](http://docs.ansible.com/ansible/intro_installation.html).

Optional but highly recommended is the [vagrant-hostsupdater](https://github.com/cogitatio/vagrant-hostsupdater) plugin.

### Installation
Once you have all of the pre-reqs, clone this repository, pop the directory open in a terminal and run `vagrant up`. Outside of downloading the base Ubuntu image if you don't already have it, the entire setup process should take ~15-20 minutes.

### Updating
Because we're provisioning a box with Ansible instead of dishing out box images you should be able to install _most_ updates without having to destroy your existing box. Simply drop the updated `vagrant-ansible` directory in your project and run `vagrant provision`.

### Get going!

Enjoy flying with Phalcon! You can start your project by using Phalcon DevTools in the command line (Run `phalcon`).

Apache's document root is pointed at `/vagrant/public` which does not exist yet. Once you begin your Phalcon project in `/vagrant` (which is the same directory as your `Vagrantfile`) you will have that public directory. ;) 

You can access your web application by going to `192.168.50.20` or `phalcon.dev` if you installed the vagrant-hostsupdater plugin. You'll get a "Forbidden" message but that's remedied by starting a project as mentioned above.

## Special Thanks
The original provisioning script to get things going with a basic LAMP stack was generated with [Phansible](http://phansible.com/). Various bits of knowledge floating around the [Phalcon Community](https://forum.phalconphp.com/) played a big role in figuring out the rest!

## Contributing
As previously mentioned, a benefit of provisioning this box with Ansible is that we can easily deliver updates without always requiring developers to destroy their existing boxes.

Feel free to check the issue tracker for bugs or reccomendations that you can implement, or come up with and submit your own ideas!

[Andrew Natoli](https://github.com/AndrewNatoli) is currently the main maintainer of this repository.