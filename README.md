# Flet development VM

## Setting Up the VM

1. Install Vagrant and VirtualBox.

2. Clone this repository:
    `$ git clone git@gitlab.com:holypoly/fungua.git`

3. Run the following command to provision the VM

    `$ vagrant up`
    
    `$ vagrant provision`

## Using the VM

1. Once the provisioning process is complete, you can connect to the VM using:

    `$ vagrant ssh`

2. Your Flet project code is expected to be in the `/vagrant` directory within the VM.

3. To run your Flet app:

    `$ cd /vagrant/your_project_directory`

    `$ flet run`
