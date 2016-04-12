
Tech used: Rails, Redis, Sidekiq, HTML5, CSS3, AngularJS, jQuery, Twilio, Google Calendar API, Heroku

##### Live Luxe
A web and mobile application that enables hotel guests to schedule hotel services from their smart phones. This application has a business and guest facing UI.

- A Hotel can create its business page where they can see a list of current guests and services ordered by its guests. These services can be viewed in list as well as calendar format.

- Upon arrival,  guests receive a text message with a unique link that directs to login (without the necessity of a username or password); this allows guests to schedule services offered by that hotel including but not limited to - room cleaning,  restaurant reservations, spa services, or arrange car pick-up from the valet.


The  first MVP of Luxe was built in 6 days.

###### Deployed on Heroku - https://liveluxe.herokuapp.com/

###### Setting up the development environment:

- Clone this project
- bundle install in project directory
- rake db:migrate to set up database (make sure you have postgres running)
- execute following commands in order:
1. redis-server
2. bundle exec sidekiq
3. rails s to start server

