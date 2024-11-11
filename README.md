# Flet development VM

This projects helps you to provide a reproducable virtual environment for the development of flet apps.
It creates a Ubuntu 24.04 Desktop Virtual machine with Vagrant and VirtualBox. 
Setting up all Flet dependencies like Flutter and Poetry to be ready for use.

1. Install Vagrant and VirtualBox.

## Setting Up the VM

### 1. Install Vagrant and VirtualBox.

### 2. Clone this repository
    
 ```
$ git clone git@gitlab.com:holypoly/flet_development_vm.git
```

### 3. Bring the flet VM up
Run the following command to start the VM and to automatically setup and install (provision) all dependencies.

```
$ vagrant up
```

### 4. Reprovision the VM
If you want execute the provision steps again while the Vagrant VM is already up and running you have to use `vagrant provision` instead of `vagrant up`.

```
$ vagrant provision
```
### 5. Destroy the VM
After you're done with your development and want to remove the vm, run the following command to destroy the Vagrant virtual machine.

```
$ vagrant destroy
```

## Using the VM

### 1. SSH into the VM
Once the provisioning process is complete, you can connect to the VM using:

 ```
 $ vagrant ssh
 ```

### 2. The shared directory `/vagrant`
This project directory is shared with the Vagrant VM and is available at `/vagrant` within the VM.

### 3. Run your app during development.

To run your Flet app your flet project directory do:

```
$ cd /vagrant/example_flet_app
$ flet run fletapp.py
```

### 4. Build your flet app for the distribution.

```
$ poetry run flet build linux --module-name fletapp.py
```