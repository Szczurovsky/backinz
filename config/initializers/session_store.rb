if Rails.env =="production"
Rails.application.config.session_store :cookie_store, key: "_back", domain:"inzynierkatest.herokuapp.com"
else
    Rails.application.config.session_store :cookie_store, key: "_back"
end