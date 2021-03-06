Rails.application.routes.draw do
  devise_for :users, :skip => [:passwords, :registrations]
  root 'static_pages#home'
  get  'add',                     to: 'ldap_users#add'
  post 'add',                     to: 'ldap_users#add_group'
  get  'add_multiple',            to: 'ldap_users#add_multiple'
  post 'add_multiple',            to: 'ldap_users#add_group_multiple'
  get  'create',                  to: 'ldap_users#new'
  post 'create',                  to: 'ldap_users#create'
  get  'destroy',                 to: 'ldap_users#delete'
  post 'destroy',                 to: 'ldap_users#destroy'
  get  'destroy_group',           to: 'ldap_users#delete_group'
  post 'destroy_group',           to: 'ldap_users#destroy_group'
  get  'remove',                  to: 'ldap_users#remove'
  post 'remove',                  to: 'ldap_users#remove_group'
  get  'remove_multiple',         to: 'ldap_users#remove_multiple'
  post 'remove_multiple',         to: 'ldap_users#remove_group_multiple'
  get  'search',                  to: 'ldap_users#search'
  post 'search',                  to: 'ldap_users#search_result'
  get  'search_group',            to: 'ldap_users#search_group'
  post 'search_group',            to: 'ldap_users#search_group_result'
  get  'result',                  to: 'ldap_users#result'
  get  'update',                  to: 'ldap_users#edit'
  post 'update',                  to: 'ldap_users#update'
end
