Spree::Core::Engine.routes.draw do
  namespace :admin do
    resource :adwords_settings do
      collection do
        post :dismiss_alert
      end
    end
  end
end
