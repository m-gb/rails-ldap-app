Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit',       to: 'devise/registrations#edit', as: 'edit_user_registration'
    put 'users',            to: 'devise/registrations#update', as: 'user_registration'
  end
  root 'static_pages#home'
  get  '/add',              to: 'ldap_users#add'
  post '/add',              to: 'ldap_users#add_list'
  get  '/create',           to: 'ldap_users#new'
  post '/create',           to: 'ldap_users#create'
  get  '/update_password',  to: 'ldap_users#edit'
  post '/update_password',  to: 'ldap_users#update'
  get  '/destroy',          to: 'ldap_users#delete'
  post '/destroy',          to: 'ldap_users#destroy'
  get  '/remove',           to: 'ldap_users#remove'
  post '/remove',           to: 'ldap_users#remove_list'
  get  '/search',           to: 'ldap_users#search'
  post '/search',           to: 'ldap_users#search_result'
end