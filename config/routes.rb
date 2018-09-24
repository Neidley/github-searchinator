Rails.application.routes.draw do
  root 'welcome#about'

  get 'welcome/index'

  get 'welcome/about'

  get 'auth/developer', :as => 'developer_auth'
  get 'auth/github', :as => 'github_auth'

  match 'auth/:provider/callback' => 'session#create', :via => [:get, :post]

  get 'session/destroy', :as => 'logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
