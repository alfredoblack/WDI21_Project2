# README

### Eventsperation

Eventsperation is about collecting memories of an event, chronologically, from all attendees' perspective. Remember the times from beginning to end.

### Current Version:
Eventsperation v1.0 is currently registering the creator of the event, the attendees of the event and providing an overall view of all the events the user created and attended in thier profile page.

### Next Version:
Eventsperation v1.0.01 will allow attendees to contribute thier perspective (photos) to events they attend. 

- Events will be able to be sorted by location.

- Comments will be enabled to allow attendees to share thier thoughts on the time they had
- Users will have thier personal timeline of events they have participated in.

###  Ruby version:

### System dependencies
	- gem 'rmagick'
	- gem "carrierwave", 
	- gem 'fog', require: 'fog/aws'
	- gem 'devise','4.2.0'
	- gem 'rails', '~> 5.0.0'
	- gem 'bootstrap', '~> 4.0.0.alpha3.1'

###  Configuration

### Database creation
	  User
	  :has events
		- email (Devise)
		- Password (Devise)
		- Username 
		- first_name
		- last_name
		- profile picture

	  Event
	  	:belongs to User
	  	
		- Title
		- photo
		- timestamp
		- location



###  Deployment instructions:


###  Things to add
	Event: Video and comment implementation
	Location Module
	
	Layout:
	landscape
	
	Forms format
	
	Build personal timeline according to date created.