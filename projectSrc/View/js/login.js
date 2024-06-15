document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('form');

    form.addEventListener('submit', function(event) {
       
        event.preventDefault();

        
        const errorMessage = document.getElementById('error-message');
        errorMessage.textContent = '';

       
        const emailInput = document.getElementById('email');
        const email = emailInput.value.trim();
        if (!isValidEmail(email)) {
            errorMessage.textContent = '*Por favor, insira um email válido.*';
            return;
        }

      
        const senhaInput = document.getElementById('senha');
        const senha = senhaInput.value.trim();
        if (senha.length === 0) {
            errorMessage.textContent = '*Por favor, insira sua senha.*';
            return;
        }

       
        if (email.length > 50 || senha.length > 20) {
            errorMessage.textContent = '*Os campos devem ter no máximo 20 caracteres.*';
            return;
        }

       
        console.log('Formulário válido. Enviando...');

       
    });

    function isValidEmail(email) {
       
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }
});

