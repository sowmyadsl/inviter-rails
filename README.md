# Inviter

## A Rails web application to invite people and send invitations to the attendees. Also added authentication for users to signup and create events and send invites using action mailer.

##Landing page:

![screenshot]()

It handles the following user stories:

- As a user, I'd like to visit the splash page and view the description of the web page.
- As a user, I'd like to navigate to about page and view the about page.
- As a user, I'd like to be able to signup, signin and logout of the application.
- As a user, I'd like to be able to create, edit, update and delete events.
- As a user, I'd like to be able to add, edit, update and delete attendees.
- As a user, I'd like to be able to view all events on a page.

Further Explorations:

- [x] Add AJAX to add an attendee.
- [x] Add AJAX to delete an attendee.
- [x] Add Actionmailer to deliver the invite to attendee's email address. But I used letter opener(for now), Planning to use mail gun and SMTP for production.
- [ ] Add AJAX to add, delete and update an event.
- [ ] Add AJAX to edit an attendee.


## Setup/Installation Requirements

* _Clone the repo_
* _Run the following commands in the root of the project to set up the application_
```
$ bundle install
$ rails db:create
$ rails db:schema:load
$ rails db:seed
$ rails s
```

## Technologies:

* HTML/SCSS
* Rails
* Ruby
* Rspec
* Capybara
* Faker


### License

* MIT

Copyright (c) 2017 **Sowmya Dinavahi**
