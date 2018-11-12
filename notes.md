For Future Reference, so I don't forget:
for environments/production.rb , we need to add this for devise:
config.action_mailer.default_url_options = {host: future_website_url}


Devise Notes
-in rails: user.authenticate(pass)
-in devise: user.valid_password?(pass)

-we are going to use token authentication
 -"A token is a piece of data which only Server X could possibly have created, and which contains enough data to identify a particular user.

You might present your login information and ask Server X for a token; and then you might present your token and ask Server X to perform some user-specific action."

 -it allows the user to stay logged in without the use of cookies.
 -since we are not relying on cookies, we don't need CSRF, or CORS protection
 -https://stackoverflow.com/questions/1592534/what-is-token-based-authentication
