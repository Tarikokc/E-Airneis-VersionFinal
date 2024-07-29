# E-Airneis - Plateforme E-commerce de Meubles Artisanaux

Bienvenue sur le dépôt principal de l'application E-Airneis ! Cette plateforme e-commerce vous permet de découvrir et d'acheter des meubles artisanaux uniques, fabriqués avec passion par des artisans talentueux.

## Structure du Projet

Ce dépôt est le point d'entrée principal du projet et contient trois sous-modules :

*   **Backend (Symfony) :** Fournit l'API REST qui gère les données et la logique métier de l'application (produits, commandes, utilisateurs, etc.).
*   **Frontend (React) :** Interface utilisateur web interactive permettant aux clients de naviguer dans le catalogue, d'ajouter des produits au panier et de passer des commandes.
*   **Mobile (Expo React Native) :** Application mobile offrant une expérience utilisateur optimisée pour les appareils mobiles.

## Installation et Configuration

1.  **Cloner le dépôt parent :**
    ```bash
    git clone https://github.com/Tarikokc/E-Airneis-VersionFinal.git 
    ```

2.  **Initialiser et mettre à jour les sous-modules :**
    ```bash
    cd E-Airneis-VersionFinal
    git submodule update --init --recursive
    ```

3.  **Backend (Symfony) :**
    *   Accédez au répertoire `Backend` : `cd Backend`
    *   Installez les dépendances : `composer install`
    *   Démarrez le serveur : `symfony server:start`

4.  **Frontend (React) :**
    *   Accédez au répertoire `Frontend` : `cd Frontend`
    *   Installez les dépendances : `npm install`
    *   Démarrez le serveur de développement : `npm start`

5.  **Mobile (Expo React Native) :**
    *   Accédez au répertoire `Mobile` : `cd Mobile`
    *   Installez les dépendances : `npm install` ou `yarn install`
    *   Assurez-vous d'avoir Expo CLI installé globalement : `npm install expo-cli --global`
    *   Démarrez l'application : `npm start` ou `expo start`

## Documentation

*   **API REST (OpenAPI/Swagger) :** [http://localhost:8000/api/doc](http://localhost:8000/api/doc)

## Contribution

Nous vous encourageons à contribuer à l'amélioration de E-Airneis ! N'hésitez pas à soumettre des pull requests.

## Auteurs

*   Tarik OUKACI
*   Maïssaâ HACHI
*   Hailé SAVADOUX
*   Mohamed-Ali OUACHANI

## Licence

Ce projet est sous licence MIT.
