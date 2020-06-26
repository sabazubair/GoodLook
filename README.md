# Final Project 'GoodLook'

Good Look is a React-based fashion app that allows women to discover their personal style. Built with Rails + React.


## Screenshots

## Prerequisites

- NODEJS (v8.10.0)

```

sudo apt install nodejs

```

- NPM (v8.9.4)

```

sudo apt install npm

```

- POSTGRESQL

```

brew install postgresql

```

## Setup

1. Install the dependencies for front-end and back-end.<br>
In frontend folder: `npm install`
In backend folder: `bundle install`

2. Create, load and seed database by running migrations

```
rake db:migrate
rake db:seed
```

3. On two terminal windows, start the servers.
<b>Terminal window for front-end router:</b>
```
npm start
````

Runs the app in the development mode.
[http://localhost:3001](http://localhost:3001) will open in the browser.

The page will reload if you make edits. You will also see any lint errors in the console.

<b>Terminal window for back-end server</b>
```
bin/rails s
```
Server will run at localhost:3000.

## Dependencies
* React 
* React Router
* ReactDom 
* Bootstrap 
* Rails 5.1 
* postgreSQL
* Axios 
* Bcrypt

## Upcoming Features
* User login
* Sharing Wardrobe with friends
* Men style quiz
* Identifying and pricing each article of clothing
* Output outfits based on users budget 
* Show outfits depending on season

## Known Issues
* Login and footer is a deadlink.
* Name is hardcoded in the Navbar (under the assumption that someone is logged in already)
