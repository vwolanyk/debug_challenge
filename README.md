# Debug Challenge

## Setup

- create a fork of this repo and clone it to your dev environment
- inside of the repo

```
bundle install
rake db:setup
```

Most of the bugs below can be found by running `rake test`.

## Resolve the following Issues

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

### 4. Create an API endpiont for Categories#show

url: http://localhose:3000/api/categories

The tests in `test/controllers/api/categoryies_controller_test.rb` should pass. Please look at the Companies API endpoint for reference on how to implement this. You can find documentaiton about Active Model Serializers on the gem's home page.

expected response:

```json
{
  "id": 1,
  "name": 'Category Name',
  "companies": [
    {
      "id": 1,
      "name": "Company Name",
      "description": "Some company!"
    }
  ]
}
```

### 5. Create an API endpoint to search for Companies

This is a new feature that you will need to implement. Create an API endpoint at `api/search/companies` that accepts a query parameter and returns an array of companies that match the query.

- The endpoint must respond with JSON.
- Write tests to validate that the endpint behaves as expected.

### 6. Add Invoices to the Company API endpoint

In this new feature, we will be adding Invoices to the Api::Companies#show endpint.

- Modify this endpoint so that the response includes a node called `invoices` that contains an array of invoce objects.
- Modify the tests in `test/controllers/api/companies_controller_test.rb` so that they pass now that we've added the invoices node.
- Ensure that no other API endpoints include the `invoices` node in their responses.

Sample JSON

```json
{
  "id": 1,
  "name": "Company Name",
  "description": "Some company!",
  "invoices": {
    "id": 1,
    "title": "Invoice Title"
  }
}
```
