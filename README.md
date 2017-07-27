# Inviter
(Still under development..)

## A Rails web application to invite people and send invitations to the attendees. Also added authentication for users to signup and create events and send invites using action mailer.

##Landing page:

![screenshot](https://github.com/sowmyadsl/inviter-rails/blob/master/public/screencapture-localhost-3000-1501178900106.png)

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
- [ ] Add admin functionality to add,edit and delete templates and integrate the templates with events on the splash page.
- [ ] Add search scope to search from a list of categories to choose the templates for events.
- [ ] Add RSVP status and keep track of the RSVP status and update on the event page.



## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Postgres](https://www.postgresql.org/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)


## Installation

In your terminal:
* `git clone https://github.com/sowmyadsl/inviter`
* `cd inviter`
* `bundle install`
* Open another terminal window and type `postgres`.  Leave this window open.
* In your first terminal window type:
* `bundle exec rake db:setup`
* `bundle exec rake db:test:prepare`

## Setup/Installation Requirements

* _Clone the repo_
* _Run the following commands in the root of the project to set up the application_
```
$ bundle install
$ rails db:create
$ rails db:schema:load
$ rails s
```

## Development server

Run `bundle exec rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.


## Running tests

This app includes unit  testing using RSpec, Shouldamatchers, and Capybara for testing.
Run `bundle exec rspec` in terminal to test.
(Further testing will be added in the future)

## Technologies Used

* Ruby
* Rails
* ActiveRecord
* Postgres
* Bundler
* Rake Gem
* Devise Gem
* Actionmailer
* letteropener
* bootstrap_for
* Rspec
* HTML
* CSS
* Bootstrap
* ES6

## Known Bugs
_N/A_

## Support and Contact details

Please feel free to contact me at sowmya.dsl@gmail.com with any questions.

## License

This software is licensed under the MIT license Copyright © 2017 Sowmya Dinavahi
