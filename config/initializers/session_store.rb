    if Rails.env == "production"
        Rails.application.config.cache_store :cookie_store, key: "_auth_app", domain: "inzynierkatest.herokuapp.com", httponly: false
    else
        Rails.application.config.cache_store :cookie_store, key: "_auth_app", httponly: false

    end
