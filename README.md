# README

Mycommunity is a web application for creating advertisement flyers for community events. It was built with Ruby on Rails on top of Foundation framework and a PostgreSQL database. Mycommunity features a the Google Maps API which allows users to display the location of their community event to efficiently maximize turnout results to an event dynamically. Users can create secure accounts (Devise) and upload an avatar to be associated with their profile, then add and their event so users can review them. This application is a unique demonstration of using Google Maps to link to community events.

Mycommunity link: **bostonmycommunity.herokuapp.com/**

* Technologies

•	Rails - for its neat implementation of MVC structures
•	Google Maps API - used to set event locations
•	Foundation - Styling framework used to design front-end
•	PostgreSQL - for its compatibility with Heroku

* Libraries

•	Devise - to handle user-account creation and management
•	CarrierWave - to allow avatar images for profiles (stored on AWS)

* Configuration

Clone from command line:
$ git clone https://github.com/Hazumon/mycommunity

Navigate into directory:

$ cd ./mycommunity
Install required Ruby gems and Node modules:
$ bundle && npm install

Initialize database:
$ rake db:create && rake db:migrate

Initialize local server:
$ rails s

To get ReactJS frontend running:
To play with the app, open a browser window and in the URL bar enter localhost:3000
Enjoy!
