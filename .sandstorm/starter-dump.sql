-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: yeswiki
-- ------------------------------------------------------
-- Server version	5.5.46-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `yeswiki_acls`
--

DROP TABLE IF EXISTS `yeswiki_acls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yeswiki_acls` (
  `page_tag` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `privilege` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `list` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`page_tag`,`privilege`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeswiki_acls`
--

LOCK TABLES `yeswiki_acls` WRITE;
/*!40000 ALTER TABLE `yeswiki_acls` DISABLE KEYS */;
INSERT INTO `yeswiki_acls` VALUES ('HomePage','write','*'),('HomePage','read','*'),('HomePage','comment','@admins'),('FileUpload','write','*'),('FileUpload','read','*'),('FileUpload','comment','@admins'),('DirectorY','write','*'),('DirectorY','read','*'),('DirectorY','comment','@admins'),('MaP','write','*'),('MaP','read','*'),('MaP','comment','@admins'),('CalendaR','write','*'),('CalendaR','read','*'),('CalendaR','comment','@admins'),('BloG','write','*'),('BloG','read','*'),('BloG','comment','@admins'),('FlorianSchmitt','write','*'),('FlorianSchmitt','read','*'),('FlorianSchmitt','comment','@admins');
/*!40000 ALTER TABLE `yeswiki_acls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeswiki_links`
--

DROP TABLE IF EXISTS `yeswiki_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yeswiki_links` (
  `from_tag` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_tag` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `from_tag` (`from_tag`,`to_tag`),
  KEY `idx_from` (`from_tag`),
  KEY `idx_to` (`to_tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeswiki_links`
--

LOCK TABLES `yeswiki_links` WRITE;
/*!40000 ALTER TABLE `yeswiki_links` DISABLE KEYS */;
INSERT INTO `yeswiki_links` VALUES ('BloG','WikiAdmin'),('CalendaR','WikiAdmin'),('DirectorY','WikiAdmin'),('HomePage','CamelCase'),('MaP','WikiAdmin'),('PageFooter','WikiAdmin'),('PageHeader','WikiAdmin'),('PageMenuHaut','BloG'),('PageMenuHaut','CalendaR'),('PageMenuHaut','DirectorY'),('PageMenuHaut','FileUpload'),('PageMenuHaut','MaP'),('PageMenuHaut','WikiAdmin'),('PageRapideHaut','WikiAdmin'),('PageTitre','WikiAdmin'),('ParametresUtilisateur','WikiAdmin'),('WikiAdmin','PageFooter'),('WikiAdmin','PageHeader'),('WikiAdmin','PageMenuHaut'),('WikiAdmin','PageRapideHaut'),('WikiAdmin','PageTitre'),('WikiAdmin','WikiAdmin');
/*!40000 ALTER TABLE `yeswiki_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeswiki_nature`
--

DROP TABLE IF EXISTS `yeswiki_nature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yeswiki_nature` (
  `bn_id_nature` int(10) unsigned NOT NULL DEFAULT '0',
  `bn_label_nature` varchar(255) DEFAULT NULL,
  `bn_description` text,
  `bn_condition` text,
  `bn_ce_id_menu` int(3) unsigned NOT NULL DEFAULT '0',
  `bn_commentaire` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bn_appropriation` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bn_image_titre` varchar(255) NOT NULL DEFAULT '',
  `bn_image_logo` varchar(255) NOT NULL DEFAULT '',
  `bn_couleur_calendrier` varchar(255) NOT NULL DEFAULT '',
  `bn_picto_calendrier` varchar(255) NOT NULL DEFAULT '',
  `bn_template` text NOT NULL,
  `bn_ce_i18n` varchar(5) NOT NULL DEFAULT '',
  `bn_type_fiche` varchar(255) NOT NULL,
  `bn_label_class` varchar(255) NOT NULL,
  PRIMARY KEY (`bn_id_nature`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeswiki_nature`
--

LOCK TABLES `yeswiki_nature` WRITE;
/*!40000 ALTER TABLE `yeswiki_nature` DISABLE KEYS */;
INSERT INTO `yeswiki_nature` VALUES (17,'Images','pour faire des galeries d\'images','',0,0,0,'','','','','texte***bf_titre***Titre***60***255*** *** *** ***1***0***Si possible proposer un titre parlant (qui dÃƒÂ©crive bien le contenu de la photo)\r\nimage***bf_image***Photo***500***500***1000***1000***center***1***0***\r\ntexte***bf_auteur***Auteur***60***255*** *** *** ***0***0***\r\ntexte***bf_description***Description***100***100*** *** *** *** *** ***\r\ntags***tags***Mots clÃƒÂ©s***60***255*** *** *** ***0***0***On peut sÃƒÂ©parer les mots clÃƒÂ©s en appuyant sur les touches entrÃƒÂ©e, virgule ou point-virgule.','fr-FR','Images','images'),(11,'News','Simple blog entries','',0,0,0,'','','','','texte***bf_titre***Titre***255***255*** *** *** ***1***0***\r\ntextelong***bf_chapeau***Chapeau***40***3*** *** *** ***1***0***Donnez envie au lecteur de lire l\'article grÃƒÂ¢ce Ãƒ  cette introduction d\'une ou 2 lignes\r\nimage***bf_image***Image de d\'illustration (770x385) ***385***770***385***770***right***0***0***Votre image doit ÃƒÂªtre au format .jpg ou .gif ou .png\r\ntextelong***bf_description***Billet***40***30*** *** *** ***1***0***\r\ntags***tags***Mots clÃƒÂ©s***60***255*** *** *** ***0***1***On peut sÃƒÂ©parer les mots clÃƒÂ©s en appuyant sur les touches entrÃƒÂ©e, virgule ou point-virgule.\r\n','fr-FR','Blog','blog'),(18,'Directory','Geolocalised directory','',0,0,0,'','','','','texte***bf_titre***Name and Surname***60***255*** *** *** ***1***0***\r\ntexte***bf_baseline***Short description***60***255*** *** *** ***1***0***\r\nimage***bf_image***picture***140***140***600***600***right***1 *** ***\r\ntextelong***bf_description***Description***50***4*** *** ***wiki*** *** ***\r\nchamps_mail***bf_mail***Mail***40***255*** *** ***1 ***1***0\r\nlien_internet***bf_site_internet***Website***40***255***http://*** *** ***0***0\r\ntexte***bf_adresse***Adress***60***100*** *** ***1*** ***\r\ntexte***bf_code_postal***Zip Code***5*** *** *** *** ***0***1***\r\ntexte***bf_ville***City***50***80*** *** *** ***1*** ***\r\ncarte_google***bf_latitude***bf_longitude***cartogoogle***1','fr-FR','Directory','directory');
/*!40000 ALTER TABLE `yeswiki_nature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeswiki_pages`
--

DROP TABLE IF EXISTS `yeswiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yeswiki_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `body_r` text COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `latest` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `handler` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'page',
  `comment_on` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_tag` (`tag`),
  KEY `idx_time` (`time`),
  KEY `idx_latest` (`latest`),
  KEY `idx_comment_on` (`comment_on`),
  FULLTEXT KEY `tag` (`tag`,`body`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeswiki_pages`
--

LOCK TABLES `yeswiki_pages` WRITE;
/*!40000 ALTER TABLE `yeswiki_pages` DISABLE KEYS */;
INSERT INTO `yeswiki_pages` VALUES (1,'BacASable','2015-07-08 10:08:31',' - si vous cliquez sur \"ÃƒÂ©diter cette page\"\n - vous pourrez ÃƒÂ©crire dans cette page comme bon vous semble\n - puis en cliquant sur \"sauver\" vous pourrez enregistrer vos modifications','','WikiAdmin','WikiAdmin','Y','page',''),(2,'RechercheTexte','2015-07-08 10:08:31','{{TextSearch}}','','WikiAdmin','WikiAdmin','Y','page',''),(3,'PageMenuHaut','2015-07-08 10:08:31',' - [[PagePrincipale Accueil]]\n','','WikiAdmin','WikiAdmin','N','page',''),(4,'DerniersChangementsRSS','2015-07-08 10:08:31','{{recentchangesrss}}','','WikiAdmin','WikiAdmin','Y','page',''),(6,'PageTitre','2015-07-08 10:08:31','{{configuration param=\"wakka_name\"}}','','WikiAdmin','WikiAdmin','N','page',''),(7,'PageFooter','2015-07-08 10:08:31','\"\"<div style=\"text-align:center\">\"\"\n(>^_^)> Galope sous [[http://www.yeswiki.net YesWiki]] <(^_^<)\n\"\"</div>\"\" \n','','WikiAdmin','WikiAdmin','N','page',''),(9,'CoursUtilisationYesWiki','2015-07-08 10:08:31','======Cours sur l\'utilisation de YesWiki======\n====Le principe \"Wiki\"====\nWiki Wiki signifie rapide, en HawaÃ¯en. \n==N\'importe qui peut modifier la page==\n[[http://the.honoluluadvertiser.com/dailypix/2002/Aug/19/ln07a_b.jpg le bus wiki wiki]]\n\n**Les Wiki sont des dispositifs permettant la modification de pages Web de faÃ§on simple, rapide et interactive.**\nYesWiki fait partie de la famille des wiki. Il a la particularitÃ© d\'Ãªtre trÃ¨s facile Ã  installer.\n\n=====Mettre du contenu=====\n====Ã‰crire ou coller du texte====\n - Dans chaque page du site, un double clic sur la page ou un clic sur le lien \"Ã‰diter cette page\" en bas de page permet de passer en mode \"Ã‰dition\".\n - On peut alors Ã©crire ou coller du texte\n - On peut voir un aperÃ§u des modifications ou sauver directement la page modifiÃ©e en cliquant sur les boutons en bas de page.\n\n====Ã‰crire un commentaire (optionnel)====\nSi la configuration de la page permet d\'ajouter des commentaires, on peut cliquer sur : Afficher commentaires/formulaire en bas de chaque page.\nUn formulaire apparaitra et vous permettra de rajouter votre commentaire.\n\n\n=====Mise en forme : Titres et traits=====\n--> Voir la page ReglesDeFormatage\n\n====Faire un titre====\n======TrÃ¨s gros titre====== \ns\'Ã©crit en syntaxe wiki : \"\"======TrÃ¨s gros titre======\"\"\n\n\n==Petit titre== \ns\'Ã©crit en syntaxe wiki : \"\"==Petit titre==\"\" \n\n\n//On peut mettre entre 2 et 6 = de chaque cotÃ© du titre pour qu\'il soit plus petit ou plus grand//\n\n====Faire un trait de sÃ©paration====\nPour faire apparaitre un trait de sÃ©paration\n----\ns\'Ã©crit en syntaxe wiki : \"\"----\"\"\n\n=====Mise en forme : formatage texte=====\n====Mettre le texte en gras====\n**texte en gras**\ns\'Ã©crit en syntaxe wiki : \"\"**texte en gras**\"\" \n\n====Mettre le texte en italique====\n//texte en italique//\ns\'Ã©crit en syntaxe wiki : \"\"//texte en italique//\"\"\n\n====Mettre le texte en soulignÃ©====\n__texte en soulignÃ©__\ns\'Ã©crit en syntaxe wiki : \"\"__texte en soulignÃ©__\"\"\n\n=====Mise en forme : listes=====\n====Faire une liste Ã  puce====\n - point 1\n - point 2\n\ns\'Ã©crit en syntaxe wiki : \n\"\" - point 1\"\"\n\"\" - point 2\"\"\n\nAttention : de bien mettre un espace devant le tiret pour que l\'Ã©lÃ©ment soit reconnu comme liste\n\n\n====Faire une liste numÃ©rotÃ©e====\n 1) point 1\n 2) point 2\n\ns\'Ã©crit en syntaxe wiki : \n\"\" 1) point 1\"\"\n\"\" 2) point 2\"\"\n\n=====Les liens : le concept des \"\"ChatMots\"\"=====\n====CrÃ©er une page YesWiki : ====\nLa caractÃ©ristique qui permet de reconnaitre un lien dans un wiki : son nom avec un mot contenant au moins deux majuscules non consÃ©cutives (un \"\"ChatMot\"\", un mot avec deux bosses). \n\n==== Lien interne====\n - On Ã©crit le \"\"ChatMot\"\" de la page YesWiki vers laquelle on veut pointer.\n  - Si la page existe, un lien est automatiquement crÃ©Ã©\n  - Si la page n\'existe pas, apparait un lien avec crayon. En cliquant dessus on arrive vers la nouvelle page en mode \"Ã‰dition\".\n\n=====Les liens : personnaliser le texte=====\n====Personnaliser le texte du lien internet====\nentre double crochets : \"\"[[AccueiL aller Ã  la page d\'accueil]]\"\", apparaitra ainsi : [[AccueiL aller Ã  la page d\'accueil]].\n\n====Liens vers d\'autres sites Internet====\nentre double crochets : \"\"[[http://outils-reseaux.org aller sur le site d\'Outils-RÃ©seaux]]\"\", apparaitra ainsi : [[http://outils-reseaux.org aller sur le site d\'Outils-RÃ©seaux]].\n\n\n=====TÃ©lÃ©charger une image, un document=====\n====On dispose d\'un lien vers l\'image ou le fichier====\nentre double crochets :\n - \"\"[[http://mondomaine.ext/image.jpg texte de remplacement de l\'image]]\"\" pour les images.\n - \"\"[[http://mondomaine.ext/document.pdf texte du lien vers le tÃ©lÃ©chargement]]\"\" pour les documents.\n\n====L\'action \"attach\"====\nEn cliquant sur le pictogramme reprÃ©sentant une image dans la barre d\'Ã©dition, on voit apparaÃ®tre la ligne de code suivante :\n\"\"{{attach file=\" \" desc=\" \" class=\"left\" }} \"\"\n\nEntre les premiÃ¨res guillemets, on indique le nom du document (ne pas oublier son extension (.jpg, .pdf, .zip).\nEntre les secondes, on donne quelques Ã©lÃ©ments de description qui deviendront le texte du lien vers le document\nLes troisiÃ¨mes guillemets, permettent, pour les images, de positionner l\'image Ã  gauche (left), ou Ã  droite (right) ou au centre (center)\n\"\"{{attach file=\"nom-document.doc\" desc=\"mon document\" class=\"left\" }} \"\"\n\nQuand on sauve la page, un lien en point d\'interrogation apparait. En cliquant dessus, on arrive sur une page avec un systÃ¨me pour aller chercher le document sur sa machine (bouton \"parcourir\"), le sÃ©lectionner et le tÃ©lÃ©charger.\n\n=====IntÃ©grer du html=====\nSi on veut faire une mise en page plus compliquÃ©e, ou intÃ©grer un widget, il faut Ã©crire en html. Pour cela, il faut mettre notre code html entre double guillemets.\nPar exemple : \"\"<textarea style=\"width:100%;\">&quot;&quot;<span style=\"color:#0000EE;\">texte colorÃ©</span>&quot;&quot;</textarea>\"\"\ndonnera :\n\"\"<span style=\"color:#0000EE;\">texte colorÃ©</span>\"\"\n\n\n=====Les pages spÃ©ciales=====\n - PageHeader\n - PageFooter\n - PageMenuHaut\n - PageMenu\n - PageRapideHaut\n\n - PagesOrphelines\n - TableauDeBordDeCeWiki\n \n\n=====Les actions disponibles=====\nVoir la page spÃ©ciale : ListeDesActionsWikini\n\n**les actions Ã  ajouter dans la barre d\'adresse:**\nrajouter dans la barre d\'adresse :\n/edit : pour passer en mode Edition\n/slide_show : pour transformer la texte en diaporama\n\n===La barre du bas de page permet d\'effectuer diverses action sur la page===\n - voir l\'historique\n - partager sur les rÃ©seaux sociaux\n...\n\n=====Suivre la vie du site=====\n - Dans chaque page, en cliquant sur la date en bas de page on accÃ¨de Ã  **l\'historique** et on peut comparer les diffÃ©rentes versions de la page.\n\n - **Le TableauDeBordDeCeWiki : ** pointe vers toutes les pages utiles Ã  l\'analyse et Ã  l\'animation du site.\n\n - **La page DerniersChangements** permet de visualiser les modifications qui ont Ã©tÃ© apportÃ©es sur l\'ensemble du site, et voir les versions antÃ©rieures. Pour l\'avoir en flux RSS DerniersChangementsRSS\n\n - **Les lecteurs de flux RSS** :  offrent une faÃ§on simple, de produire et lire, de faÃ§on standardisÃ©e (via des fichiers XML), des fils d\'actualitÃ© sur internet. On rÃ©cupÃ¨re les derniÃ¨res informations publiÃ©es. On peut ainsi s\'abonner Ã  diffÃ©rents fils pour mener une veille technologique par exemple.\n[[http://www.wikini.net/wakka.php?wiki=LecteursDeFilsRSS DiffÃ©rents lecteurs de flux RSS]]\n\n\n\n=====L\'identification=====\n====PremiÃ¨re identification = crÃ©ation d\'un compte YesWiki====\n    - aller sur la page spÃ©ciale ParametresUtilisateur, \n    - choisir un nom YesWiki qui comprend 2 majuscules. //Exemple// : JamesBond\n    - choisir un mot de passe et donner un mail\n    - cliquer sur s\'inscrire\n\n====Identifications suivantes====\n    - aller sur ParametresUtilisateur, \n    - remplir le formulaire avec son nom YesWiki et son mot de passe\n    - cliquer sur \"connexion\"\n\n\n\n=====GÃ©rer les droits d\'accÃ¨s aux pages=====\n - **Chaque page possÃ¨de trois niveaux de contrÃ´le d\'accÃ¨s :**\n     - lecture de la page\n     - Ã©criture/modification de la page\n     - commentaire de la page\n\n - **Les contrÃ´les d\'accÃ¨s ne peuvent Ãªtre modifiÃ©s que par le propriÃ©taire de la page**\nOn est propriÃ©taire des pages que l\'ont crÃ©ent en Ã©tant identifiÃ©. Pour devenir \"propriÃ©taire\" d\'une page, il faut cliquer sur Appropriation. \n\n - Le propriÃ©taire d\'une page voit apparaÃ®tre, dans la page dont il est propriÃ©taire, l\'option \"**Ã‰diter permissions**\" : cette option lui permet de **modifier les contrÃ´les d\'accÃ¨s**.\nCes contrÃ´les sont matÃ©rialisÃ©s par des colonnes oÃ¹ le propriÃ©taire va ajouter ou supprimer des informations.\nLe propriÃ©taire peut complÃ©ter ces colonnes par les informations suivantes, sÃ©parÃ©es par des espaces :\n     - le nom d\'un ou plusieurs utilisateurs : par exemple \"\"JamesBond\"\" \n     - le caractÃ¨re ***** dÃ©signant tous les utilisateurs\n     - le caractÃ¨re **+** dÃ©signant les utilisateurs enregistrÃ©s\n     - le caractÃ¨re **!** signifiant la nÃ©gation : par exemple !\"\"JamesBond\"\" signifie que \"\"JamesBond\"\" **ne doit pas** avoir accÃ¨s Ã  cette page\n\n - **Droits d\'accÃ¨s par dÃ©faut** : pour toute nouvelle page crÃ©Ã©e, YesWiki applique des droits d\'accÃ¨s par dÃ©faut : sur ce YesWiki, les droits en lecture et Ã©criture sont ouverts Ã  tout internaute.\n\n=====Supprimer une page=====\n\n - **2 conditions :**\n    - **on doit Ãªtre propriÃ©taire** de la page et **identifiÃ©** (voir plus haut),\n    - **la page doit Ãªtre \"orpheline\"**, c\'est-Ã -dire qu\'aucune page ne pointe vers elle (pas de lien vers cette page sur le YesWiki), on peut voir toutes les pages orphelines en visitant la page : PagesOrphelines\n\n - **On peut alors cliquer sur l\'\'option \"Supprimer\"** en bas de page.\n\n\n\n=====Changer le look et la disposition=====\nEn mode Ã©dition, si on est propriÃ©taire de la page, ou que les droits sont ouverts, on peut changer la structure et la prÃ©sentation du site, en jouant avec les listes dÃ©roulantes en bas de page : ThÃ¨me, Squelette, Style.\n\n','','WikiAdmin','WikiAdmin','Y','page',''),(10,'TableauDeBord','2015-07-08 10:08:31','======Tableau de bord======\n{{grid}}\n{{col size=\"6\"}} \n==== 8 derniers comptes utilisateurs ====\n{{Listusers last=\"8\"}}\n------\n==== 8 derniÃƒÂ¨res pages modifiÃƒÂ©es ====\n{{recentchanges max=\"8\"}}\n------\n==== 5 derniÃƒÂ¨res pages commentÃƒÂ©es ====\n{{RecentlyCommented max=\"5\"}}\n------\n{{end elem=\"col\"}} \n{{col size=\"6\"}} \n==== Index des pages ====\n{{pageindex}}\n------\n==== Pages orphelines ====\n{{OrphanedPages}}\n------\n{{end elem=\"col\"}}\n{{end elem=\"grid\"}}\n','','WikiAdmin','WikiAdmin','Y','page',''),(12,'ParametresUtilisateur','2015-07-08 10:08:31','{{UserSettings}}','','WikiAdmin','WikiAdmin','N','page',''),(13,'DerniersChangements','2015-07-08 10:08:31','{{RecentChanges}}','','WikiAdmin','WikiAdmin','Y','page',''),(14,'PageMenu','2015-07-08 10:08:31',' - \"\"<a href=\"wakka.php?wiki=\"\"{{configuration param=\"root_page\"}}\"\"\" title=\"Aller sur la page d\'accueil\">Accueil</a>\"\"','','WikiAdmin','WikiAdmin','Y','page',''),(15,'PagesOrphelines','2015-07-08 10:08:31','{{OrphanedPages}}','','WikiAdmin','WikiAdmin','Y','page',''),(17,'DerniersCommentaires','2015-07-08 10:08:31','{{RecentlyCommented}}','','WikiAdmin','WikiAdmin','Y','page',''),(18,'WikiAdmin','2015-07-08 10:08:31','{{grid}}\n{{col size=\"6\"}} \n===GÃƒÂ©rer les menus de ce wiki===\n - [[PageMenuHaut Editer menu horizontal d\'en haut]]\n - [[PageTitre Editer le titre]]\n - [[PageRapideHaut Editer le menu roue crantÃƒÂ©e]]\n - [[PageHeader Editer le bandeau]]\n - [[PageFooter Editer le footer]]\n\n===GÃƒÂ©rer les groupes d\'utilisateurs===\nnÃƒÂ©cessite une connexion admin\n{{editgroups}}\n{{end elem=\"col\"}} \n{{col size=\"6\"}} \n=== Gestion des tags ===\n{{admintag}}\n------\n=== Gestion des commentaires ===\n{{erasespamedcomments}}\n------\n{{end elem=\"col\"}}\n{{end elem=\"grid\"}}\n','','WikiAdmin','WikiAdmin','N','page',''),(19,'PageRapideHaut','2015-07-08 10:22:23','\"\"<div class=\"btn-group pull-right\">\n<button type=\"button\" class=\"yeswiki-menu-btn navbar-btn btn btn-default  dropdown-toggle\" data-toggle=\"dropdown\">\n<span class=\"glyphicon  glyphicon-cog icon-cog\"></span>\n</button>\n\n<ul class=\"dropdown-menu\" role=\"menu\">\n<li><a href=\"wakka.php?wiki=ParametresUtilisateur\"><i  class=\"glyphicon glyphicon-user icon-user\"></i> Se Connecter</a></li>\n<li class=\"divider\"></li>\n<li><a href=\"wakka.php?wiki=AidE\"><i  class=\"glyphicon glyphicon-question-sign icon-question-sign\"></i> Aide</a></li>\n<li class=\"divider\"></li>\n<li><a href=\"wakka.php?wiki=WikiAdmin\"><i  class=\"glyphicon glyphicon-wrench icon-wrench\"></i> Gestion du site</a></li>\n<li><a href=\"wakka.php?wiki=TableauDeBord\"><i  class=\"glyphicon glyphicon-dashboard icon-list-alt\"></i> Tableau de bord</a></li>\n<li><a href=\"wakka.php?wiki=BazaR\"><i  class=\"glyphicon glyphicon-briefcase icon-briefcase\"></i> Base de donnÃƒÂ©es</a></li>\n</ul>\n</div>\"\"{{moteurrecherche template=\"moteurrecherche_navbar.tpl.html\" class=\"pull-right\"}}  \"\"<div class=\"clearfix\"></div>\"\"','','WikiAdmin','WikiAdmin','N','page',''),(20,'AidE','2015-07-08 10:22:54','=====Les pages d\'aide=====\n\n  - [[CoursUtilisationYesWiki Cours sur l\'utilisation de YesWiki]]\n\n\"\"<iframe class=\"yeswiki_frame\" width=\"100%\" height=\"3000\" frameborder=\"0\" src=\"http://yeswiki.net/wakka.php?wiki=CodeExemple/iframe\"></iframe>\"\"','','WikiAdmin','WikiAdmin','Y','page',''),(22,'PagePrincipale','2015-07-08 10:24:13','======Bienvenue !======\n\nCliquez sur le lien \"Editer cette page\" au bas de la page pour dÃƒÂ©marrer et ÃƒÂ©crire le contenu de la page.','','WikiAdmin','WikiAdmin','Y','page',''),(23,'BazaR','2015-07-08 10:35:40','{{bazar}}','','WikiAdmin','WikiAdmin','Y','page',''),(44,'PageHeader','2015-07-10 13:45:55','\"\"<div class=\"background-image cover\" style=\"background-image:url(\"\"{{valeur champ=\"bf_bandeau\" image=\"lien\"}}\"\");\">\n<div class=\"container\">\n<h1><span style=\"color:#FFF;text-shadow:0 0 2px black;\">\"\"{{valeur champ=\"bf_titre\"}}\"\"</span></h1>\n<h2><span style=\"color:#A2B420;font-weight:bold;text-shadow:0 0 2px black;\">\"\"{{valeur champ=\"bf_description\"}}\"\"</span></h2>\n</div> <!-- /.container -->\n</div>\"\"','','WikiAdmin','WikiAdmin','N','page',''),(45,'HomePage','2016-01-22 18:21:36','======Welcome to YesWiki======\n\nDouble-clic on this texte to edit the page or click on the \"Edit this page\" link below.','','','127.0.0.1','N','page',''),(46,'HomePage','2016-01-22 18:23:25','======Welcome !======\n\nDouble-clic on this texte to edit the page or click on the \"Edit this page\" link below.','','','127.0.0.1','N','page',''),(47,'PageHeader','2016-01-22 18:26:53','{{backgroundimage height=\"250\" file=\"header-coffee.jpg\" class=\"white text-left doubletitlesize\"}}\n\n=====A full featured structured wiki, more time for pause=====\n\n{{endbackgroundimage}}','','WikiAdmin','127.0.0.1','N','page',''),(48,'PageHeader','2016-01-22 19:02:20','{{backgroundimage height=\"250\" bgcolor=\"#FERREF\" class=\"white text-left doubletitlesize\"}}\n\n=====A full featured structured wiki, more time for pause=====\n\n{{endbackgroundimage}}','','WikiAdmin','127.0.0.1','N','page',''),(49,'PageHeader','2016-01-22 19:02:50','{{backgroundimage height=\"250\" bgcolor=\"#FEaaEF\" class=\"white text-left doubletitlesize\"}}\n\n=====A full featured structured wiki, more time for pause=====\n\n{{endbackgroundimage}}','','WikiAdmin','127.0.0.1','N','page',''),(50,'PageHeader','2016-01-22 19:08:55','{{backgroundimage height=\"250\" bgcolor=\"#009688\" class=\"white text-left\"}}\n\n=====A full featured structured wiki, more time for pause=====\n\n{{endbackgroundimage}}','','WikiAdmin','127.0.0.1','N','page',''),(51,'PageHeader','2016-01-22 19:09:14','{{backgroundimage height=\"250\" bgcolor=\"#009688\" class=\"white text-left\"}}\n=====A full featured structured wiki, more time for pause=====\n{{endbackgroundimage}}','','WikiAdmin','127.0.0.1','N','page',''),(52,'PageHeader','2016-01-22 19:09:31','{{backgroundimage height=\"150\" bgcolor=\"#009688\" class=\"white text-left\"}}\n=====A full featured structured wiki, more time for pause=====\n{{endbackgroundimage}}','','WikiAdmin','127.0.0.1','N','page',''),(53,'HomePage','2016-01-22 19:11:50','======Welcome !======\n\nDouble-clic on this text to edit the page or click on the \"Edit this page\" link below.\n\nYou can edit the footer, the header, the horizontal menu by double-clicking also.\n\nMore option in edit mode, with the button \"Theme\" on the bottom of the page.','','','127.0.0.1','N','page',''),(54,'PageFooter','2016-01-22 19:12:33','\"\"<div class=\"text-center\">\"\"\n(>^_^)> Powered by [[http://www.yeswiki.net YesWiki]] <(^_^<)\n\"\"</div>\"\"','','WikiAdmin','127.0.0.1','Y','page',''),(55,'PageHeader','2016-01-22 19:13:35','{{backgroundimage height=\"150\" bgcolor=\"#009688\" class=\"white text-left\"}}\n=====A full featured wiki, more time for fun.=====\n{{endbackgroundimage}}','','WikiAdmin','127.0.0.1','Y','page',''),(56,'HomePage','2016-01-22 19:16:13','======Welcome !======\n\nDouble-click on this text to edit the page or click on the \"Edit this page\" link below.\n\nYou can edit the footer, the header, the horizontal menu by double-clicking also.\n\nMore option in edit mode, with the button \"Theme\" on the bottom of the page.','','','127.0.0.1','N','page',''),(57,'PageRapideHaut','2016-01-22 19:20:16','{{moteurrecherche template=\"moteurrecherche_button.tpl.html\"}} \"\"\n<div class=\"btn-group\">\n<button type=\"button\" class=\"yeswiki-menu-btn navbar-btn btn btn-default  dropdown-toggle\" data-toggle=\"dropdown\">\n<span class=\"glyphicon  glyphicon-cog icon-cog\"></span>\n</button>\n\n<ul class=\"dropdown-menu\" role=\"menu\">\n<li><a href=\"wakka.php?wiki=ParametresUtilisateur\"><i  class=\"glyphicon glyphicon-user icon-user\"></i> Login</a></li>\n<li class=\"divider\"></li>\n<li><a href=\"wakka.php?wiki=AidE\"><i  class=\"glyphicon glyphicon-question-sign icon-question-sign\"></i> Help</a></li>\n<li class=\"divider\"></li>\n<li><a href=\"wakka.php?wiki=WikiAdmin\"><i  class=\"glyphicon glyphicon-wrench icon-wrench\"></i> Administration</a></li>\n<li><a href=\"wakka.php?wiki=TableauDeBord\"><i  class=\"glyphicon glyphicon-dashboard icon-list-alt\"></i> Dashboard</a></li>\n<li><a href=\"wakka.php?wiki=BazaR\"><i  class=\"glyphicon glyphicon-briefcase icon-briefcase\"></i> Databases</a></li>\n</ul>\n</div>\n<div class=\"clearfix\"></div>\"\"','','WikiAdmin','127.0.0.1','Y','page',''),(58,'WikiAdmin','2016-01-22 19:23:17','{{grid}}\n{{col size=\"6\"}} \n===Layouts===\n - [[PageMenuHaut Top Menu]]\n - [[PageTitre Title]]\n - [[PageRapideHaut Top Admin buttons]]\n - [[PageHeader Header]]\n - [[PageFooter Footer]]\n\n===Users Admin===\nneeds admin rights\n{{editgroups}}\n{{end elem=\"col\"}} \n{{col size=\"6\"}} \n=== Tags ===\n{{admintag}}\n------\n=== Comments ===\n{{erasespamedcomments}}\n------\n{{end elem=\"col\"}}\n{{end elem=\"grid\"}}','','WikiAdmin','127.0.0.1','Y','page',''),(59,'PageMenuHaut','2016-01-22 19:26:18',' - Demos\n   - [[FileUpload Uploads]]\n   - [[DirectorY Directory]]\n   - [[MaP Map]]\n   - [[CalendaR Calendar]]]\n   - [[BloG Blog]]','','WikiAdmin','127.0.0.1','N','page',''),(60,'PageMenuHaut','2016-01-22 19:27:15',' - Demos\n   - [[FileUpload Uploads]]\n   - [[DirectorY Directory]]\n   - [[MaP Map]]\n   - [[CalendaR Calendar]]\n   - [[BloG Blog]]','','WikiAdmin','127.0.0.1','Y','page',''),(61,'FileUpload','2016-01-22 19:32:44','======Uploads======\n\n====Music====\n{{attach file=\"song.mp3\" desc=\"Good song in mp3\"}}\n\n\n====Picture====\n{{attach file=\"picture.jpg\" desc=\"Nice jpeg picture\" size=\"big\" class=\"lightshadow zoom\"}}\n\n\n====Mindmap====\n{{attach file=\"map.mm\" desc=\"freemind / freeplace .mm file\"}}','','','127.0.0.1','Y','page',''),(62,'ParametresUtilisateur','2016-01-22 19:36:43','//For now no sandstorm ACLs, please log with WikiAdmin / password//\n{{UserSettings}}','','WikiAdmin','WikiAdmin','N','page',''),(63,'ParametresUtilisateur','2016-01-22 19:37:50','//For now no sandstorm ACLs, please log with :\nwikiname : \"\"WikiAdmin\"\"\npassword : password//\n{{UserSettings}}','','WikiAdmin','WikiAdmin','Y','page',''),(64,'DirectorY','2016-01-22 20:07:55','======Directory======','','WikiAdmin','WikiAdmin','N','page',''),(65,'MaP','2016-01-22 20:12:10','======Map======\n{{bazarcarto}}','','WikiAdmin','WikiAdmin','N','page',''),(66,'CalendaR','2016-01-22 20:12:29','======Calendar======\n{{bazarcalendrier}}','','WikiAdmin','WikiAdmin','N','page',''),(67,'CalendaR','2016-01-22 20:12:42','======Calendar======\n{{calendrier}}','','WikiAdmin','WikiAdmin','Y','page',''),(68,'BloG','2016-01-22 20:13:32','======Blog======\n{{bazarliste id=\"11\" template=\"blog.tpl.html\"}}','','WikiAdmin','WikiAdmin','Y','page',''),(69,'HomePage','2016-01-22 20:22:51','======Welcome !======\n\nDouble-click on this text to edit the page or click on the \"Edit this page\" link below.\n\nYou can edit the footer, the header, the horizontal menu by double-clicking also.\n\nMore graphical options in the edit mode, with the button \"Theme\" on the bottom of the page.\n\nFor admin links, click on the top right cog button.\n\nEnjoy !','','','WikiAdmin','N','page',''),(70,'HomePage','2016-01-22 20:31:52','======Welcome !======\n\nDouble-click on this text to edit the page or click on the \"Edit this page\" link below.\n\nYou can edit the footer, the header, the horizontal menu by double-clicking also.\n\nMore graphical options in the edit mode, with the button \"Theme\" on the bottom of the page.\n\nFor admin links, click on the top right cog button.\n\nEnjoy !\n\n\"\"<script>window.parent.postMessage({\'setTitle\': document.title}, \'*\');</script>\"\"','','','WikiAdmin','N','page',''),(71,'FlorianSchmitt','2016-01-22 20:46:26','{\"bf_titre\":\"Florian Schmitt\",\"bf_baseline\":\"Web developper\",\"bf_description\":\"Cool, I can talk about me here\",\"bf_mail\":\"mrflos@gmail.com\",\"bf_site_internet\":\"http:\\/\\/florian-express.info\",\"bf_adresse\":\"Butyrskaya 3\",\"bf_code_postal\":\"127125\",\"bf_ville\":\"Moscow\",\"bf_latitude\":\"55.57834467218206\",\"bf_longitude\":\"37.79296875\",\"id_typeannonce\":\"18\",\"id_fiche\":\"FlorianSchmitt\",\"createur\":\"WikiAdmin\",\"categorie_fiche\":\"Directory\",\"date_creation_fiche\":\"2016-01-22 20:46:26\",\"statut_fiche\":\"1\",\"imagebf_image\":\"bf_imageflo-sourire.jpg\",\"carte_google\":\"55.57834467218206|37.79296875\",\"date_maj_fiche\":\"2016-01-22 20:46:26\"}','','WikiAdmin','WikiAdmin','Y','page',''),(72,'DirectorY','2016-01-22 20:47:08','======Directory======\n{{bazarliste idtypeannonce=\"18\" template=\"material-card.tpl.html\"}}','','WikiAdmin','WikiAdmin','Y','page',''),(73,'MaP','2016-01-22 20:47:59','======Map======\n{{bazarcarto id=\"18\" zoom=\"3\"}}','','WikiAdmin','WikiAdmin','N','page',''),(74,'MaP','2016-01-22 20:48:19','======Map======\n{{bazarcarto id=\"18\" zoom=\"2\"}}','','WikiAdmin','WikiAdmin','N','page',''),(75,'MaP','2016-01-22 20:48:41','======Map======\n{{bazarcarto id=\"18\" zoom=\"2\" height=\"500px\"}}','','WikiAdmin','WikiAdmin','Y','page',''),(76,'PageTitre','2016-01-22 21:18:40','YesWiki website','','WikiAdmin','127.0.0.1','N','page',''),(77,'PageTitre','2016-01-22 21:18:57','\"\"YesWiki\"\" website','','WikiAdmin','127.0.0.1','Y','page',''),(78,'HomePage','2016-01-22 21:20:00','======Welcome !======\n\nDouble-click on this text to edit the page or click on the \"Edit this page\" link below.\n\nYou can edit the footer, the header, the horizontal menu by double-clicking also.\n\nMore graphical options in the edit mode, with the button \"Theme\" on the bottom of the page.\n\nFor admin links, click on the top right cog button.\n\nTo create a new page, just write a CamelCase word and save the page.\n\nEnjoy !\n\n\"\"<script>window.parent.postMessage({\'setTitle\': document.title}, \'*\');</script>\"\"','','','127.0.0.1','Y','page','');
/*!40000 ALTER TABLE `yeswiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeswiki_referrers`
--

DROP TABLE IF EXISTS `yeswiki_referrers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yeswiki_referrers` (
  `page_tag` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `referrer` char(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `idx_page_tag` (`page_tag`),
  KEY `idx_time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeswiki_referrers`
--

LOCK TABLES `yeswiki_referrers` WRITE;
/*!40000 ALTER TABLE `yeswiki_referrers` DISABLE KEYS */;
/*!40000 ALTER TABLE `yeswiki_referrers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeswiki_triples`
--

DROP TABLE IF EXISTS `yeswiki_triples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yeswiki_triples` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resource` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `property` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resource` (`resource`),
  KEY `property` (`property`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeswiki_triples`
--

LOCK TABLES `yeswiki_triples` WRITE;
/*!40000 ALTER TABLE `yeswiki_triples` DISABLE KEYS */;
INSERT INTO `yeswiki_triples` VALUES (1,'ThisWikiGroup:admins','http://www.wikini.net/_vocabulary/acls','WikiAdmin'),(2,'FileUpload','http://outils-reseaux.org/_vocabulary/metadata','{\"theme\":\"bootstrap3\",\"style\":\"bootstrap.min.css\",\"squelette\":\"1col.tpl.html\",\"bgimg\":\"\"}'),(3,'DirectorY','http://outils-reseaux.org/_vocabulary/metadata','{\"theme\":\"bootstrap3\",\"style\":\"bootstrap.min.css\",\"squelette\":\"1col.tpl.html\",\"bgimg\":\"\"}'),(4,'MaP','http://outils-reseaux.org/_vocabulary/metadata','{\"theme\":\"bootstrap3\",\"style\":\"bootstrap.min.css\",\"squelette\":\"1col.tpl.html\",\"bgimg\":\"\"}'),(5,'CalendaR','http://outils-reseaux.org/_vocabulary/metadata','{\"theme\":\"bootstrap3\",\"style\":\"bootstrap.min.css\",\"squelette\":\"1col.tpl.html\",\"bgimg\":\"\"}'),(6,'BloG','http://outils-reseaux.org/_vocabulary/metadata','{\"theme\":\"bootstrap3\",\"style\":\"bootstrap.min.css\",\"squelette\":\"1col.tpl.html\",\"bgimg\":\"\"}'),(7,'FlorianSchmitt','http://outils-reseaux.org/_vocabulary/type','fiche_bazar');
/*!40000 ALTER TABLE `yeswiki_triples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeswiki_users`
--

DROP TABLE IF EXISTS `yeswiki_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yeswiki_users` (
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `motto` text COLLATE utf8_unicode_ci NOT NULL,
  `revisioncount` int(10) unsigned NOT NULL DEFAULT '20',
  `changescount` int(10) unsigned NOT NULL DEFAULT '50',
  `doubleclickedit` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `signuptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `show_comments` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`name`),
  KEY `idx_name` (`name`),
  KEY `idx_signuptime` (`signuptime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeswiki_users`
--

LOCK TABLES `yeswiki_users` WRITE;
/*!40000 ALTER TABLE `yeswiki_users` DISABLE KEYS */;
INSERT INTO `yeswiki_users` VALUES ('WikiAdmin','5f4dcc3b5aa765d61d8327deb882cf99','joe@doe.com','',20,50,'Y','2015-07-08 10:08:31','N');
/*!40000 ALTER TABLE `yeswiki_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-22 21:21:10
