# TP1 - Hello World Flutter 🐦

Une application Flutter simple à deux pages illustrant la navigation, la saisie utilisateur et l'affichage personnalisé.

---

## 📱 Aperçu

L'application comporte deux écrans :

- **Page d'accueil** : accueille l'utilisateur avec un champ de saisie pour entrer son prénom.
- **Page de détail** : affiche un message de bienvenue personnalisé avec l'initiale du prénom dans un avatar circulaire.

---

## 🚀 Fonctionnalités

- Saisie du prénom avec valeur par défaut (`Visiteur`) si le champ est vide
- Navigation entre deux pages via `Navigator.push` / `Navigator.pop`
- Affichage de l'initiale du prénom dans un `CircleAvatar`
- Interface simple et responsive avec Material Design

---

## 🗂️ Structure du code

```
lib/
└── main.dart
    ├── MyApp             # Point d'entrée de l'application
    ├── PageAccueil       # Page 1 — Saisie du prénom (StatefulWidget)
    └── PageDetail        # Page 2 — Affichage du message de bienvenue (StatelessWidget)
```

---

## ⚙️ Prérequis

- [Flutter SDK](https://docs.flutter.dev/get-started/install) ≥ 3.0
- Dart ≥ 3.0
- Android Studio / VS Code avec l'extension Flutter

---

## ▶️ Lancer le projet

```bash
# Cloner le projet
git clone <url-du-repo>
cd tp1_hello_world

# Installer les dépendances
flutter pub get

# Lancer l'application
flutter run
```

---

## 🧭 Navigation

```
PageAccueil
    │
    │  (bouton "Continuer")
    ▼
PageDetail
    │
    │  (bouton "Retour")
    ▼
PageAccueil
```

---

## 🛠️ Technologies utilisées

| Technologie | Version |
|-------------|---------|
| Flutter     | ≥ 3.0   |
| Dart        | ≥ 3.0   |
| Material Design | 3  |

---

## 👤 Auteur

Projet réalisé dans le cadre d'un TP d'initiation au développement mobile avec Flutter.
