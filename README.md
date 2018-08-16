# LANDING PAGES THP 18 - SESSION 5

## 1 - Notre Equipe de folie

### Team Back
  - @Gino
  - @Wilrib
  - @Julia
  
### Team Front
  - @Bastien
  - @Marion
  

## 2 - Comment acceder à l'application ? 

#### En production - test rapide

Landing Page -  Accompagnateurs PEPITE -> [presidentApp](https://thpforpresident.herokuapp.com/landing1)</br>
Landing Page -  Etudiants en informatique -> [presidentApp](https://thpforpresident.herokuapp.com/landing2)</br>
Landing Page -  Start-ups de Bordeaux -> [presidentApp](https://thpforpresident.herokuapp.com/landing3)</br>

Console de commande pour les dev -> [Console](https://thpforpresident.herokuapp.com/)

#### En local - test poussé

1. Cloner le fichier sur votre ordinateur</br>
2. Accéder au dossier à l'aide de la console</br>
3. Installer les gem avec la commande : $ bundle install</br>
4. Initialiser la base de données avec la commande : $ rails db:migrate</br>
5. Lancer le serveur rails : $ rails s</br>
6. Acccéder à [localhost](http://localhost:3000) sur votre navigateur</br>
7. Depuis là, on peut lancer les différents trucs : actions de marketing, envoi de newsletter...
8. Et avec ça, un petit test ? Lancer : $ rspec spec/newsletter/subscribe_newsletter_spec.rb

## 3 - Choix du design 

### Panel de couleur

![Palette](https://github.com/Roogerr/img/blob/master/palette.png)

Nous avons défini une charte graphique sobre et épurée. Nous voulions montrer aux futurs étudiants et partenaires le sérieux de la formation. 

### Design

Tout a été réalisé à la main. Pas de Bootstrap.
Pour coller avec notre charte, nous avons décidé d'appliquer un design modern en reprenant :
- Cards
- CTA
- Background différents pour chaque Landing Page
- Opacité sur les images
- Icones en harmonie avec notre charte...

# Landing Page - Accompagnateur PEPITE

## Cible
Cette landing page cible les accompagnateurs d'étudiant entrepreneur du réseau PEPITE. 
Pour communiquer auprès d'étudiants-entrepreurs, nous avons cibler le réseau PEPITE: Pôle Etudiant pour l'Innovation, le Transfert et l'entrepreunariat.

## But
Les entrepreneurs sont les premiers visés par cette formation. 
Pour les convaincre à diriger leurs étudiants vers nous, nous mettont un point d'honneur sur le principe de formation gratuite sur du court terme. De plus, point essentiel, nous avons accés notre communication sur la possibilité de coder et produire leur MVP rapidement.
Le temps étant le pire énemis de l'entrepreneur.

## Back

1 -Le scrappeur 
Notre scrappeur va récupérer les adresses mails des référents PEPITE. Ils sont les 
accompagnateurs de projets de création d'entreprise portés par les étudiants du réseau.

2 -La data base 
Nous enregistrons ces contacts dans une base de donnée SQL (en local), PG (en production).

3 -Le mailer
But ? Envoyer le lien de nos Landing Page aux contacts de la database. 
En utilisant la gem 'mailjet' nous pouvons lier notre database et l'envoi de mail en masse. 
Au total, 89 référents PEPITE ont été contacté via cette technologie. 


## Front
Pour augmenter les chances d'inscription, nous avons détaillé la Landing page en 5 partie :
- Acceuil (avec une phrase d'accroche pour l'incubateur et un CTA ainsi qu'un lien vers le site THP.)
- Présentation (avec un petit texte qui reprend les valeur de THP illustré par quelques chiffres)
- FAQ (avec des cards. Chaque card reprend une questions que les étudiants peuvent potentiellement se poser. A laquel on répond. Cette methode est principalement présente pour donner les arguments fort de la formation)
- Les techno (On reprend ici les techno étudiés durant la formation)
- Contat (En cas de questions, l'utilisateurs sait où se diriger)


# Landing Page -  Etudiants en informatique

## Cible
Cette landing page cible les étudiants en informatique.

## But
Les étudiants en informatiques n'ont pas toujours de web dans leur cursus. Curieux et investis, les connaissances supplémentaires ne leurs font pas peurs. 
Pour les convaincre à s'inscrire à notre formation, nous mettont un point d'honneur sur le principe de formation gratuite sur du court terme. De plus, point essentiel, nous avons accés notre communication sur le langage web avec de nouvelles technologies.

## Back

1 -Le bot twitter
Création d'un bot twitter qui envoit périodiquement le message suivant :
" #Etudiant en #informatique ? 
   Apprenez à créer un site #web en 3 mois gratuitement @thehackingproject (Lien LP)"
Le Tweet reprend les hashtag suivants :
- Etudiant
- Informatique
- Web

## Front
Pour augmenter les chances d'inscription, nous avons détaillé la Landing page en 5 partie :
- Acceuil (avec une phrase d'accroche pour les étudiants et un CTA ainsi qu'un lien vers le site THP.)
- Présentation (avec un petit texte qui reprend les valeur de THP illustré par quelques chiffres)
- FAQ (avec des cards. Chaque card reprend une questions que les étudiants peuvent potentiellement se poser. A laquel on répond. Cette methode est principalement présente pour donner les arguments fort de la formation)
- Les techno (On reprend ici les techno étudiés durant la formation)
- Contat (En cas de questions, l'utilisateurs sait où se diriger)

# Landing Page -  Start-ups de Bordeaux

## Cible
Cette landing page cible les Startup de Bordeaux.

## But
Future silicon valley française, Bordeaux regroupe de plus en plus de start up.  
Cette fois-ci, cette LP a pour but convaincre les Start-upd'embaucher les moussaillons de chaque session en leur proposant de découvrir les profils de chacun dans une NL. De plus, pour les fidéliser à THP, nous leur proposons des partenariats en participant au jury de présentation de projet à chaque fin de session. Ils se sentiront utiles et heureux de découvrir de nouvelles pépites. (EMBAUCHEZ NOUS !)

## Back

1 -Bot instagram
Cibler les hashtag #Bordeaux #startup de l'application instagram. (via la methode search)

## Front
Pour augmenter les chances d'inscription, nous avons détaillé la Landing page en 5 partie :
- Acceuil (avec une phrase d'accroche pour les entrepreuneurs et un CTA ainsi qu'un lien vers le site THP.)
- Présentation (avec un petit texte qui reprend les valeur de THP illustré par quelques chiffres)
- FAQ (avec des cards. Chaque card reprend une questions que les chefs d'entreprise peuvent potentiellement se poser. A laquel on répond. Cette methode est principalement présente pour donner les arguments fort des profils à la fin de la formation)
- Les techno (On reprend ici les techno étudiés durant la formation)
- Contat (En cas de questions, l'utilisateurs sait où se diriger)

   
# Statistiques

Capture d'ecran Mailjet.
Voici les stat d'envoi de mail aux adresses récupérées lors du scrapping à partir de la base de donnée.

![Mail](https://github.com/Roogerr/img/blob/master/mailjet.png)

Le site est branché sur un Google Analytics. Plus d'infos sur [Console](https://thpforpresident.herokuapp.com/)

   
# Les points à améliorer

## Front
Avec un peu plus de temps, nous aurions voulu améliorer :
- Améliorer notre charte graphique
- Améliorer et ajouter du contenu texte
- Améliorer le contenu graphique
- Rendre le site encore plus responsive design
- Utiliser des media queries
- Ajouter des effets en JS

## Back
Avec un peu plus de temps, nous aurions voulu améliorer :
- Configuration d'un Heroku Scheduler
- Résolution des problémes d'API Instagram
- Création d'un troisieme moyen d'acquisition d'adresses mail
- Trouver une technique pour contourner la limitation du nombre du nombre de mails envoyés par mailjet

# C'est tout pour nous.

![Gif](https://github.com/Roogerr/img/blob/master/giphy3.gif)
