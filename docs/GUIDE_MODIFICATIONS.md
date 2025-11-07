# ✏️ Guide de Modification du Contenu

**Pour**: Julia Basile - Site Avocate
**Niveau**: Débutant à Intermédiaire

---

## 🎯 Comment Modifier le Site

Ce guide explique comment modifier le contenu du site sans connaissances techniques approfondies.

---

## 📝 Modifications Simples (Sans Code)

### Changer les Coordonnées

**Fichier**: `index.html`

**Où chercher**: Ctrl+F (ou Cmd+F sur Mac) et rechercher:
- Pour l'adresse: `103 rue La Boétie`
- Pour le téléphone: `+33 6 29 50 88 66`
- Pour l'email: `juliabasile.avocat@gmail.com`

**Nombre d'occurrences**:
- Adresse: ~5 endroits (footer, contact, carte, meta tags, Schema.org)
- Téléphone: ~4 endroits
- Email: ~4 endroits

**Important**: Modifier TOUTES les occurrences pour cohérence.

---

### Modifier un Article d'Actualité

**Fichier**: `index.html`

**Chercher**: `<!-- Article 2 -->` ou `<!-- Article 3 -->`

**Structure d'un article**:
```html
<div class="actualite-card">
  <!-- Badge catégorie -->
  <span class="actualite-badge badge-penal">Droit Pénal</span>

  <!-- Source -->
  <p class="actualite-source">Vanity Fair</p>

  <!-- Titre -->
  <h3 class="actualite-title">
    Titre de l'article
  </h3>

  <!-- Extrait -->
  <div class="actualite-excerpt">
    <p>Premier paragraphe...</p>
    <p>Deuxième paragraphe...</p>
  </div>

  <!-- Lien -->
  <a href="URL_ARTICLE" class="actualite-link" target="_blank">
    Lire l'article →
  </a>
</div>
```

**Catégories de badge disponibles**:
- `badge-penal` → Rouge (Droit Pénal)
- `badge-international` → Bleu (Droit International)
- `badge-humains` → Orange (Droits Humains)
- `badge-fiscal` → Vert (Droit Fiscal)

---

### Modifier le Texte de Présentation (Cabinet)

**Fichier**: `index.html`

**Chercher**: `<section id="cabinet" class="section-split">`

**Structure**:
```html
<div class="split-content">
  <h2>Le Cabinet</h2>

  <p>Premier paragraphe...</p>
  <p>Deuxième paragraphe...</p>
  <p>Troisième paragraphe...</p>
</div>
```

**Note**: Conserver les balises `<p>` pour chaque paragraphe.

---

### Modifier une Expertise

**Fichier**: `index.html`

**Chercher**: Nom de l'expertise (ex: `Droit pénal international`)

**Structure**:
```html
<div class="accordion-item-vertical">
  <button class="accordion-btn">
    Titre de l'expertise
    <span class="accordion-icon">+</span>
  </button>

  <div class="accordion-panel">
    <div class="accordion-panel-content">
      <div class="accordion-image">
        <img src="assets/img/expertise-penal.png" alt="...">
      </div>
      <div class="accordion-text">
        <p>Paragraphe 1...</p>
        <p>Paragraphe 2...</p>
      </div>
    </div>
  </div>
</div>
```

---

## 🎨 Modifications de Style

### Changer les Couleurs

**Fichier**: `assets/css/style.css`

**Chercher**: `:root {` (début du fichier)

**Variables disponibles**:
```css
:root {
  --primary-blue: #6BA4D6;      /* Bleu principal */
  --light-blue: #D5E8F7;        /* Bleu clair */
  --dark-text: #2C3E50;         /* Texte foncé */
  --light-text: #7F8C8D;        /* Texte gris */
  --white: #FFFFFF;             /* Blanc */
  --bg-light: #F8F9FA;          /* Fond clair */
}
```

**Exemple**: Changer le bleu principal
```css
--primary-blue: #3498DB;  /* Nouveau bleu */
```

Tous les éléments bleus du site changeront automatiquement.

---

### Modifier les Espacements

**Fichier**: `assets/css/style.css`

**Pour les sections principales**, chercher:
```css
.section-split {
  padding: 8rem 0;  /* 8rem = haut/bas */
}
```

**Valeurs recommandées**:
- Desktop: `6rem` à `10rem`
- Mobile (768px): `3rem` à `5rem`
- Petit mobile (480px): `2rem` à `4rem`

---

## 🖼️ Gestion des Images

### Remplacer une Image

1. **Préparer l'image**:
   - Format: PNG, JPG, ou WebP
   - Taille recommandée: Max 1920px de largeur
   - Poids: < 500 KB (compresser si nécessaire)

2. **Uploader l'image**:
   - Placer dans: `assets/img/`
   - Nom: descriptif (ex: `julia-portrait-2024.png`)

3. **Modifier le HTML**:
   ```html
   <!-- Avant -->
   <img src="assets/img/julia-portrait.png" alt="Julia Basile">

   <!-- Après -->
   <img src="assets/img/julia-portrait-2024.png" alt="Julia Basile">
   ```

### Ajouter une Nouvelle Image

1. Placer l'image dans `assets/img/`
2. Ajouter dans le HTML:
   ```html
   <img src="assets/img/nom-image.png" alt="Description">
   ```

**Important**: Toujours remplir l'attribut `alt` pour SEO et accessibilité.

---

## 🔗 Modifier les Liens Sociaux

**Fichier**: `index.html`

**Chercher**: `<section class="section-social">`

**Structure**:
```html
<a href="VOTRE_URL_LINKEDIN" target="_blank" rel="noopener noreferrer">
  <!-- Icône SVG -->
  <span>LinkedIn</span>
</a>
```

**Remplacer**:
- `VOTRE_URL_LINKEDIN` par: `https://www.linkedin.com/in/votre-profil/`
- `VOTRE_URL_TWITTER` par: `https://twitter.com/votre-compte`

---

## 📍 Modifier l'Adresse sur la Carte

**Fichier**: `assets/js/main.js`

**Chercher**: `const cabinetCoordinates =`

**Structure**:
```javascript
// Coordonnées du cabinet (Julia Basile)
const cabinetCoordinates = [48.8739, 2.3117]; // [latitude, longitude]
```

**Comment trouver les coordonnées**:
1. Aller sur: https://www.google.com/maps
2. Chercher votre adresse
3. Clic droit sur le marqueur → Copier les coordonnées
4. Format: `48.8739, 2.3117`

**Modifier le popup**:
```javascript
mainMarker.bindPopup(`
  <div style="...">
    <strong>Julia Basile - Avocate</strong><br>
    <span>NOUVELLE ADRESSE<br>CODE POSTAL VILLE</span>
  </div>
`);
```

---

## 🚀 Déployer les Modifications

### Méthode 1: Via Git (Recommandée)

```bash
# 1. Ajouter les fichiers modifiés
git add .

# 2. Créer un commit avec message
git commit -m "Description des modifications"

# 3. Pousser vers GitHub
git push origin main
```

Le site sera automatiquement mis à jour sur Netlify (1-2 minutes).

### Méthode 2: Via Netlify Dashboard (Drag & Drop)

1. Aller sur: https://app.netlify.com
2. Sélectionner le site: **juli-basile-avocate**
3. Onglet: **Deploys**
4. Glisser-déposer le dossier du projet
5. Attendre la fin du déploiement

---

## ⚠️ Bonnes Pratiques

### Avant de Modifier

1. **Faire une sauvegarde**
   ```bash
   git commit -am "Backup avant modifications"
   git push
   ```

2. **Tester localement** (si possible)
   - Ouvrir `index.html` dans le navigateur
   - Vérifier que tout fonctionne

3. **Modifier une chose à la fois**
   - Plus facile de trouver les erreurs
   - Commits Git plus clairs

### Pendant la Modification

1. **Conserver l'indentation**
   - Facilite la lecture du code
   - Évite les erreurs

2. **Ne pas supprimer les balises de fermeture**
   ```html
   <!-- Correct -->
   <div class="container">
     <p>Texte</p>
   </div>

   <!-- Incorrect -->
   <div class="container">
     <p>Texte
   <!-- Manque </p> et </div> -->
   ```

3. **Vérifier les guillemets**
   ```html
   <!-- Correct -->
   <a href="https://example.com">Lien</a>

   <!-- Incorrect -->
   <a href="https://example.com>Lien</a>
   <!-- Manque un guillemet après .com -->
   ```

### Après la Modification

1. **Vérifier sur tous les écrans**
   - Desktop (1920px, 1440px)
   - Tablet (768px)
   - Mobile (480px, 360px)

2. **Tester les liens**
   - Cliquer sur tous les liens modifiés
   - Vérifier qu'ils ouvrent les bonnes pages

3. **Vérifier le formulaire**
   - Soumettre un test
   - Confirmer la réception de l'email

---

## 🆘 En Cas de Problème

### Le site ne s'affiche plus correctement

1. **Vérifier la console du navigateur**
   - F12 → Console
   - Chercher les erreurs en rouge

2. **Revenir à la version précédente** (Git)
   ```bash
   git log  # Voir l'historique
   git revert HEAD  # Annuler le dernier commit
   git push
   ```

3. **Revenir à un déploiement précédent** (Netlify)
   - Dashboard → Deploys
   - Trouver un déploiement qui fonctionnait
   - Cliquer sur **Publish deploy**

### Une balise HTML est cassée

**Symptômes**:
- Mise en page décalée
- Éléments qui disparaissent
- Couleurs incorrectes

**Solution**:
1. Utiliser un validateur HTML: https://validator.w3.org/
2. Copier-coller votre HTML
3. Corriger les erreurs signalées

### Le CSS ne s'applique pas

**Vérifier**:
1. Nom de la classe CSS correct
2. Fichier `style.css` bien modifié
3. Cache du navigateur (Ctrl+Shift+R pour hard reload)

---

## 📚 Ressources Utiles

### Apprendre HTML/CSS
- **MDN Web Docs**: https://developer.mozilla.org/fr/
- **W3Schools**: https://www.w3schools.com/
- **Codecademy**: https://www.codecademy.com/ (cours interactifs)

### Outils
- **Validateur HTML**: https://validator.w3.org/
- **Validateur CSS**: https://jigsaw.w3.org/css-validator/
- **Compresseur d'images**: https://tinypng.com/
- **Générateur de couleurs**: https://coolors.co/

### Aide
- **Stack Overflow**: https://stackoverflow.com/ (questions techniques)
- **GitHub Issues**: Créer un issue dans le repository
- **Documentation Netlify**: https://docs.netlify.com/

---

**Guide créé par**: Claude Code
**Dernière mise à jour**: 7 novembre 2025
