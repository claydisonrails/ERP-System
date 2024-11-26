// Função para lidar com o clique no botão de login
document.getElementById('loginButton').addEventListener('click', function() {
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;

    if (email && password) {
        // Requisição para autenticar o usuário
        fetch('/users/sign_in', { // Rota correta para o login no Devise
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
            },
            body: JSON.stringify({ user: { email: email, password: password } })
        })
        .then(response => {
            if (response.ok) {
                // Verificar se o usuário está logado e redirecionar
                window.location.href = '/'; // Redireciona para o root_path, que no seu caso pode ser 'dashboard#index' para usuários autenticados
            } else {
                // Exibir mensagem de erro se as credenciais forem inválidas
                document.querySelector('.message').textContent = 'Login falhou. Verifique suas credenciais.';
            }
        })
        .catch(error => {
            console.error('Erro:', error);
            document.querySelector('.message').textContent = 'Erro ao realizar login.';
        });
    } else {
        document.querySelector('.message').textContent = 'Por favor, preencha todos os campos.';
    }
});

// Função para o clique no botão de "Esqueci a Senha"
document.getElementById('forgotPasswordButton').addEventListener('click', function() {
    window.location.href = '/users/password/new'; // Rota correta do Devise para recuperação de senha
});

// Função para o clique no botão de "Registrar"
document.getElementById('registerButton').addEventListener('click', function() {
    window.location.href = '/users/sign_up'; // Rota correta do Devise para registro de usuário
});
