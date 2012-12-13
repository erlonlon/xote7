Xote7::Application.routes.draw do 


  resources :agendas, :only => [:index,:show]

resources :contacts

root :to => 'pages#index'
resources :pages  

    scope '/admin' do
        devise_for :users, :controllers => {
        :sessions => "admin/sessions",
        :passwords => "admin/passwords"}
    end

    namespace :admin do
        resources :categories 
        resources :types 
        resources :contacts
        resources :galleries
        resources :posts
        resources :users

        root :to => 'homes#index' 


    end

end
