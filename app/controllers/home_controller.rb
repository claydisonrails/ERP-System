class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    # Aqui você pode adicionar qualquer lógica que deseja para a página inicial
  end
end
