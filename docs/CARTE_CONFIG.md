# Configuration de la Carte Interactive

## 📍 Carte actuelle

Le site utilise **Leaflet.js** avec **OpenStreetMap** - une solution **100% gratuite** et sans clé API !

### Avantages :
- ✅ Pas besoin de compte Google
- ✅ Pas de facturation
- ✅ Open source
- ✅ Performances excellentes

---

## 🎯 Comment changer l'adresse sur la carte

### Étape 1 : Obtenir les coordonnées GPS

1. Va sur [OpenStreetMap](https://www.openstreetmap.org/)
2. Cherche ton adresse : **123 Avenue de la Justice, 75008 Paris**
3. Clique sur l'emplacement exact
4. Dans l'URL, tu verras quelque chose comme : `#map=17/48.8566/2.3522`
5. Note les coordonnées : **48.8566** (latitude) et **2.3522** (longitude)

### Étape 2 : Modifier le code

Ouvre `assets/js/main.js` et trouve la fonction `initMap()` (ligne ~273) :

```javascript
// Coordonnées de Paris (à remplacer par l'adresse réelle)
const lat = 48.8566;  // ⬅️ Remplace par ta latitude
const lng = 2.3522;   // ⬅️ Remplace par ta longitude
```

Remplace par tes vraies coordonnées :

```javascript
const lat = 48.8566;  // Remplace par ta latitude
const lng = 2.3522;   // Remplace par ta longitude
```

### Étape 3 : Changer le texte de la popup

Plus bas dans la même fonction :

```javascript
marker.bindPopup('<strong>Julia Basile - Avocate</strong><br>123 Avenue de la Justice<br>75008 Paris');
```

Remplace par ta vraie adresse !

---

## 🎨 Personnalisation avancée

### Changer le niveau de zoom

```javascript
const map = L.map('map').setView([lat, lng], 15);  // 15 = zoom moyen
```

Valeurs possibles :
- `13` : Vue large du quartier
- `15` : Vue moyenne (par défaut)
- `17` : Vue rapprochée de la rue

### Changer la couleur du marqueur

Dans la fonction `initMap()` :

```javascript
const blueIcon = L.divIcon({
  className: 'custom-marker',
  html: '<div style="background-color: #6BA4D6; ..."></div>',  // ⬅️ Change la couleur ici
  // ...
});
```

---

## 🌐 Alternative : Google Maps

Si tu préfères utiliser Google Maps, tu auras besoin d'une clé API :

### Étape 1 : Obtenir une clé API Google Maps

1. Va sur [Google Cloud Console](https://console.cloud.google.com/)
2. Crée un projet
3. Active l'API "Maps JavaScript API"
4. Crée une clé API
5. **Important :** Restreins ta clé pour éviter les abus

### Étape 2 : Remplacer Leaflet par Google Maps

Dans `index.html`, remplace :

```html
<!-- Remplace Leaflet par Google Maps -->
<script src="https://maps.googleapis.com/maps/api/js?key=TA_CLE_API_ICI"></script>
```

Et modifie le JavaScript en conséquence (Google Maps a une API différente).

---

## ✅ Réseaux sociaux

N'oublie pas de mettre à jour les liens dans `index.html` :

```html
<!-- Ligne 235 : LinkedIn -->
<a href="https://www.linkedin.com/in/julia-basile" ...>

<!-- Ligne 241 : Twitter/X -->
<a href="https://twitter.com/juliabasile" ...>

<!-- Ligne 247 : Email -->
<a href="mailto:contact@jb-avocate.fr" ...>
```

### Autres réseaux possibles pour avocat :

Tu peux ajouter :
- **Viadeo** (réseau professionnel français)
- **Medium** (si elle écrit des articles)
- **YouTube** (si elle fait des vidéos explicatives)

---

## 🐛 Dépannage

### La carte ne s'affiche pas ?

1. Vérifie que tu as une connexion Internet (Leaflet charge les tuiles en ligne)
2. Ouvre la console du navigateur (F12) pour voir les erreurs
3. Vérifie que Leaflet.js est bien chargé

### Le marqueur n'est pas au bon endroit ?

1. Vérifie les coordonnées GPS (latitude/longitude)
2. Assure-toi de ne pas inverser lat/lng
3. Format : `[latitude, longitude]` - toujours dans cet ordre !

---

**Carte configurée avec succès ! 🗺️**
