# Guide des Images - JB Avocate

## 📸 Images nécessaires pour le site

### 1. Image de fond du Hero (Page d'accueil)

**Fichier requis :** `assets/img/hero-background.jpg`

**Caractéristiques recommandées :**
- Format : JPG ou PNG
- Dimensions minimales : 1920 x 1080 px
- Poids : Optimisé (max 500 KB pour de bonnes performances)
- Style : Photo professionnelle, sobre, avec un bon contraste
- Exemples : Bureau d'avocat, bibliothèque juridique, palais de justice, etc.

**Comment l'ajouter :**
```bash
# Placez votre image dans le dossier
cp votre-image.jpg assets/img/hero-background.jpg
```

**Note importante :** Un overlay (filtre bleu transparent) sera automatiquement appliqué sur l'image pour :
- Améliorer la lisibilité du texte blanc
- Respecter l'identité visuelle du site (couleur bleue)
- Créer une ambiance professionnelle

### 2. Logo (déjà présent)

**Fichier actuel :** `assets/img/Julia_Basile_logo.png` ✅

### 3. Photo portrait (déjà présente)

**Fichier actuel :** `assets/img/julia-portrait.png` ✅

Utilisée dans :
- Section "Le cabinet" (à droite du texte)

### 4. Images pour les expertises (accordéon)

**Fichiers à ajouter :** (optionnels)
```
assets/img/expertise-penal.jpg
assets/img/expertise-universelle.jpg
assets/img/expertise-droits-humains.jpg
assets/img/expertise-penal-general.jpg
assets/img/expertise-asile.jpg
```

**Dimensions recommandées :** 600 x 400 px

---

## 🎨 Alternatives pour l'image de fond du Hero

### Option 1 : Utiliser une couleur de fond (sans image)

Si vous n'avez pas d'image, vous pouvez utiliser un fond dégradé. Dans `assets/css/style.css`, modifiez :

```css
.hero-fullscreen {
  /* Commentez cette ligne */
  /* background-image: url('../img/hero-background.jpg'); */

  /* Et décommentez celle-ci */
  background: linear-gradient(135deg, #6BA4D6 0%, #2C3E50 100%);
}
```

### Option 2 : Utiliser une image libre de droits

Sites recommandés pour trouver des images professionnelles gratuites :
- [Unsplash](https://unsplash.com/) - Mots-clés : "law", "lawyer", "justice", "office"
- [Pexels](https://www.pexels.com/)
- [Pixabay](https://pixabay.com/)

**Recherches suggérées :**
- "law office"
- "courthouse"
- "legal books"
- "justice building"
- "lawyer workspace"

---

## 🚀 Commandes rapides

### Vérifier les images présentes
```bash
ls -lh assets/img/
```

### Optimiser une image (si elle est trop lourde)
Utilisez un outil en ligne comme :
- [TinyPNG](https://tinypng.com/)
- [Squoosh](https://squoosh.app/)

### Convertir une image en JPG (si nécessaire)
```bash
convert votre-image.png hero-background.jpg
```

---

## 📋 Checklist des images

- [x] Logo du header : `Julia_Basile_logo.png`
- [x] Photo portrait : `julia-portrait.png`
- [ ] **Image de fond hero : `hero-background.jpg`** ⬅️ À AJOUTER
- [ ] Images des expertises (optionnel)

---

## 💡 Conseils

1. **Pour le hero :** Choisissez une image sobre et professionnelle. Le texte blanc "Julia Basile" doit rester bien lisible.

2. **Optimisation :** Compressez toujours vos images avant de les ajouter au site pour améliorer les temps de chargement.

3. **Cohérence visuelle :** Toutes les images doivent respecter le même ton professionnel et élégant.

---

**Besoin d'aide ?** Consultez le README.md principal pour plus d'informations sur le projet.
