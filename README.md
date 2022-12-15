# Petsy

Live website: https://petsy-1052.herokuapp.com/

### About the project

Petsy is a website designed for pet owners to find local pet sitters in their area. 
Filterable by animal and location, users can get in contact with potential pet sitters on availablity.
There is an additional user journey to set up a profile as a pet sitter so that a user can look for services or list their own. 
✨ Reviews, availability and the secondary user journey are features in the works! ✨

### How to use

1) Create an account and toggle through to the profile page to list your pets. 
2) On the homepage is the pet sitting search functionality - fill in the search fields to find a local pet sitter in the area. 
3) Filter through pet sitters to find the ideal candidate. 
4) Make a booking and await their response on availablity.
5) Confirm your booking!

### Tech Stack
Frameworks & libraries used to make Petsy

- Ruby on Rails
- JavaScript
- CSS & SASS
- Bootstrap
- Stimulus
- Mapbox API
- Cloudinary API

Version control & deployment

[GitHub](https://github.com/lstone123/petsy) | 
[Heroku](https://petsy-1052.herokuapp.com/)

### Installation

#### Setup
In order to run our app locally, you will need to have already installed Yarn and Rails. Check them with:

```
$ yarn -v
$ rails --version
```

If no version number is returned, please install Yarn and/or Rails before continuing.

We used Rails **v7.0.4** and Ruby **v3.1.2**.

```
git clone git@github.com:lstone123/petsy.git
cd petsy
bundle
yarn
bin/rails db:setup
bin/dev
```

#### Dependencies
You'll also need to install all dependencies of the project with:

```
$ bundle install && yarn install
```

The bundle command installs all Ruby Gems specified in our Gemfile. The yarn install command retrieves all dependencies from the project’s package.json file.

#### API Keys
Lastly, our API keys are hidden. You will need to touch a .env file and add your own Mapbox and Cloudinary API keys.

