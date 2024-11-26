class RelatoriosController < ApplicationController
  before_action :authenticate_user!

  def index
    @total_clientes = Cliente.count
    @clientes_recente = Cliente.order(created_at: :desc).limit(10)
  end

  def clientes_dashboard
    @clientes_no_mes = Cliente.where(created_at: Time.now.beginning_of_month..Time.now.end_of_month).count
  end
  
end
