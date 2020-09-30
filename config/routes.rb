Rails.application.routes.draw do
  
  root "home#index"

  get "/twitter", to: "sns#twitter"
  post "/twitter-search", to: "sns#twitter_search"
  
  get "/linkedin", to: "sns#linkedin"
  post "/linkedin-search", to: "sns#linkedin_search"

  get "/tiktok", to: "sns#tiktok"
  post "/tiktok-search", to: "sns#tiktok_search"

  get "/instagram", to: "sns#instagram"
  post "/instagram-search", to: "sns#instagram_search"
end
