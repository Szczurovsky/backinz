    if Rails.env == "production"
        Rails.application.config.session_store :cookie_store, key: "_auth_app", domain: "inzynierkatest.herokuapp.com/api/v3/"
    else
        Rails.application.config.session_store :cookie_store, key: "_auth_app"

    end
