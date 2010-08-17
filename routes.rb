devise_scope :user do
  get    "criar-conta",             :to => "devise/registrations#new", :as => :signup
  post   "criar-conta",             :to => "devise/registrations#create", :as => :signup
  get    "login",                   :to => "devise/sessions#new", :as => :login
  post   "login",                   :to => "devise/sessions#create", :as => :login
  get    "sair",                    :to => "devise/sessions#destroy", :as => :logout
  get    "recuperar-senha",         :to => "devise/passwords#new", :as => :recover_password
  post   "recuperar-senha",         :to => "devise/passwords#create", :as => :recover_password
  get    "s/:reset_password_token", :to => 'devise/passwords#edit', :as => :reset_password
  put    "alterar-senha",           :to => 'devise/passwords#update', :as => :change_password
  get    "enviar-confirmacao",      :to => "devise/confirmations#new", :as => :send_confirmation
  post   "enviar-confirmacao",      :to => "devise/confirmations#create", :as => :send_confirmation
  get    "c/:confirmation_token",   :to => "devise/confirmations#show", :as => :confirmation
  get    "editar-dados",            :to => "devise/registrations#edit", :as => :account
  put    "editar-dados",            :to => "devise/registrations#update", :as => :account
  delete "cancelar-conta",          :to => "devise/registrations#destroy", :as => :cancel_account
end
