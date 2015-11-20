### Lyricks

Lyricks generates decorative cards with a user's favorite song lyrics.

It allows the user to:
- create cards by entering a title and song lyrics
- select an icon to adorn a card
- select the card's text color and font
- make the card public or private
- add genre tags to a card
- view other users' public cards (but not edit/delete their cards)
- browse cards by genre
- edit/delete user profile
- upload a profile picture

Lyricks also includes basic model tests using RSpec.

### Technologies Used

- Ruby
- Ruby on Rails
- HTML
- CSS
- Sass
- Git / GitHub
- Heroku
- Amazon Web Services

**Rails Gems**
- Devise
- RSpec
- CarrierWave
- Fog
- Figaro

### Installation Instructions

Clone this repo. Then...

```
$ bundle install
$ rake db:create
$ rake db:migrate
$ figaro install
```
Set up an AWS S3 bucket for the project. Then, in config/application.yml, include the following three pieces of information (placing your specific information within the empty strings)
```
aws_access_key_id: ""
aws_secret_access_key: ""
aws_bucket: ""
```
If deploying to Heroku, you can set the environmental variables to allow AWS by viewing the app in Heroku, clicking on "Settings", then "Reveal Config Vars" and adding them in manually.

### User Stories

See: https://trello.com/b/cDjawsIq/lyricks

### Unsolved Problems
- Implementing a mailer to send cards to friends via email
- Integrating an API to allow users to search for lyrics within the application
