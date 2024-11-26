import { Application } from "@hotwired/stimulus";
import { Turbo } from "@hotwired/turbo-rails"; // Importando Turbo
import Rails from "@rails/ujs"; // Importando Rails UJS

const application = Application.start();

// Configurar a experiência de desenvolvimento do Stimulus
application.debug = false;
window.Stimulus = application;

// Iniciar Rails UJS para lidar com formulários e links
Rails.start();

// Iniciar Turbo
Turbo.start();

export { application };

