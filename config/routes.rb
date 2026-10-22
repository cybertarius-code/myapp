Rails.application.routes.draw do
  resources :posts
  get "up" => "rails/health#show", :as => :rails_health_check

  mount MissionControl::Jobs::Engine, at: "/jobs"
  root "home#index"
end
