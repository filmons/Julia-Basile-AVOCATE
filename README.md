# 👩‍⚖️ Julia Basile - Site Officiel

Site web professionnel pour Julia Basile, avocate au barreau de Paris, spécialisée en droit pénal international, droits humains et compétence universelle.

**Site en production**: https://juli-basile-avocate.netlify.app/
**URL finale prévue**: https://www.jb-avocate.fr/

---

## 🚀 Démarrage Rapide

### Voir le Site
Visitez: **https://juli-basile-avocate.netlify.app/**

### Modifier le Contenu
1. Ouvrir `index.html`
2. Modifier le texte souhaité
3. Sauvegarder et pousser:
   ```bash
   git add .
   git commit -m "Mise à jour du contenu"
   git push origin main
   ```
4. Le site se met à jour automatiquement (1-2 min)

---

## 📚 Documentation

Toute la documentation se trouve dans le dossier [`docs/`](./docs/):

### Guides Essentiels
- **[ETAT_ACTUEL.md](./docs/ETAT_ACTUEL.md)** - État complet du site et fonctionnalités
- **[GUIDE_NETLIFY_FORMS.md](./docs/GUIDE_NETLIFY_FORMS.md)** - Configuration des emails du formulaire
- **[GUIDE_MODIFICATIONS.md](./docs/GUIDE_MODIFICATIONS.md)** - Comment modifier le contenu

### Documentation Technique
- **[CARTE_CONFIG.md](./docs/CARTE_CONFIG.md)** - Configuration de la carte Leaflet
- **[HERO_IMPROVEMENTS.md](./docs/HERO_IMPROVEMENTS.md)** - Améliorations du hero section
- **[IMAGES_GUIDE.md](./docs/IMAGES_GUIDE.md)** - Guide des images du site
- **[CHANGEMENTS.md](./docs/CHANGEMENTS.md)** - Historique des modifications

---

## ✨ Fonctionnalités

- ✅ **Design responsive** (desktop, tablet, mobile)
- ✅ **Formulaire de contact** avec Netlify Forms
- ✅ **Carte interactive** (Leaflet.js)
- ✅ **SEO optimisé** (Open Graph, Schema.org, sitemap)
- ✅ **5 domaines d'expertise** détaillés
- ✅ **Section actualités** avec articles
- ✅ **Animations** fluides et professionnelles
- ✅ **HTTPS** et **CDN** via Netlify

---

## 🛠️ Stack Technique

- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Carte**: Leaflet.js 1.9.4
- **Icônes**: Font Awesome 6.5.1
- **Animations**: AOS (Animate On Scroll)
- **Hébergement**: Netlify
- **Versioning**: Git + GitHub
- **Formulaires**: Netlify Forms

---

## 📞 Coordonnées

**Julia Basile - Avocate**
103 rue La Boétie
75008 Paris, France

**Téléphone**: +33 6 29 50 88 66
**Email**: juliabasile.avocat@gmail.com

---

## 🔧 Actions Requises

### 🚨 Urgent: Configuration Netlify Forms
Pour recevoir les emails du formulaire de contact:

1. Aller sur https://app.netlify.com
2. Site: **juli-basile-avocate** → **Forms** → **Notifications**
3. Ajouter: `juliabasile.avocat@gmail.com`

**Voir le guide complet**: [GUIDE_NETLIFY_FORMS.md](./docs/GUIDE_NETLIFY_FORMS.md)

### Recommandé
- [ ] Configurer Google Search Console
- [ ] Soumettre le sitemap: `https://www.jb-avocate.fr/sitemap.xml`
- [ ] Tester le partage social (Facebook, LinkedIn)
- [ ] Ajouter 2 articles réels dans Actualités

---

## 📁 Structure du Projet

```
jb-avocate/
├── index.html                  # Page principale
├── contact-success.html        # Page de confirmation formulaire
├── netlify.toml               # Configuration Netlify
├── robots.txt                 # Directives pour robots
├── sitemap.xml                # Plan du site (SEO)
├── assets/
│   ├── css/
│   │   └── style.css          # Tous les styles
│   ├── js/
│   │   └── main.js            # Scripts (carte, menu)
│   └── img/                   # Images
│       ├── Julia_Basile_logo.png
│       ├── julia-portrait.png
│       └── expertise-*.png/jpg
└── docs/                      # Documentation
    ├── ETAT_ACTUEL.md
    ├── GUIDE_NETLIFY_FORMS.md
    ├── GUIDE_MODIFICATIONS.md
    └── ...
```

---

## 🚀 Déploiement

### Automatique (Recommandé)
```bash
git add .
git commit -m "Description des modifications"
git push origin main
```
→ Netlify déploie automatiquement en 1-2 minutes

### Manuel (via Netlify Dashboard)
1. Dashboard → Deploys
2. Drag & drop du dossier projet
3. Attendre la fin du déploiement

---

## 📊 Performance

- ⚡ **Performance**: 95-100 (Lighthouse)
- ♿ **Accessibilité**: 90-95
- 🔒 **Sécurité**: HTTPS + Headers sécurisés
- 🔍 **SEO**: 95-100 (meta tags, sitemap, structured data)

---

## 🆘 Support

### Problème avec le Site
1. Consulter: [GUIDE_MODIFICATIONS.md](./docs/GUIDE_MODIFICATIONS.md)
2. Vérifier la console du navigateur (F12)
3. Revenir au déploiement précédent (Netlify Dashboard)

### Problème avec Git
```bash
git status              # Voir l'état
git log                 # Voir l'historique
git revert HEAD         # Annuler dernier commit
```

### Ressources
- **Documentation Netlify**: https://docs.netlify.com/
- **GitHub Repository**: https://github.com/filmons/Juli-Basile-AVOCATE
- **Netlify Status**: https://www.netlifystatus.com/

---

## 📝 Licence & Mentions

**Propriétaire**: Julia Basile
**Développement**: 2025
**Hébergement**: Netlify
**Code source**: Privé (GitHub)

---

## 🎯 Prochaines Étapes

- [ ] Configuration emails Netlify Forms
- [ ] Ajout de 2 articles réels dans Actualités
- [ ] Configuration Google Search Console
- [ ] Création des pages légales (mentions, RGPD)
- [ ] Tests de partage sur réseaux sociaux

**Pour plus de détails**: Voir [ETAT_ACTUEL.md](./docs/ETAT_ACTUEL.md)

---

**Dernière mise à jour**: 7 novembre 2025
**Version**: 1.0.0
