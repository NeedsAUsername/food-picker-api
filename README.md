# README
Welcome to the food-picker api for https://github.com/NeedsAUsername/food-picker.

# Test Route
/v1/users/test gets the first user\'s json data

# Token Auth
post /v1/sessions for logging in and receiving auth token

subsequent requests require headers: X-User-Token and X-User-Email

# Endpoints

get /v1/users/current for the logged in user

post /v1/users for signing up

post /v1/restaurants for creating a new restaurant

delete /v1/restaurants for deleting a restaurant

delete /v1/sessions for logging out
