# socialmediamgmt
This project is about a enterprise blogging software in ruby on rails

![alt text](https://github.com/bhagvank/arc/blob/master/blog_software.jpg)


# Features

1.Creating Articles
2. Signup
3. Login
4. Profile (to be added)
5. Uploading content (to be added)

# Social Media Mgmt

This software will help in managing content to write blog articles in an enterprise or organization. 

## Prerequisites 

1. Ensure that  ruby is installed.
  * [Ruby](https://www.ruby-lang.org/en/downloads/)
  
2. Git clone this repository
```
git clone https://github.com/bhagvank/socialmediamgmt.git

```
3. Install the Gem for Rails
```
gem install rails
```

4. install the bundle
```
bundle install
```
5. Setup the database (instructions given below)

6. Run the server
```
.\bin\rails server
```

# Instructions for setting up database
1. Ensure that mysql is installed,ruby and rails.

  * [Ruby](https://www.ruby-lang.org/en/downloads/)

  * [MySql](https://www.mysql.com/downloads/)
  
  
2.create a database social_media and a user newuser
   
3. run locally using settings (update the database username and password)
```
rails generate migration users
rails generate migration articles
rails generate migration comments
rake db:migrate db:seed

```
