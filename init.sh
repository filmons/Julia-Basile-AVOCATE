#!/bin/bash

##############################################
# Script d'initialisation du projet JB Avocate
# Génère automatiquement la structure complète
##############################################

# Couleurs pour l'affichage
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Configuration
PROJECT_NAME="jb-avocate"
CURRENT_DIR=$(pwd)

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}  JB Avocate - Initialisation du projet${NC}"
echo -e "${BLUE}========================================${NC}\n"

# Demander le nom du projet (optionnel)
read -p "$(echo -e ${YELLOW}Nom du projet ${NC}[${PROJECT_NAME}]: )" input_name
if [ ! -z "$input_name" ]; then
    PROJECT_NAME="$input_name"
fi

echo -e "\n${GREEN}→${NC} Création du projet: ${GREEN}${PROJECT_NAME}${NC}\n"

# Créer le dossier principal
if [ -d "$PROJECT_NAME" ]; then
    echo -e "${RED}✖${NC} Le dossier ${PROJECT_NAME} existe déjà."
    read -p "$(echo -e ${YELLOW}Voulez-vous le supprimer et recommencer? ${NC}[y/N]: )" confirm
    if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
        rm -rf "$PROJECT_NAME"
        echo -e "${GREEN}✓${NC} Dossier supprimé"
    else
        echo -e "${RED}✖${NC} Installation annulée"
        exit 1
    fi
fi

# Créer la structure de dossiers
echo -e "${GREEN}→${NC} Création de la structure..."
mkdir -p "$PROJECT_NAME/assets/css"
mkdir -p "$PROJECT_NAME/assets/js"
mkdir -p "$PROJECT_NAME/assets/img"

# Fichier index.html
echo -e "${GREEN}→${NC} Génération de index.html..."
cat > "$PROJECT_NAME/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Cabinet d'avocat spécialisé en droit pénal international, droit de la famille et droit des affaires">
  <title>JB Avocate - Cabinet d'Avocat</title>
  <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
  <header id="header">
    <div class="container">
      <div class="header-content">
        <div class="logo">
          <a href="#hero">JB Avocate</a>
        </div>
        <button class="menu-toggle" aria-label="Menu mobile">
          <span></span>
          <span></span>
          <span></span>
        </button>
        <nav class="main-menu">
          <ul>
            <li><a href="#cabinet">Le Cabinet</a></li>
            <li><a href="#expertises">Expertises</a></li>
            <li><a href="#valeurs">Valeurs</a></li>
            <li><a href="#actus">Actualités</a></li>
            <li><a href="#contact" class="btn-contact">Contact</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </header>

  <main>
    <section id="hero" class="hero">
      <div class="container">
        <div class="hero-content">
          <h1>Cabinet d'Avocat <br>Julia Basile</h1>
          <p class="hero-subtitle">Excellence juridique et accompagnement sur-mesure</p>
          <a href="#contact" class="btn-primary">Prendre rendez-vous</a>
        </div>
      </div>
    </section>

    <section id="cabinet" class="section">
      <div class="container">
        <div class="section-header">
          <h2>Le Cabinet</h2>
          <div class="separator"></div>
        </div>
        <div class="cabinet-content">
          <div class="cabinet-text">
            <p class="lead">Le cabinet JB Avocate vous accompagne dans la défense de vos droits avec rigueur, éthique et engagement.</p>
            <p>Fort d'une expertise reconnue en droit pénal international, droit de la famille et droit des affaires, notre cabinet offre un service juridique personnalisé adapté à chaque situation.</p>
          </div>
          <div class="cabinet-stats">
            <div class="stat-item">
              <span class="stat-number">15+</span>
              <span class="stat-label">Années d'expérience</span>
            </div>
            <div class="stat-item">
              <span class="stat-number">500+</span>
              <span class="stat-label">Clients accompagnés</span>
            </div>
            <div class="stat-item">
              <span class="stat-number">95%</span>
              <span class="stat-label">Taux de satisfaction</span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="expertises" class="section section-alt">
      <div class="container">
        <div class="section-header">
          <h2>Domaines d'Expertise</h2>
          <div class="separator"></div>
        </div>

        <div class="accordion">
          <div class="accordion-item">
            <button class="accordion-title">
              <span class="accordion-icon">⚖️</span>
              <span>Droit Pénal International</span>
              <span class="accordion-arrow">▼</span>
            </button>
            <div class="accordion-content">
              <p>Défense pénale devant les juridictions nationales et internationales.</p>
              <ul class="expertise-list">
                <li>Crimes contre l'humanité</li>
                <li>Crimes de guerre</li>
                <li>Extradition internationale</li>
              </ul>
            </div>
          </div>

          <div class="accordion-item">
            <button class="accordion-title">
              <span class="accordion-icon">👨‍👩‍👧‍👦</span>
              <span>Droit de la Famille</span>
              <span class="accordion-arrow">▼</span>
            </button>
            <div class="accordion-content">
              <p>Accompagnement dans les situations familiales sensibles.</p>
              <ul class="expertise-list">
                <li>Divorce et séparation</li>
                <li>Garde d'enfants</li>
                <li>Pension alimentaire</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="valeurs" class="section">
      <div class="container">
        <div class="section-header">
          <h2>Nos Valeurs</h2>
          <div class="separator"></div>
        </div>
        <div class="values-grid">
          <div class="value-card">
            <div class="value-icon">🎯</div>
            <h3>Excellence</h3>
            <p>Une expertise juridique pointue et une veille constante.</p>
          </div>
          <div class="value-card">
            <div class="value-icon">🤝</div>
            <h3>Confiance</h3>
            <p>Une relation client basée sur la transparence et l'écoute.</p>
          </div>
        </div>
      </div>
    </section>

    <section id="contact" class="section">
      <div class="container">
        <div class="section-header">
          <h2>Contact</h2>
          <div class="separator"></div>
        </div>
        <div class="contact-grid">
          <div class="contact-info">
            <h3>Coordonnées</h3>
            <div class="contact-item">
              <strong>📍 Adresse</strong>
              <p>123 Avenue de la Justice<br>75008 Paris</p>
            </div>
            <div class="contact-item">
              <strong>📞 Téléphone</strong>
              <p>+33 1 23 45 67 89</p>
            </div>
            <div class="contact-item">
              <strong>✉️ Email</strong>
              <p>contact@jb-avocate.fr</p>
            </div>
          </div>

          <form class="contact-form">
            <div class="form-group">
              <label for="name">Nom complet *</label>
              <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
              <label for="email">Email *</label>
              <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
              <label for="message">Message *</label>
              <textarea id="message" name="message" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn-primary">Envoyer</button>
          </form>
        </div>
      </div>
    </section>
  </main>

  <footer class="footer">
    <div class="container">
      <div class="footer-bottom">
        <p>&copy; 2024 JB Avocate. Tous droits réservés.</p>
      </div>
    </div>
  </footer>

  <button id="scrollTop" class="scroll-top" aria-label="Retour en haut">↑</button>

  <script src="assets/js/main.js"></script>
</body>
</html>
EOF

# Fichier CSS
echo -e "${GREEN}→${NC} Génération de style.css..."
cat > "$PROJECT_NAME/assets/css/style.css" << 'EOF'
:root {
  --primary-color: #2c3e50;
  --accent-color: #3498db;
  --text-color: #2c3e50;
  --text-light: #7f8c8d;
  --bg-color: #ffffff;
  --bg-alt: #f8f9fa;
  --border-color: #e1e8ed;
  --font-serif: 'Georgia', 'Times New Roman', serif;
  --font-sans: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  --transition: all 0.3s ease;
}

* { margin: 0; padding: 0; box-sizing: border-box; }

html { scroll-behavior: smooth; }

body {
  font-family: var(--font-sans);
  font-size: 16px;
  line-height: 1.7;
  color: var(--text-color);
  background-color: var(--bg-color);
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 2rem;
}

.section { padding: 5rem 0; }
.section-alt { background-color: var(--bg-alt); }

.section-header {
  text-align: center;
  margin-bottom: 4rem;
}

.section-header h2 {
  font-family: var(--font-serif);
  font-size: 2.5rem;
  font-weight: 400;
  color: var(--primary-color);
  margin-bottom: 1rem;
}

.separator {
  width: 60px;
  height: 3px;
  background: linear-gradient(to right, var(--accent-color), var(--primary-color));
  margin: 0 auto;
}

/* Header */
#header {
  position: sticky;
  top: 0;
  background-color: rgba(255, 255, 255, 0.98);
  backdrop-filter: blur(10px);
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
  z-index: 1000;
}

.header-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1.5rem 0;
}

.logo a {
  font-family: var(--font-serif);
  font-size: 1.8rem;
  font-weight: 700;
  color: var(--primary-color);
  text-decoration: none;
}

.main-menu ul {
  display: flex;
  list-style: none;
  gap: 2.5rem;
  align-items: center;
}

.main-menu a {
  color: var(--text-color);
  text-decoration: none;
  font-weight: 500;
  transition: var(--transition);
}

.main-menu a:hover { color: var(--accent-color); }

.btn-contact {
  padding: 0.5rem 1.5rem;
  background-color: var(--accent-color);
  color: white !important;
  border-radius: 4px;
}

.menu-toggle {
  display: none;
  flex-direction: column;
  gap: 5px;
  background: none;
  border: none;
  cursor: pointer;
}

.menu-toggle span {
  width: 25px;
  height: 3px;
  background-color: var(--primary-color);
  transition: var(--transition);
}

/* Hero */
.hero {
  background: linear-gradient(135deg, #2c3e50 0%, #34495e 100%);
  color: white;
  padding: 8rem 0;
  text-align: center;
}

.hero h1 {
  font-family: var(--font-serif);
  font-size: 3.5rem;
  margin-bottom: 1.5rem;
}

.hero-subtitle {
  font-size: 1.3rem;
  margin-bottom: 2.5rem;
}

.btn-primary {
  display: inline-block;
  padding: 1rem 2rem;
  background-color: var(--accent-color);
  color: white;
  text-decoration: none;
  border-radius: 4px;
  transition: var(--transition);
}

.btn-primary:hover {
  background-color: #2980b9;
  transform: translateY(-2px);
}

/* Stats */
.cabinet-stats {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 2rem;
  margin-top: 3rem;
}

.stat-item {
  text-align: center;
  padding: 1.5rem;
  background-color: var(--bg-alt);
  border-radius: 8px;
}

.stat-number {
  display: block;
  font-size: 2.5rem;
  font-weight: 700;
  color: var(--accent-color);
}

.stat-label {
  font-size: 0.9rem;
  color: var(--text-light);
  text-transform: uppercase;
}

/* Accordion */
.accordion { max-width: 900px; margin: 0 auto; }

.accordion-item {
  background-color: white;
  margin-bottom: 1rem;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
}

.accordion-title {
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 1.5rem 2rem;
  background: none;
  border: none;
  font-size: 1.3rem;
  cursor: pointer;
  text-align: left;
}

.accordion-content {
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.4s ease;
  padding: 0 2rem;
}

.accordion-item.open .accordion-content {
  max-height: 500px;
  padding: 0 2rem 2rem;
}

.accordion-arrow { transition: transform 0.3s; }
.accordion-item.open .accordion-arrow { transform: rotate(180deg); }

.expertise-list {
  list-style: none;
  padding-left: 0;
}

.expertise-list li {
  padding: 0.5rem 0 0.5rem 2rem;
  position: relative;
}

.expertise-list li::before {
  content: '▸';
  position: absolute;
  left: 0.5rem;
  color: var(--accent-color);
}

/* Values */
.values-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
}

.value-card {
  text-align: center;
  padding: 2.5rem 2rem;
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
  transition: var(--transition);
}

.value-card:hover { transform: translateY(-10px); }

.value-icon { font-size: 3rem; margin-bottom: 1.5rem; }

/* Contact */
.contact-grid {
  display: grid;
  grid-template-columns: 1fr 1.5fr;
  gap: 4rem;
  max-width: 1000px;
  margin: 0 auto;
}

.contact-form {
  background-color: var(--bg-alt);
  padding: 2.5rem;
  border-radius: 8px;
}

.form-group { margin-bottom: 1.5rem; }

.form-group label {
  display: block;
  margin-bottom: 0.5rem;
  font-weight: 500;
}

.form-group input,
.form-group textarea {
  width: 100%;
  padding: 0.875rem;
  border: 2px solid var(--border-color);
  border-radius: 4px;
  font-family: var(--font-sans);
}

.form-group input:focus,
.form-group textarea:focus {
  outline: none;
  border-color: var(--accent-color);
}

/* Footer */
.footer {
  background-color: var(--primary-color);
  color: white;
  padding: 3rem 0 1.5rem;
  text-align: center;
}

.footer-bottom { padding-top: 2rem; }

/* Scroll Top */
.scroll-top {
  position: fixed;
  bottom: 2rem;
  right: 2rem;
  width: 50px;
  height: 50px;
  background-color: var(--accent-color);
  color: white;
  border: none;
  border-radius: 50%;
  font-size: 1.5rem;
  cursor: pointer;
  opacity: 0;
  visibility: hidden;
  transition: var(--transition);
  z-index: 999;
}

.scroll-top.visible {
  opacity: 1;
  visibility: visible;
}

/* Responsive */
@media (max-width: 768px) {
  .menu-toggle { display: flex; }

  .main-menu {
    position: fixed;
    top: 0;
    right: -100%;
    width: 70%;
    height: 100vh;
    background-color: white;
    padding: 5rem 2rem;
    transition: right 0.3s;
  }

  .main-menu.active { right: 0; }

  .main-menu ul {
    flex-direction: column;
    align-items: flex-start;
  }

  .hero h1 { font-size: 2.5rem; }
  .contact-grid { grid-template-columns: 1fr; }
  .cabinet-stats { grid-template-columns: 1fr; }
}
EOF

# Fichier JavaScript
echo -e "${GREEN}→${NC} Génération de main.js..."
cat > "$PROJECT_NAME/assets/js/main.js" << 'EOF'
(function() {
  'use strict';

  const menuToggle = document.querySelector('.menu-toggle');
  const mainMenu = document.querySelector('.main-menu');
  const scrollTopBtn = document.getElementById('scrollTop');
  const accordionItems = document.querySelectorAll('.accordion-item');

  // Menu mobile
  if (menuToggle && mainMenu) {
    menuToggle.addEventListener('click', function() {
      mainMenu.classList.toggle('active');
    });

    document.querySelectorAll('.main-menu a').forEach(link => {
      link.addEventListener('click', function() {
        mainMenu.classList.remove('active');
      });
    });
  }

  // Accordion
  accordionItems.forEach(item => {
    const title = item.querySelector('.accordion-title');
    title.addEventListener('click', function() {
      accordionItems.forEach(other => {
        if (other !== item) other.classList.remove('open');
      });
      item.classList.toggle('open');
    });
  });

  // Scroll to top
  window.addEventListener('scroll', function() {
    if (window.pageYOffset > 300) {
      scrollTopBtn.classList.add('visible');
    } else {
      scrollTopBtn.classList.remove('visible');
    }
  });

  scrollTopBtn.addEventListener('click', function() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  });

  // Smooth scroll
  document.querySelectorAll('a[href^="#"]').forEach(link => {
    link.addEventListener('click', function(e) {
      const href = this.getAttribute('href');
      if (href === '#' || href === '#!') return;

      const target = document.querySelector(href);
      if (target) {
        e.preventDefault();
        target.scrollIntoView({ behavior: 'smooth' });
      }
    });
  });

  console.log('✅ JB Avocate initialisé');
})();
EOF

# README.md
echo -e "${GREEN}→${NC} Génération du README.md..."
cat > "$PROJECT_NAME/README.md" << 'EOF'
# JB Avocate - Template Site Web

Template professionnel pour cabinet d'avocat, entièrement codé à la main avec HTML5, CSS3 et JavaScript vanilla.

## 📋 Caractéristiques

- **HTML5 sémantique** : Structure claire et accessible
- **CSS3 moderne** : Design sobre, élégant et responsive
- **JavaScript vanilla** : Interactions fluides sans dépendances
- **Mobile-first** : Optimisé pour tous les écrans
- **Performance** : Léger et rapide
- **Accessibilité** : Navigation au clavier, ARIA labels

## 🚀 Fonctionnalités

- Header sticky avec effet au scroll
- Menu mobile hamburger
- Accordéon pour les expertises
- Formulaire de contact
- Animations au scroll
- Bouton "retour en haut"
- Smooth scrolling
- Responsive design

## 📁 Structure du projet

```
jb-avocate/
├── index.html              # Page principale
├── assets/
│   ├── css/
│   │   └── style.css      # Styles
│   ├── js/
│   │   └── main.js        # Scripts
│   └── img/               # Images (à ajouter)
├── init.sh                # Script d'initialisation
└── README.md              # Documentation
```

## 🛠️ Installation

### Méthode 1 : Avec le script init.sh

```bash
chmod +x init.sh
./init.sh
```

### Méthode 2 : Manuel

Clonez simplement ce dépôt et ouvrez `index.html` dans votre navigateur.

## 📝 Personnalisation

### 1. Contenu

Modifiez `index.html` pour personnaliser :
- Nom du cabinet
- Coordonnées
- Expertises
- Actualités

### 2. Design

Dans `assets/css/style.css`, personnalisez les variables CSS :

```css
:root {
  --primary-color: #2c3e50;   /* Couleur principale */
  --accent-color: #3498db;    /* Couleur d'accent */
  --font-serif: 'Georgia';    /* Police titres */
}
```

### 3. Images

Ajoutez vos images dans `assets/img/` et mettez à jour les chemins dans le HTML.

## 🌐 Déploiement

### Netlify

1. Connectez votre dépôt GitHub
2. Configurez le build (pas de build nécessaire)
3. Déployez

### GitHub Pages

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin <votre-repo>
git push -u origin main
```

Activez GitHub Pages dans les paramètres du dépôt.

### Serveur classique

Uploadez simplement tous les fichiers via FTP/SFTP.

## 📱 Compatibilité

- Chrome (dernières versions)
- Firefox (dernières versions)
- Safari (dernières versions)
- Edge (dernières versions)
- Mobile iOS/Android

## 🔧 Technologies

- HTML5
- CSS3 (Grid, Flexbox, Variables CSS)
- JavaScript ES6+ (vanilla)

## 📄 Licence

Ce projet est libre d'utilisation pour vos projets personnels et commerciaux.

## 👤 Auteur

Développé pour Julia Basile - JB Avocate

## 🤝 Support

Pour toute question ou suggestion, n'hésitez pas à ouvrir une issue.

---

**Made with ❤️ by Claude Code**
EOF

# Créer un fichier .gitignore
echo -e "${GREEN}→${NC} Génération du .gitignore..."
cat > "$PROJECT_NAME/.gitignore" << 'EOF'
# OS
.DS_Store
Thumbs.db
desktop.ini

# Editors
.vscode/
.idea/
*.sublime-project
*.sublime-workspace

# Logs
*.log
npm-debug.log*

# Node (si ajouté plus tard)
node_modules/
package-lock.json
EOF

# Message de succès
echo -e "\n${GREEN}========================================${NC}"
echo -e "${GREEN}✓ Projet créé avec succès !${NC}"
echo -e "${GREEN}========================================${NC}\n"

echo -e "${BLUE}📁 Structure créée :${NC}"
echo -e "   ${PROJECT_NAME}/"
echo -e "   ├── index.html"
echo -e "   ├── assets/"
echo -e "   │   ├── css/style.css"
echo -e "   │   ├── js/main.js"
echo -e "   │   └── img/"
echo -e "   ├── .gitignore"
echo -e "   └── README.md"

echo -e "\n${YELLOW}📌 Prochaines étapes :${NC}\n"
echo -e "   1. ${BLUE}cd $PROJECT_NAME${NC}"
echo -e "   2. Ajouter vos images dans ${BLUE}assets/img/${NC}"
echo -e "   3. Ouvrir ${BLUE}index.html${NC} dans un navigateur"
echo -e "   4. Personnaliser le contenu\n"

echo -e "${GREEN}🚀 Pour lancer un serveur local :${NC}"
echo -e "   ${BLUE}python -m http.server 8000${NC}"
echo -e "   ou"
echo -e "   ${BLUE}php -S localhost:8000${NC}\n"

echo -e "${GREEN}✨ Bon développement !${NC}\n"
EOF

# Rendre le script exécutable
chmod +x "$PROJECT_NAME/init.sh"

<function_calls>
<invoke name="TodoWrite">
<parameter name="todos">[{"content": "Create project directory structure", "status": "completed", "activeForm": "Creating project directory structure"}, {"content": "Create index.html with semantic structure", "status": "completed", "activeForm": "Creating index.html with semantic structure"}, {"content": "Create style.css with elegant design", "status": "completed", "activeForm": "Creating style.css with elegant design"}, {"content": "Create main.js with interactive features", "status": "completed", "activeForm": "Creating main.js with interactive features"}, {"content": "Create init.sh automation script", "status": "completed", "activeForm": "Creating init.sh automation script"}, {"content": "Create README.md documentation", "status": "in_progress", "activeForm": "Creating README.md documentation"}]