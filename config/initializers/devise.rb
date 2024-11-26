Devise.setup do |config|

  # Definir remetente padrão para e-mails do Devise
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  # Carregar a configuração do ActiveRecord para Devise
  require 'devise/orm/active_record'

  # E-mail não deve diferenciar maiúsculas de minúsculas
  config.case_insensitive_keys = [:email]

  # Remover espaços em branco dos e-mails
  config.strip_whitespace_keys = [:email]

  # Pular o armazenamento da sessão para autenticação HTTP
  config.skip_session_storage = [:http_auth]

  # Definir o número de repetições de hashing da senha (menor no ambiente de testes)
  config.stretches = Rails.env.test? ? 1 : 12

  # Tornar a confirmação de e-mail necessária ao alterar o e-mail do usuário
  config.reconfirmable = true

  # Fazer o logout expirar todos os cookies de "remember me"
  config.expire_all_remember_me_on_sign_out = true

  # Definir o comprimento da senha
  config.password_length = 6..128

  # Definir a expressão regular para validação de e-mail
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  # Definir o prazo de validade do token de redefinição de senha
  config.reset_password_within = 6.hours

  # Alterar o método de logout para GET (por padrão, seria DELETE)
  config.sign_out_via = :get

  # Configurar o status de erro e redirecionamento ao responder com Devise
  config.responder.error_status = :unprocessable_entity
  config.responder.redirect_status = :see_other

end
