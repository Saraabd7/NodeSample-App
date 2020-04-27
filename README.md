### Create a Dev Environment for the Node Sample App 😫


This app is intended for use with the Sparta Global DevOps Stream as a sample app


## Usage

### Provision VM:

- The machine needs to be provisioned, this means to make a bash script to run on vagrant so sudo apt-get update and sudo apt-get install npm and other commands are automatically run at the start by running ``` vagrant provision```

### Install/Start npm:

- To Install npm and start it:

Move to the correct location where the synced folder is, in this case, it's in 'app' which is inside 'Nodejs-app(starter-code)'.

### Running App

Run ```vagrant ssh``` to enter the VM.

- Inside VM will have to move to the correct location of the synced folder inside it, in this case, it's in '/app'
Run the following commands:

- cd/home/ubuntu/app

- sudo npm install to this installs dependencies from the .json file

- sudo npm start to this loads/runs the .js file

- npm start, node seeds/seed.js to run the posts

- After that, a  message will come up that  ***app is ready and listening on port 3000***

## The app is a node app with three pages:

1. Homepage

- Whilst still inside the VM, go on browser and type in ```localhost:3000``` in the search bar and you should see the homepage displaying a ***Sparta logo*** and a message.

2. A Fibonacci number generator

-  On browser and type in ```localhost:3000/fibonacci/{index} ```
to get ***Fibonacci Generator***. The higher the Fibonacci number requested the longer the request will take. A very large number can crash or block the process.

3. Blog (posts)

- On browser and type in ```development.local:3000/posts/ ```
to get ***posts***.

This page displays a logo and randomly generated blog posts. The posts are generated during the seeding step. It is only accessible when a database is available and the DB_HOST environment variable has been set with its location.

## Tests

```
npm test
```
