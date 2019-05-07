# Final Project 'GoodLook'

Good Look is a React-based fashion app that allows women to discover their personal style. Based on the results of a simple quiz, the app will recommend outfits to inspire and educate users.


## Screenshots

### Prerequisites

- NODEJS (v8.10.0)

```

sudo apt install nodejs

```

- NPM (v8.9.4)

```

sudo apt install npm

```

### Setup

1. Install the dependencies for front-end and back-end.
In frontend folder:
```npm install```

In backend folder:
```bundle install```

2. Create, load and seed database by running migrations

```
rake db:migrate
rake db:seed
```

3. On two terminal windows, start the servers.
<b>Terminal window for front-end router</b>
```
npm start
```
Runs the app in the development mode.<br>
[http://localhost:3001](http://localhost:3001) will open in the browser.

The page will reload if you make edits.<br>
You will also see any lint errors in the console.

<b>Terminal window for back-end server</b>
```
bin/rails s
```

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
* allowing creation of user accounts
* mens' style quiz and outfits
* prices of items
* getting outfits based on budget

## Known Issues
*
