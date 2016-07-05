Rails.application.routes.draw do
  



  get 'pages/show'

  scope "(:locale)", locale: /en|fr/ do

    root to: 'experiences#wall'
    get '/:locale' => 'experiences#wall'

    resources :routes, only: [:show, :index]
    resources :destinations, only: [:show, :index]
    resources :rooms, only: [:show]
    resources :galleries, only: [:show]
    resources :experiences, only: [:index, :show]
    resources :pages, only: :show
    


    get 'learnmore/:stage_id/:type' => 'experiences#more', as: :learn_more_experience
    get 'destinations/:id/about' => 'destinations#show_about', as: :show_about_destination
    get 'destinations/:id/properties' => 'destinations#show_properties', as: :show_destination_properties

    get 'about-us' => 'static_pages#how_to', as: :about_page

    devise_for :admin_users, ActiveAdmin::Devise.config


    resources :properties, only: [:show, :index] do
      member do
        get 'show_innkeeper'
        get 'show_about'
      end
    end

    resources :enquiries, only: [:new,:create] do
      collection do
        post 'submit'
      end
    end

    


  end
  
  scope '(:locale)', defaults: { locale: I18n.default_locale } do
    ActiveAdmin.routes(self)
  end 

end
