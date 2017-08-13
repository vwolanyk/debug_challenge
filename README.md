# Debug Challenge

## Setup

- create a fork of this repo and clone it to your dev environment
- inside of the repo

```
bundle install
rake db:setua
rails s
```

## Resolve the following bugs

### 1. ActionView::MissingTemplate in Companies#show

url: http://localhost:3000/companies/1

error message:

```
Missing partial categories/_category with {:locale=>[:en], :formats=>[:html], :variants=>[], :handlers=>[:raw, :erb, :html, :builder, :ruby, :coffee, :jbuilder]}. Searched in:
  * "/home/deploy/debug_challenge/app/views"
```

### 2. AbstractController::DoubleRenderError in CategoriesController#update

url: http://localhost:3000/categories/1

error message:

```
Render and/or redirect were called multiple times in this action. Please note that you may only call render OR redirect, and at most once per action. Also note that neither redirect nor render terminate execution of the action, so if you want to exit an action after redirecting, you need to do something like "redirect_to(...) and return"
```

### 3. ActiveRecord::StatementInvalid in Search::Companies#index

url: http://localhost:3000/search/companies?utf8=%E2%9C%93&q=demo

error message:

```
SQLite3::SQLException: near "%": syntax error: SELECT "companies".* FROM "companies" WHERE (name LIKE %demo%)
```

**NOTE**: This endpoint also contains a security weakenss. Please find the code that presents the security concern and remedy it.

### 4.
