# Key learning points Ruby on Rails 4: Getting Started (Pluralsight)

> By Paulina Grunwald

> E-mail:paulina.grunwald@gmail.com

This file contains key learning points from __[Pluralsight Ruby on Rails 4: Getting Started](https://app.pluralsight.com/library/courses/ruby-rails-4-getting-started/table-of-contents).__


### Content of the course:
1. Introduction
2. Models and Migrations
3. Action Mailer and Active Job
4. Basics of the Asset Pipeline
5. Deployment
6. Functions

## 1. Introduction

Every request that user make on the webpage goes in the cycle in terms of Rail components.

__Route__ = URL + HTTP Verb (GET, POST, PATCH, DELETE)
__MVC__ - Model View controller.

Rails is modular with many internal concepts.

### 1.1 Starting project
- To check current version of ruby: ruby -v
- To install rails: gem install rails
- Create new project: rails new <em>project_name</em>
- cd to newly created directory and start rail server using __rail server__ command.
- Go to __localhost:3000__
- Generate new controller and new action to our main page - use command: __rails generate controller home index__ (index is a an action)
- Change default template generated by previously set action: go to app/views/index.html.erb (we can change the h1 e.g to Hello or Welcome). Make this action default view. To do that we needs to change __router.rb__ (conig/locales/router.rb) file.  Create new handler: __root 'home/index'__ and delate the get 'home/index'.


### 1.2 Layout


# References