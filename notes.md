For Future Reference, so I don't forget:
for environments/production.rb , we need to add this for devise:
config.action_mailer.default_url_options = {host: future_website_url}


Devise Notes
-in rails: user.authenticate(pass)
-in devise: user.valid_password?(pass)
