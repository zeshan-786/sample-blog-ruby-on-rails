# SampleBlog

SampleBlog is a simple blog created for [Ruby on Rails](https://rubyonrails.org) demo

## Installation

Install ruby latest version on you computer you also need to install rails and, Gem bundler.

Project is created using 

```bash
rails new sampleBlog
```
For get the project runing on your pc clone the repo and change directory to project folder and run

```bash
bundle install
```

To create database schema run 

```bash
rails db:migrate
```

then run to start the server

```bash
rails s
```

## Deployment

To deploy on heroku login to heroku through CLI

```bash
heroku login
```
Create application on heroku

```bash
heroku create application-name
```

Set heroku stack

```bash
heroku stack:set heroku-18
```

Deploy

```bash
git push heroku master
```

The application will be runing on [https://localhost:3000](https://localhost:3000)

## Credentials

Credentials for basic authentication

```python
username: syed
password: 1234
```