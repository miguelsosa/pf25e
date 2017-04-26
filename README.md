# README

Store D&D 5e monster blocks; Used for storing conversions from
pathfinder, but could be used to store any monsters.

* Ruby version: 
2.3.1

* Database creation
createuser pf25e_dbuser --createdb -P

* Database initialization
rails db:setup
rails db:migreate

* How to run the test suite
rails rspec

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

TODO: Allow for scraping from paizo:
http://paizo.com/pathfinderRPG/prd/bestiary/hobgoblin.html#hobgoblin
and automodifying into our own DB.
