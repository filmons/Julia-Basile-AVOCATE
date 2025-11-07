# JB Avocate - Template Site Web Professionnel

Template complet pour cabinet d'avocat, entièrement développé à la main avec HTML5, CSS3 et JavaScript vanilla. Design sobre, élégant et professionnel.

## ✨ Aperçu

Site web moderne et responsive pour cabinet d'avocat avec toutes les sections essentielles :
- Page d'accueil avec hero section
- Présentation du cabinet
- Domaines d'expertise (avec accordéon interactif)
- Valeurs du cabinet
- Actualités juridiques
- Formulaire de contact

## 📋 Caractéristiques principales

### Design & UX
- **Design sobre et professionnel** : Typographie élégante, palette de couleurs raffinée
- **Responsive** : Adapté à tous les écrans (mobile, tablette, desktop)
- **Mobile-first** : Menu hamburger, navigation optimisée
- **Animations fluides** : Transitions et effets au scroll
- **Accessibilité** : Navigation clavier, ARIA labels, contraste optimisé

### Fonctionnalités
- Header sticky avec effet au scroll
- Menu mobile avec animation hamburger
- Accordéon pour les expertises juridiques
- Formulaire de contact avec validation
- Statistiques animées (compteurs)
- Bouton "retour en haut"
- Smooth scrolling entre les sections
- Lazy loading des images

### Technique
- **HTML5 sémantique** : Structure claire et SEO-friendly
- **CSS3 moderne** : Grid, Flexbox, Variables CSS, Animations
- **JavaScript vanilla** : Aucune dépendance, code optimisé
- **Performance** : Code léger et rapide
- **Maintenable** : Code commenté et bien structuré

## 📁 Structure du projet

```
jb-avocate/
├── index.html              # Page HTML principale
├── assets/
│   ├── css/
│   │   └── style.css      # Styles CSS complets
│   ├── js/
│   │   └── main.js        # Scripts JavaScript
│   └── img/               # Dossier pour vos images
├── init.sh                # Script d'initialisation automatique
└── README.md              # Documentation (ce fichier)
```

## 🚀 Installation

### Méthode 1 : Avec le script init.sh (recommandé)

Pour créer un nouveau projet à partir de zéro :

```bash
# Rendre le script exécutable
chmod +x init.sh

# Lancer le script
./init.sh
```

Le script vous demandera le nom du projet et créera automatiquement toute la structure.

### Méthode 2 : Utilisation directe

Si vous avez déjà cloné ce projet :

```bash
# Ouvrir directement le fichier HTML
open index.html

# Ou lancer un serveur local
python -m http.server 8000
# Puis ouvrir http://localhost:8000
```

## 🎨 Personnalisation

### 1. Modifier le contenu

Éditez `index.html` pour personnaliser :

- **Nom du cabinet** : Ligne 15
- **Menu de navigation** : Lignes 22-28
- **Hero section** : Lignes 35-40
- **Présentation du cabinet** : Lignes 46-70
- **Expertises** : Lignes 79-150 (accordéon)
- **Coordonnées** : Lignes 200-220

### 2. Personnaliser les couleurs

Dans `assets/css/style.css`, modifiez les variables CSS (lignes 7-16) :

```css
:root {
  --primary-color: #2c3e50;    /* Couleur principale (bleu foncé) */
  --accent-color: #3498db;     /* Couleur d'accent (bleu clair) */
  --text-color: #2c3e50;       /* Couleur du texte */
  --text-light: #7f8c8d;       /* Texte secondaire */
  --bg-color: #ffffff;         /* Fond principal */
  --bg-alt: #f8f9fa;          /* Fond alternatif */
}
```

### 3. Changer les polices

Modifiez les variables de police dans `style.css` :

```css
:root {
  --font-serif: 'Georgia', 'Times New Roman', serif;
  --font-sans: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}
```

Pour utiliser Google Fonts, ajoutez dans le `<head>` de `index.html` :

```html
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
```

### 4. Ajouter des images

1. Placez vos images dans `assets/img/`
2. Référencez-les dans le HTML :

```html
<img src="assets/img/votre-image.jpg" alt="Description">
```

## 🌐 Déploiement

### Option 1 : Netlify (recommandé)

1. Créez un compte sur [Netlify](https://www.netlify.com/)
2. Glissez-déposez le dossier du projet
3. Votre site est en ligne !

### Option 2 : GitHub Pages

```bash
# Initialiser Git
git init
git add .
git commit -m "Initial commit"

# Créer un dépôt sur GitHub puis
git remote add origin https://github.com/votre-username/jb-avocate.git
git branch -M main
git push -u origin main

# Activer GitHub Pages dans Settings > Pages
```

### Option 3 : Serveur classique (FTP/SFTP)

Uploadez tous les fichiers via FileZilla ou votre client FTP préféré vers votre hébergement web.

### Option 4 : Vercel

```bash
npm i -g vercel
vercel
```

## 🔧 Développement local

### Serveur HTTP simple

**Python 3 :**
```bash
python -m http.server 8000
```

**Python 2 :**
```bash
python -m SimpleHTTPServer 8000
```

**PHP :**
```bash
php -S localhost:8000
```

**Node.js (avec http-server) :**
```bash
npx http-server -p 8000
```

Puis ouvrez : `http://localhost:8000`

## 📱 Compatibilité navigateurs

- ✅ Chrome (dernières versions)
- ✅ Firefox (dernières versions)
- ✅ Safari (dernières versions)
- ✅ Edge (dernières versions)
- ✅ Mobile iOS Safari
- ✅ Mobile Android Chrome

## 💡 Conseils d'utilisation

### Pour le référencement (SEO)

1. **Ajoutez des balises meta** dans le `<head>` :

```html
<meta name="description" content="Votre description ici">
<meta name="keywords" content="avocat, droit pénal, droit de la famille">
<meta property="og:title" content="JB Avocate">
<meta property="og:image" content="assets/img/og-image.jpg">
```

2. **Optimisez les images** : Compressez-les avec [TinyPNG](https://tinypng.com/)

3. **Créez un sitemap.xml** et un **robots.txt**

### Pour améliorer les performances

1. **Minifier CSS/JS** avec des outils en ligne
2. **Optimiser les images** (WebP, lazy loading)
3. **Activer la compression Gzip** sur le serveur
4. **Utiliser un CDN** pour les assets

### Pour ajouter un blog

Créez de nouveaux fichiers HTML dans un dossier `blog/` :

```
jb-avocate/
├── blog/
│   ├── article-1.html
│   └── article-2.html
```

## 🔐 Formulaire de contact

Le formulaire actuel utilise une validation JavaScript côté client. Pour le rendre fonctionnel :

### Option 1 : Service tiers (simple)

Utilisez [Formspree](https://formspree.io/) :

```html
<form action="https://formspree.io/f/votre-id" method="POST">
  <!-- vos champs -->
</form>
```

### Option 2 : Backend PHP

Créez `contact.php` :

```php
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $message = htmlspecialchars($_POST['message']);

    $to = "contact@jb-avocate.fr";
    $subject = "Nouveau message depuis le site";
    $body = "Nom: $name\nEmail: $email\nMessage: $message";

    mail($to, $subject, $body);
    echo "Message envoyé !";
}
?>
```

## 📚 Documentation du code

### Structure HTML

- **Sections sémantiques** : `<header>`, `<main>`, `<section>`, `<footer>`
- **ARIA labels** pour l'accessibilité
- **Classes BEM** pour une meilleure organisation

### Organisation CSS

- Variables CSS globales
- Mobile-first (media queries en fin de fichier)
- Animations et transitions fluides
- Grid et Flexbox pour le layout

### JavaScript

Fonctions principales dans `main.js` :

- `initMobileMenu()` : Gestion du menu hamburger
- `initAccordion()` : Accordéon des expertises
- `initScrollToTop()` : Bouton retour en haut
- `initSmoothScroll()` : Navigation fluide
- `initContactForm()` : Validation du formulaire
- `initScrollAnimations()` : Animations au scroll

## 🛠️ Technologies utilisées

- **HTML5** : Sémantique, accessibilité
- **CSS3** : Grid, Flexbox, Variables, Animations, Media Queries
- **JavaScript ES6+** : Vanilla JS (pas de framework)
- **Responsive Design** : Mobile-first approach

## 📝 Licence

Ce projet est libre d'utilisation pour vos projets personnels et commerciaux.

## 👨‍💻 Auteur

Développé avec ❤️ par **Claude Code** pour **Julia Basile - JB Avocate**

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à :

1. Fork le projet
2. Créer une branche (`git checkout -b feature/amelioration`)
3. Commit vos changements (`git commit -m 'Ajout nouvelle fonctionnalité'`)
4. Push vers la branche (`git push origin feature/amelioration`)
5. Ouvrir une Pull Request

## 🐛 Signaler un bug

Ouvrez une issue sur GitHub avec :
- Description du problème
- Navigateur et version
- Étapes pour reproduire
- Captures d'écran si possible

## 📞 Support

Pour toute question ou suggestion :
- Ouvrez une issue sur GitHub
- Email : support@example.com

## 🎉 Remerciements

Merci d'utiliser ce template ! N'hésitez pas à le partager et à laisser une étoile ⭐ sur GitHub si vous l'avez trouvé utile.

---

**Fait avec 🤖 Claude Code et beaucoup de ☕**

*Dernière mise à jour : 2024*
