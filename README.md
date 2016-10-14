# CallBot
A Rails plugged calling bot

## Get Started for Development
Clone project

`git clone https://github.com/sanilea/CallBot.git`

Build project docker image

`sudo docker-compose build`

Start project server et retrieve MongoDB image if this is the first run on this machine.

`sudo docker-compose up`

Server is Running on :4000 see file *docker-compose.yml*

Create data with rails seed file (db/seeds.rb) using the *rake* task *db:seed*

`sudo docker-compose run web rake db:seed`

Rails Console for commons task, test & debug

`sudo docker-compose run web rails c`
