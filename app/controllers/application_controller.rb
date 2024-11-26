class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:new, :create]
  layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller? && (action_name == 'new' || action_name == 'create')
      "login" # Usa o layout 'login' para as páginas de login e signup
    else
      "application" # Usa o layout 'application' para o restante do sistema
    end
  end

  # Redireciona o usuário para a página inicial após o login
  def after_sign_in_path_for(resource)
    root_path # Redireciona para o home#index
  end

  # Redireciona para a página de login após o logout
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path # Redireciona para a página de login
  end
end
