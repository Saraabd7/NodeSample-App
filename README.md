### Create a Dev Environment for the Node Sample App 😫

- On bash command line, cd into  file and run ```vagrant init``` to creates a vagrant file.

- Run ```atom .```  to opens the vagrant file on atom

- On Vagrantfile set and sync synced_folder:

```
Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "192.168.10.100"
    app.hostsupdater.aliases = ["development.local"]
    app.vm.synced_folder "app", "/home/ubuntu/app"
    app.vm.synced_folder "environment/app", "/home/ubuntu/environment"

```

- Run ```vagrant up``` to spins up the machine

- Run ```vagrant ssh <machine name>```  to enters the VM.

- Run ```sudo apt-get update``` to updates packages.

- To install npm, inside the VM run the command:

```
sudo apt-get install npm

```

- To start up npm:
```
sudo systemctl start npm
```
- The machine needs to be provisioned, this means to make a bash script to run on vagrant so sudo apt-get update and sudo apt-get install npm and other commands are automatically run at the start by running ``` vagrant provision```

- To Install npm and start it:

Move to the correct location where the synced folder is, in this case, it's in 'app' which is inside 'Nodejs-app(starter-code)'.

Run ```vagrant ssh``` to enter the VM.

- Inside VM will have to move to the correct location of the synced folder inside it, in this case, it's in '/app'
Run the following commands:
- cd ..

- cd ubuntu

- ls - make sure that 'app' is there

- cd app

- sudo npm install to this installs dependencies from the .json file

- sudo npm start to this loads/runs the .js file

- npm start, node seeds/seed.js to run the posts

- After that, a  message will come up that  ***app is ready and listening on port 3000***

- Whilst still inside the VM, go on browser and type in 'development.local:3000' in the search bar and you should see the homepage displaying a ***Sparta logo*** and a message.
-  In the browser  type ```development.local:3000/fibonacci/<any number> ```
to get ***Fibonacci Generator***.

- In the browser  type ```development.local:3000/posts/ ```
to get ***posts***.
