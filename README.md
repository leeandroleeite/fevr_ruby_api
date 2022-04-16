# Fevr Ruby API

## Simple API for managing a database of football players.

Status: This api is currently under active development and might not be ready for heavy production use

## Features

- User Authentication
- Manage players (Add new players, delete old ones)
- Sort player’s listing based on position, nationality or age
- Add notifications for each individual player
- Fetch players from external API and update on the Database
- Delete notifications older than one week


### To Do

- Users subscribing to players
- Trigger notifications and send them to different users


## Get it Running

### Clone the repo
```
git clone git@github.com:leeandroleeite/fevr_ruby_api.git
```

### Install the required Dependencies
```
bundle install
```

### Setup Database
```
rails db:drop db:create db:migrate db:seed
```

### Start the server 
```
rails s
```

### Fetch Belenenses team players from external API
```
rake players:get
```

## API Documentation
[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/2359a87a73c21f68bfc5?action=collection%2Fimport)