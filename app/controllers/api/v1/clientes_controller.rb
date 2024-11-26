module Api
  module V1
    class ClientesController < ApplicationController
      skip_before_action :verify_authenticity_token

      def index
        clientes = Cliente.all
        render json: clientes
      end

      def show
        cliente = Cliente.find(params[:id])
        render json: cliente
      end

      def create
        cliente = Cliente.new(cliente_params)
        if cliente.save
          render json: cliente, status: :created
        else
          render json: { errors: cliente.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def cliente_params
        params.require(:cliente).permit(:nome, :email, :telefone)
      end
    end
  end
end
