json.extract! pedido, :id, :cliente_id, :produto_id, :quantidade, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
