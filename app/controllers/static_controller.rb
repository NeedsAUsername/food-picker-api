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
    /v1/restaurants gets the user\'s restaurants
    <br>
    post endpoints:
    <br>
    post /v1/users for signing up
    <br>
    delete /v1/sessions for logging out
    </h1>'.html_safe

  end

end
