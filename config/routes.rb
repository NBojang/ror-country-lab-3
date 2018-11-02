Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'country#home'
    get 'country/list'
    get 'country/new'
    patch 'country/update'
    get 'country/create'
    post 'country/create'
    get 'country/show'
    get 'country/edit'
    get 'country/delete'
    get 'country/update'

end
