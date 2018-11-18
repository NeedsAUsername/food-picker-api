class StaticController < ApplicationController

  def index
    render html:
    '<h1>Welcome to the food-picker api
    <br>
    test url: /v1/users/test gets the first user\'s json data
    <br>
    post /v1/sessions for logging in and receiving auth token
    <br>
    subsequent requests require headers: X-User-Token and X-User-Email
    <br>
    get endpoints:
    <br>
    /v1/users/current gets the user
    <br>
    <br>
    post endpoints:
    <br>
    post /v1/users for signing up
    <br>
    post /v1/restaurants for creating a new restaurant
    <br>
    delete /v1/restaurants for deleting a restaurant
    <br>
    delete /v1/sessions for logging out
    </h1>'.html_safe

  end

end
