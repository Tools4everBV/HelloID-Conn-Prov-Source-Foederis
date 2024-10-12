Le connecteur source FOEDERIS permet d’intégrer FOEDERIS à vos systèmes cibles via la solution de gestion des identités et des accès (GIA) HelloID de Tools4ever. Cette intégration simplifie la gestion des droits d’accès et des autorisations au sein de votre organisation, tout en garantissant la cohérence des données et en réduisant les erreurs humaines. Dans cet article, nous vous présentons les avantages, les fonctionnalités spécifiques et les possibilités de cette intégration. 

## Qu’est-ce qu’FOEDERIS ?

FOEDERIS est une société française spécialisée dans les solutions de gestion des talents et des ressources humaines. Elle propose une plateforme SaaS (Software as a Service) dédiée à la gestion des processus RH, tels que le recrutement, la gestion des compétences, la formation, et les entretiens d'évaluation.
Son offre vise à améliorer la performance RH et à simplifier la gestion des talents au sein des organisations de toutes tailles.

## Pourquoi intégrer FOEDERIS avec HelloID ?

La gestion des comptes utilisateurs et des autorisations peut rapidement devenir complexe et chronophage, surtout dans les grandes organisations. Chaque modification effectuée dans FOEDERIS doit également être répercutée dans l’ensemble des systèmes cibles que vous utilisez. En intégrant FOEDERIS à vos systèmes via HelloID, ce processus devient entièrement automatisé. HelloID détecte automatiquement les changements dans FOEDERIS et applique les mises à jour nécessaires dans vos systèmes cibles. Cela garantit que vos employés disposent toujours des accès appropriés pour être pleinement productifs.

Le connecteur FOEDERIS prend en charge l'intégration avec des systèmes couramment utilisés tels que :

*	Active Directory
*	Entra ID (anciennement Azure AD)
*	Salto Space

Les détails supplémentaires concernant ces intégrations sont abordés plus loin dans cet article.

## Comment HelloID optimise la gestion des comptes avec FOEDERIS ?

**Gestion sans erreur des comptes :** Gérer les comptes utilisateurs et les autorisations peut rapidement devenir compliqué et chronophage, surtout au fur et à mesure que votre organisation se développe. Des erreurs dans la gestion des comptes peuvent entraîner des frustrations, des interruptions de travail et des retards. Avec l’intégration d’FOEDERIS et HelloID, vous bénéficiez d'une gestion automatisée et sans erreur, permettant d'améliorer la qualité de vos services.

**Création rapide des comptes :** Pour que vos collaborateurs soient immédiatement opérationnels, ils doivent avoir accès aux bons systèmes et aux bonnes données. Cela inclut la création rapide de comptes et l'attribution des autorisations nécessaires. HelloID automatise et accélère ce processus, vous permettant ainsi de garantir une productivité optimale dès l’arrivée de nouveaux employés ou lors de changements de postes.

**Renforcement de la sécurité :** Les cyberattaques peuvent avoir des conséquences désastreuses. Il est donc essentiel de limiter au maximum les possibilités d'accès pour les attaquants. Cela implique une gestion efficace des comptes et des autorisations. Par exemple, HelloID bloque automatiquement les comptes des employés quittant l’entreprise et révoque les autorisations superflues, réduisant ainsi la surface d’attaque.

**Synchronisation bidirectionnelle :** Dans certains cas, vous souhaiterez renvoyer des informations de vos systèmes cibles vers votre système source. HelloID propose, via notre repository GitHub, un connecteur dédié permettant de synchroniser des données telles que les adresses e-mail professionnelles directement vers FOEDERIS.

## Comment HelloID s'intègre avec FOEDERIS ?

FOEDERIS et HelloID sont connectés grâce à un connecteur, où FOEDERIS agit comme système source pour HelloID. Cette intégration permet à HelloID de gérer automatiquement l’ensemble du cycle de vie des comptes dans FOEDERIS, sans intervention manuelle. HelloID applique également toutes les modifications nécessaires dans vos systèmes cibles en fonction des changements effectués dans FOEDERIS. 

| Modification dans FOEDERIS | Procédure dans les systèmes cibles |
| -------------------------------- | ---------------------------------- | 
| Nouvel employé |	HelloID crée un compte utilisateur dans les applications connectées avec les bons droits d'accès. En fonction du poste, des comptes supplémentaires peuvent être créés avec les droits appropriés dans les systèmes connectés.|
| Changement de poste |	HelloID met à jour automatiquement les comptes utilisateurs et attribue ou révoque les droits d'accès nécessaires. Le modèle d'autorisation de HelloID définit les droits à accorder ou à retirer.|
| Changement de nom |	La modification du nom et de l'adresse e-mail est effectuée si nécessaire.| 
| Départ d'un employé |	HelloID désactive les comptes utilisateurs dans les systèmes cibles et informe les parties concernées. Après un certain délai, les comptes peuvent être automatiquement supprimés.| 

HelloID utilise un export de FOEDERIS pour importer un ensemble standard de données dans le coffre-fort HelloID. Ce coffre-fort numérique stocke les informations de manière cohérente en mappant les données dans les champs appropriés. Ces informations incluent des données relatives aux employés, aux contrats et aux informations sur l'entreprise. 

## Échange de données sur mesure

Vous pouvez également utiliser des champs personnalisés dans FOEDERIS. En connectant FOEDERIS à HelloID, ces champs personnalisés sont automatiquement importés dans HelloID et peuvent être mappés sur les bons champs dans le schéma de personnes de HelloID. Cela permet d'utiliser les informations des champs personnalisés pour la création automatique des comptes.


## Intégration d'FOEDERIS avec des systèmes cibles via HelloID

FOEDERIS peut être intégré à divers systèmes cibles via HelloID. Cette connexion permet de gérer automatiquement les informations et les mises à jour provenant d'FOEDERIS dans vos systèmes cibles, simplifiant ainsi la gestion des comptes et des autorisations. Quelques exemples d’intégrations courantes :

* **Intégration FOEDERIS - Microsoft Entra ID :** Entra ID est l’équivalent cloud d’Active Directory. Grâce à HelloID, vous pouvez facilement intégrer FOEDERIS à Entra ID. Cette intégration automatise de nombreuses tâches manuelles et réduit les erreurs humaines, tout en synchronisant les droits d'accès pour garantir des comptes toujours à jour.

* **Intégration FOEDERIS - Salto Space :** Pour assurer la productivité des collaborateurs, l'accès aux espaces physiques, tels que les bureaux ou les salles de réunion, est crucial. L'intégration entre FOEDERIS et Salto Space assure un accès automatisé aux espaces autorisés. HelloID gère ces accès en fonction des groupes d'autorisation configurés à partir des données des employés, et désactive automatiquement l'accès lors du départ des employés.

HelloID propose plus de 200 connecteurs pour intégrer la solution de GIA avec un large éventail de systèmes sources et cibles. Grâce à cette flexibilité, vous pouvez connecter FOEDERIS à tous les systèmes les plus couramment utilisés. 
