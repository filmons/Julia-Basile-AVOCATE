# 📧 Guide de Configuration - Netlify Forms

**Pour**: Julia Basile - Site Avocate
**Date**: 7 novembre 2025

---

## 🎯 Objectif

Configurer les notifications par email pour recevoir automatiquement tous les messages envoyés via le formulaire de contact du site.

---

## ⚡ Configuration Rapide (5 minutes)

### Étape 1: Accéder à Netlify Dashboard

1. Aller sur: **https://app.netlify.com**
2. Se connecter avec votre compte Netlify
3. Sélectionner le site: **juli-basile-avocate**

### Étape 2: Accéder aux Formulaires

1. Dans le menu latéral gauche, cliquer sur: **Forms**
2. Vous devriez voir le formulaire: **contact** (créé automatiquement)
3. Cliquer sur le formulaire **contact** pour voir les détails

### Étape 3: Ajouter une Notification Email

1. Dans la page du formulaire, chercher: **Form notifications**
2. Cliquer sur: **Add notification**
3. Sélectionner: **Email notification**
4. Remplir:
   - **Email to notify**: `juliabasile.avocat@gmail.com`
   - **Event**: Form submission (par défaut)
5. Cliquer sur: **Save**

### Étape 4: Tester le Formulaire

1. Aller sur votre site: https://juli-basile-avocate.netlify.app/
2. Scroll jusqu'à la section **Contact**
3. Remplir le formulaire avec des données de test
4. Cliquer sur **Envoyer**
5. Vérifier:
   - Redirection vers page de confirmation ✅
   - Email reçu sur `juliabasile.avocat@gmail.com` ✅

---

## 📋 Ce Que Vous Recevrez par Email

À chaque soumission du formulaire, vous recevrez un email contenant:

```
From: team@netlify.com
Subject: New form submission from contact

Name: [Nom du visiteur]
Email: [Email du visiteur]
Phone: [Téléphone du visiteur]
Message: [Message du visiteur]

Submitted from: https://juli-basile-avocate.netlify.app/
Time: [Date et heure]
```

---

## 🛡️ Protection Anti-Spam

Le formulaire inclut déjà:

1. **Honeypot field** (champ caché)
   - Les bots remplissent ce champ et sont automatiquement rejetés
   - Invisible pour les vrais utilisateurs

2. **Netlify Spam Filtering**
   - Protection intégrée gratuite
   - Bloque les soumissions suspectes

---

## 📊 Limites du Plan Gratuit

### Plan Netlify Gratuit
- ✅ **100 soumissions/mois** incluses
- ✅ Notifications email illimitées
- ✅ Protection anti-spam
- ✅ Export des données
- ✅ Intégrations (Zapier, Slack, etc.)

### Si Vous Dépassez 100 Soumissions
Options:
1. **Upgrade vers Level 1** ($19/mois) → 1000 soumissions
2. **Upgrade vers Level 2** ($99/mois) → Illimité
3. **Alternative**: Utiliser un service tiers (FormSpree, etc.)

**Note**: 100 soumissions/mois = ~3 messages par jour, largement suffisant pour démarrer.

---

## 🔔 Notifications Avancées (Optionnel)

### Slack
Recevoir les soumissions dans un canal Slack:

1. Forms → Notifications → **Add notification**
2. Choisir: **Slack notification**
3. Connecter votre workspace Slack
4. Sélectionner le canal
5. Sauvegarder

### Webhook
Envoyer les données vers votre propre serveur:

1. Forms → Notifications → **Add notification**
2. Choisir: **Outgoing webhook**
3. Entrer l'URL de votre API: `https://your-api.com/webhook`
4. Choisir le format: JSON
5. Sauvegarder

### Zapier
Automatiser avec 3000+ apps:

1. Créer un compte Zapier: https://zapier.com
2. Créer un nouveau Zap
3. Trigger: **Netlify** → **New Form Submission**
4. Action: Choisir l'app (Gmail, Sheets, CRM, etc.)
5. Configurer l'automatisation

---

## 📥 Export des Données

### Exporter Toutes les Soumissions

1. Aller sur: **Forms** → **contact**
2. Cliquer sur: **Export to CSV**
3. Télécharger le fichier Excel/CSV

### Supprimer des Soumissions

1. Aller sur: **Forms** → **contact**
2. Cocher les soumissions à supprimer
3. Cliquer sur: **Delete selected**

---

## 🛠️ Troubleshooting

### Problème: Je ne reçois pas les emails

**Solutions:**

1. **Vérifier les spams**
   - Chercher dans dossier Spam/Indésirables
   - Ajouter `team@netlify.com` aux contacts

2. **Vérifier la configuration**
   - Forms → contact → Notifications
   - Email doit être: `juliabasile.avocat@gmail.com`
   - Status doit être: Active (vert)

3. **Tester avec un autre email**
   - Ajouter une 2ème notification avec un autre email
   - Soumettre le formulaire
   - Comparer les résultats

4. **Vérifier Netlify Status**
   - https://www.netlifystatus.com
   - S'assurer que le service Forms est opérationnel

### Problème: Le formulaire ne se soumet pas

**Solutions:**

1. **Vérifier la console du navigateur**
   - F12 → Console
   - Chercher les erreurs JavaScript

2. **Vérifier les attributs du formulaire**
   - `data-netlify="true"` doit être présent
   - `name="contact"` doit être présent
   - Voir `index.html` ligne 431

3. **Clear cache et recharger**
   - Ctrl+Shift+R (hard reload)
   - Ou mode navigation privée

### Problème: Spam excessif

**Solutions:**

1. **Activer reCAPTCHA** (recommandé si spam)
   - Ajouter au formulaire: `data-netlify-recaptcha="true"`
   - Ajouter dans le form: `<div data-netlify-recaptcha="true"></div>`
   - Netlify gère automatiquement l'intégration

2. **Analyser les soumissions**
   - Forms → contact → Voir les patterns
   - Bloquer IPs si nécessaire via Netlify

---

## 📞 Support Netlify

Si vous avez des problèmes:

1. **Documentation officielle**
   - https://docs.netlify.com/forms/setup/

2. **Community Forum**
   - https://answers.netlify.com

3. **Support Email**
   - support@netlify.com (réponse sous 24-48h)

4. **Twitter**
   - @Netlify

---

## ✅ Checklist de Vérification

Après configuration, vérifier:

- [ ] Email notification configurée sur `juliabasile.avocat@gmail.com`
- [ ] Status de la notification: **Active** (vert)
- [ ] Formulaire testé avec données réelles
- [ ] Email de confirmation reçu
- [ ] Page de succès s'affiche correctement (`contact-success.html`)
- [ ] Données visibles dans Netlify Dashboard (Forms → contact)
- [ ] Email `team@netlify.com` ajouté aux contacts (pas spam)

---

## 🎨 Personnalisation des Emails (Avancé)

Par défaut, les emails Netlify sont basiques. Pour personnaliser:

### Option 1: Utiliser un Service Tiers
- **SendGrid** (gratuit: 100 emails/jour)
- **Mailgun** (gratuit: 5000 emails/mois)
- Connecter via Webhook ou Zapier

### Option 2: Fonction Netlify (Requiert compte Pro)
Créer une fonction serverless pour formater les emails.

---

**Guide créé par**: Claude Code
**Dernière mise à jour**: 7 novembre 2025
