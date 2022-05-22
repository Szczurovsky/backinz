    if Rails.env == "production"
        Rails.application.config.session_store :cache_store, key: "_auth_app", domain: "inzynierkatest.herokuapp.com", httponly: false
    else
        Rails.application.config.session_store :cache_store, key: "_auth_app", httponly: false

    end
