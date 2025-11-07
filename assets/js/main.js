/**
 * JB Avocate - JavaScript principal
 * Gestion du menu mobile et de l'accordéon vertical
 */

(function() {
  'use strict';

  // ========================================
  // Variables globales
  // ========================================
  const header = document.getElementById('header');
  const menuToggle = document.querySelector('.menu-toggle');
  const mainMenu = document.querySelector('.main-menu');
  const menuLinks = document.querySelectorAll('.main-menu a');
  const accordionItems = document.querySelectorAll('.accordion-item-vertical');
  const contactForm = document.querySelector('.contact-form');

  // ========================================
  // Menu Mobile Toggle
  // ========================================
  function initMobileMenu() {
    if (!menuToggle || !mainMenu) return;

    menuToggle.addEventListener('click', function(e) {
      e.stopPropagation();
      mainMenu.classList.toggle('active');
      this.classList.toggle('active');

      // Animation des barres du burger
      const spans = this.querySelectorAll('span');
      if (this.classList.contains('active')) {
        spans[0].style.transform = 'rotate(45deg) translate(7px, 7px)';
        spans[1].style.opacity = '0';
        spans[2].style.transform = 'rotate(-45deg) translate(7px, -7px)';
      } else {
        spans[0].style.transform = 'none';
        spans[1].style.opacity = '1';
        spans[2].style.transform = 'none';
      }
    });

    // Fermer le menu au clic sur un lien
    menuLinks.forEach(link => {
      link.addEventListener('click', function() {
        mainMenu.classList.remove('active');
        menuToggle.classList.remove('active');

        // Réinitialiser l'animation burger
        const spans = menuToggle.querySelectorAll('span');
        spans[0].style.transform = 'none';
        spans[1].style.opacity = '1';
        spans[2].style.transform = 'none';
      });
    });

    // Fermer le menu au clic en dehors
    document.addEventListener('click', function(e) {
      if (!mainMenu.contains(e.target) && !menuToggle.contains(e.target)) {
        mainMenu.classList.remove('active');
        menuToggle.classList.remove('active');

        const spans = menuToggle.querySelectorAll('span');
        spans[0].style.transform = 'none';
        spans[1].style.opacity = '1';
        spans[2].style.transform = 'none';
      }
    });
  }

  // ========================================
  // Accordéon Vertical (Expertises)
  // ========================================
  function initAccordionVertical() {
    if (!accordionItems.length) return;

    accordionItems.forEach(item => {
      const btn = item.querySelector('.accordion-btn');

      if (!btn) return;

      btn.addEventListener('click', function() {
        const isActive = item.classList.contains('active');

        // Fermer tous les autres accordéons
        accordionItems.forEach(otherItem => {
          if (otherItem !== item) {
            otherItem.classList.remove('active');
          }
        });

        // Toggle l'accordéon actuel
        if (isActive) {
          item.classList.remove('active');
        } else {
          item.classList.add('active');
        }
      });
    });
  }

  // ========================================
  // Header qui change au scroll
  // ========================================
  function initHeaderScroll() {
    if (!header) return;

    window.addEventListener('scroll', function() {
      if (window.pageYOffset > 100) {
        header.classList.add('scrolled');
      } else {
        header.classList.remove('scrolled');
      }
    });
  }

  // ========================================
  // Smooth Scroll pour les liens internes
  // ========================================
  function initSmoothScroll() {
    const links = document.querySelectorAll('a[href^="#"]');

    links.forEach(link => {
      link.addEventListener('click', function(e) {
        const href = this.getAttribute('href');

        // Ignorer les liens vides
        if (href === '#' || href === '#!') return;

        const target = document.querySelector(href);
        if (target) {
          e.preventDefault();

          const headerHeight = 80; // Hauteur du header fixe
          const targetPosition = target.offsetTop - headerHeight;

          window.scrollTo({
            top: targetPosition,
            behavior: 'smooth'
          });
        }
      });
    });
  }

  // ========================================
  // Formulaire de contact
  // ========================================
  function initContactForm() {
    if (!contactForm) return;

    contactForm.addEventListener('submit', function(e) {
      e.preventDefault();

      // Récupérer les valeurs
      const formData = {
        name: document.getElementById('name').value,
        firstname: document.getElementById('firstname').value,
        email: document.getElementById('email').value,
        phone: document.getElementById('phone').value,
        message: document.getElementById('message').value
      };

      // Validation basique
      if (!formData.name || !formData.firstname || !formData.email || !formData.message) {
        alert('Veuillez remplir tous les champs obligatoires.');
        return;
      }

      // Validation email
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailRegex.test(formData.email)) {
        alert('Veuillez entrer une adresse email valide.');
        return;
      }

      // Simuler l'envoi (à remplacer par une vraie requête AJAX)
      console.log('Données du formulaire:', formData);

      // Message de confirmation
      alert('Merci pour votre message ! Nous vous répondrons dans les plus brefs délais.');

      // Réinitialiser le formulaire
      contactForm.reset();

      // En production, utiliser fetch() ou XMLHttpRequest
      /*
      fetch('/api/contact', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(formData)
      })
      .then(response => response.json())
      .then(data => {
        alert('Message envoyé avec succès !');
        contactForm.reset();
      })
      .catch(error => {
        alert('Erreur lors de l\'envoi du message.');
        console.error('Error:', error);
      });
      */
    });
  }

  // ========================================
  // Animation d'apparition au scroll
  // ========================================
  function initScrollAnimations() {
    if (!('IntersectionObserver' in window)) return;

    const observerOptions = {
      threshold: 0.1,
      rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver(function(entries) {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.style.opacity = '1';
          entry.target.style.transform = 'translateY(0)';
        }
      });
    }, observerOptions);

    // Observer les éléments à animer
    const animatedElements = document.querySelectorAll('.split-content, .split-image, .accordion-item-vertical');

    animatedElements.forEach((element, index) => {
      element.style.opacity = '0';
      element.style.transform = 'translateY(30px)';
      element.style.transition = `opacity 0.6s ease ${index * 0.05}s, transform 0.6s ease ${index * 0.05}s`;
      observer.observe(element);
    });
  }

  // ========================================
  // Gestion du clavier (accessibilité)
  // ========================================
  function initKeyboardNavigation() {
    // Échap pour fermer le menu mobile
    document.addEventListener('keydown', function(e) {
      if (e.key === 'Escape' && mainMenu && mainMenu.classList.contains('active')) {
        mainMenu.classList.remove('active');
        menuToggle.classList.remove('active');

        const spans = menuToggle.querySelectorAll('span');
        spans[0].style.transform = 'none';
        spans[1].style.opacity = '1';
        spans[2].style.transform = 'none';
      }
    });

    // Navigation au clavier dans l'accordéon
    accordionItems.forEach(item => {
      const btn = item.querySelector('.accordion-btn');
      if (btn) {
        btn.addEventListener('keydown', function(e) {
          if (e.key === 'Enter' || e.key === ' ') {
            e.preventDefault();
            this.click();
          }
        });
      }
    });
  }

  // ========================================
  // Initialisation de la carte (Leaflet)
  // ========================================
  function initMap() {
    const mapElement = document.getElementById('map');
    if (!mapElement || typeof L === 'undefined') return;

    // Coordonnées de Paris (à remplacer par l'adresse réelle)
    const lat = 48.8566;
    const lng = 2.3522;

    // Créer la carte avec plus de zoom
    const map = L.map('map', {
      zoomControl: true,
      scrollWheelZoom: false
    }).setView([lat, lng], 16);

    // Utiliser CartoDB Voyager avec teinte bleue douce pour harmonie visuelle
    L.tileLayer('https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png', {
      attribution: '',
      maxZoom: 19,
      subdomains: 'abcd'
    }).addTo(map);

    // Créer l'icône principale du cabinet avec label permanent
    const mainIcon = L.divIcon({
      className: 'custom-marker-main',
      html: `
        <div style="display: flex; flex-direction: column; align-items: center; white-space: nowrap;">
          <div style="background-color: #6BA4D6; width: 45px; height: 45px; border-radius: 50%; border: 4px solid white; box-shadow: 0 6px 20px rgba(107, 164, 214, 0.6); display: flex; align-items: center; justify-content: center; z-index: 1000;">
            <svg width="22" height="22" viewBox="0 0 24 24" fill="white">
              <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
            </svg>
          </div>
          <div style="
            margin-top: 6px;
            background: linear-gradient(135deg, #6BA4D6 0%, #5A92C4 100%);
            padding: 6px 14px;
            border-radius: 6px;
            font-size: 13px;
            font-weight: 600;
            color: white;
            box-shadow: 0 4px 12px rgba(107, 164, 214, 0.4);
            border: 2px solid white;
            white-space: nowrap;
          ">Julia Basile - Avocate</div>
        </div>
      `,
      iconSize: [200, 80],
      iconAnchor: [100, 22]
    });

    // Ajouter le marqueur principal
    const mainMarker = L.marker([lat, lng], {
      icon: mainIcon,
      zIndexOffset: 1000
    }).addTo(map);

    // Popup optionnelle avec plus d'infos
    mainMarker.bindPopup('<div style="font-family: sans-serif; text-align: center; padding: 0.5rem;"><strong style="color: #6BA4D6; font-size: 1.1rem;">Julia Basile - Avocate</strong><br><span style="color: #7F8C8D; font-size: 0.9rem;">123 Avenue de la Justice<br>75008 Paris</span></div>');

    // Fonction pour créer une icône POI avec label
    function createPoiIcon(name) {
      return L.divIcon({
        className: 'poi-marker-with-label',
        html: `
          <div style="display: flex; flex-direction: column; align-items: center; white-space: nowrap;">
            <div style="background-color: rgba(120, 120, 120, 0.7); width: 20px; height: 20px; border-radius: 50%; border: 2px solid white; box-shadow: 0 2px 6px rgba(0,0,0,0.2); display: flex; align-items: center; justify-content: center;">
              <div style="width: 6px; height: 6px; background: white; border-radius: 50%;"></div>
            </div>
            <div style="
              margin-top: 4px;
              background: rgba(255, 255, 255, 0.95);
              padding: 3px 8px;
              border-radius: 4px;
              font-size: 11px;
              font-weight: 500;
              color: #555;
              box-shadow: 0 2px 6px rgba(0,0,0,0.15);
              border: 1px solid rgba(107, 164, 214, 0.2);
              max-width: 150px;
              overflow: hidden;
              text-overflow: ellipsis;
            ">${name}</div>
          </div>
        `,
        iconSize: [150, 60],
        iconAnchor: [75, 10]
      });
    }

    // Fetch des POI depuis Overpass API
    const radius = 1000; // 1km autour
    const overpassQuery = `
      [out:json][timeout:25];
      (
        node["tourism"="museum"](around:${radius},${lat},${lng});
        node["tourism"="attraction"](around:${radius},${lat},${lng});
        node["amenity"="theatre"](around:${radius},${lat},${lng});
        node["historic"="monument"](around:${radius},${lat},${lng});
        way["tourism"="museum"](around:${radius},${lat},${lng});
        way["tourism"="attraction"](around:${radius},${lat},${lng});
        way["amenity"="theatre"](around:${radius},${lat},${lng});
        way["historic"="monument"](around:${radius},${lat},${lng});
      );
      out center;
    `;

    const overpassUrl = 'https://overpass-api.de/api/interpreter';

    fetch(overpassUrl, {
      method: 'POST',
      body: overpassQuery
    })
    .then(response => response.json())
    .then(data => {
      // Ajouter les POI sur la carte
      data.elements.forEach(element => {
        const poiLat = element.lat || (element.center && element.center.lat);
        const poiLng = element.lon || (element.center && element.center.lon);

        if (poiLat && poiLng) {
          const name = element.tags.name || 'Lieu d\'intérêt';
          const type = element.tags.tourism || element.tags.historic || element.tags.amenity || 'Monument';

          // Créer le marqueur POI avec label permanent
          const poiMarker = L.marker([poiLat, poiLng], {
            icon: createPoiIcon(name),
            zIndexOffset: 100
          }).addTo(map);

          // Popup optionnelle avec plus de détails
          poiMarker.bindPopup(`<div style="font-family: sans-serif; padding: 0.3rem;"><strong style="color: #6BA4D6; font-size: 0.9rem;">${name}</strong><br><span style="color: #999; font-size: 0.75rem; text-transform: capitalize;">${type}</span></div>`);
        }
      });

      console.log(`✅ ${data.elements.length} lieux importants ajoutés autour du cabinet`);
    })
    .catch(error => {
      console.log('Info: Impossible de charger les POI (pas de connexion ou API indisponible)');
    });
  }

  // ========================================
  // Détection du chargement de la page
  // ========================================
  function initPageLoad() {
    // Vérifier si on arrive avec une ancre
    if (window.location.hash) {
      setTimeout(() => {
        const target = document.querySelector(window.location.hash);
        if (target) {
          const headerHeight = 80;
          const targetPosition = target.offsetTop - headerHeight;
          window.scrollTo({
            top: targetPosition,
            behavior: 'smooth'
          });
        }
      }, 100);
    }
  }

  // ========================================
  // Initialisation AOS (Animate On Scroll)
  // ========================================
  function initAOS() {
    if (typeof AOS !== 'undefined') {
      AOS.init({
        duration: 1000,
        easing: 'ease-out-cubic',
        once: true,
        offset: 100,
        delay: 100
      });
    }
  }

  // ========================================
  // Année dynamique dans le footer
  // ========================================
  function initDynamicYear() {
    const yearElement = document.getElementById('current-year');
    if (yearElement) {
      yearElement.textContent = new Date().getFullYear();
    }
  }

  // ========================================
  // Initialisation au chargement du DOM
  // ========================================
  function init() {
    initMobileMenu();
    initHeaderScroll();
    initAccordionVertical();
    initSmoothScroll();
    initContactForm();
    initScrollAnimations();
    initKeyboardNavigation();
    initDynamicYear();
    initPageLoad();
    initAOS();

    // Initialiser la carte après un petit délai pour s'assurer que Leaflet est chargé
    setTimeout(initMap, 300);

    console.log('✅ JB Avocate - Site initialisé avec succès');
  }

  // Lancer l'initialisation quand le DOM est prêt
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }

  // ========================================
  // Gestion du redimensionnement
  // ========================================
  let resizeTimer;
  window.addEventListener('resize', function() {
    clearTimeout(resizeTimer);
    resizeTimer = setTimeout(function() {
      // Fermer le menu mobile si on agrandit l'écran
      if (window.innerWidth > 768 && mainMenu) {
        mainMenu.classList.remove('active');
        if (menuToggle) {
          menuToggle.classList.remove('active');
          const spans = menuToggle.querySelectorAll('span');
          spans[0].style.transform = 'none';
          spans[1].style.opacity = '1';
          spans[2].style.transform = 'none';
        }
      }
    }, 250);
  });

})();
