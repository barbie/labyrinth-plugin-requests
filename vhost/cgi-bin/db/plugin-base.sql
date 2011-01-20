-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.7

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
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `section` varchar(15) NOT NULL,
  `command` varchar(15) NOT NULL,
  `actions` varchar(1000) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `onsuccess` varchar(32) DEFAULT NULL,
  `onerror` varchar(32) DEFAULT NULL,
  `onfailure` varchar(32) DEFAULT NULL,
  `secure` enum('off','on','either','both') DEFAULT 'off',
  `rewrite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`section`,`command`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

-- core requests
INSERT INTO `requests` VALUES ('realm','admin','Content::GetVersion,Menus::LoadMenus','admin/layout.html','','','','','off','');
INSERT INTO `requests` VALUES ('realm','popup','','public/popup.html','','','','','off','');
INSERT INTO `requests` VALUES ('realm','public','Content::GetVersion,Hits::SetHits,Menus::LoadMenus','public/layout.html','','','','','off','');
INSERT INTO `requests` VALUES ('realm','wide','','public/layout-wide.html','','','','','off','');
INSERT INTO `requests` VALUES ('error','badmail','','','public/badmail.html','','','','off','');
INSERT INTO `requests` VALUES ('error','badcmd','','','public/badcommand.html','','','','off','');
INSERT INTO `requests` VALUES ('error','banuser','','','public/banuser.html','','','','off','');
INSERT INTO `requests` VALUES ('error','badaccess','Users::LoggedIn','','public/badaccess.html','','error-login','','off','');
INSERT INTO `requests` VALUES ('error','baduser','','','public/baduser.html','','','','off','');
INSERT INTO `requests` VALUES ('error','login','Users::Store','','users/user-login.html','','','','off','');
INSERT INTO `requests` VALUES ('error','message','','','public/error_message.html','','','','off','');
INSERT INTO `requests` VALUES ('home','admin','','','admin/backend_index.html','','','','off','');
INSERT INTO `requests` VALUES ('home','prefs','CPAN::Authors::Basic','','cpan/prefs.html','','','','off','');
INSERT INTO `requests` VALUES ('home','status','CPAN::Authors::Status','','content/status.html','','','','off','');
INSERT INTO `requests` VALUES ('home','main','CPAN::Authors::Status','','content/welcome.html','','','','off','');
INSERT INTO `requests` VALUES ('req','admin','Requests::Admin',NULL,'request/request_adminlist.html','','',NULL,'off',NULL);
INSERT INTO `requests` VALUES ('req','add','Requests::Add',NULL,'request/request_adminedit.html','','',NULL,'off',NULL);
INSERT INTO `requests` VALUES ('req','edit','Requests::Edit',NULL,'request/request_adminedit.html','','',NULL,'off',NULL);
INSERT INTO `requests` VALUES ('req','save','Requests::Save',NULL,'','req-edit','req-edit',NULL,'off',NULL);
INSERT INTO `requests` VALUES ('req','delete','Requests::Delete',NULL,'','req-admin','',NULL,'off',NULL);

-- admin plugin requests
INSERT INTO `requests` VALUES ('menu','save','Menus::Save','','','menu-edit','menu-edit','','off','');
INSERT INTO `requests` VALUES ('menu','admin','Menus::Admin','','menus/menu_adminlist.html','','','','off','');
INSERT INTO `requests` VALUES ('menu','add','Menus::Add','','menus/menu_adminedit.html','','','','off','');
INSERT INTO `requests` VALUES ('menu','delete','Menus::Delete','','','menu-admin','','','off','');
INSERT INTO `requests` VALUES ('menu','edit','Menus::Edit','','menus/menu_adminedit.html','','','','off','');
INSERT INTO `requests` VALUES ('imgs','save','Images::Save','','','imgs-admin','','imgs-failure','off','');
INSERT INTO `requests` VALUES ('imgs','admin','Images::List','','images/image-list.html','','','','off','');
INSERT INTO `requests` VALUES ('imgs','failure','','','images/image-failure.html','','','','off','');
INSERT INTO `requests` VALUES ('imgs','add','Images::Add','','images/image-edit.html','','','','off','');
INSERT INTO `requests` VALUES ('imgs','delete','Images::Delete','','','imgs-admin','','imgs-failure','off','');
INSERT INTO `requests` VALUES ('imgs','edit','Images::Edit','','images/image-edit.html','','','','off','');
INSERT INTO `requests` VALUES ('hits','admin','Hits::AdminPages','','hits/hits_admin.html','','','','off','');

-- public & admin plugin requests
INSERT INTO `requests` VALUES ('arts','save','Site::Save','','','arts-edit','arts-edit','arts-failure','off','');
INSERT INTO `requests` VALUES ('arts','admin','Site::Admin','','articles/arts-adminlist.html','','','','off','');
INSERT INTO `requests` VALUES ('arts','failure','','','articles/arts-failure.html','','','','off','');
INSERT INTO `requests` VALUES ('arts','add','Site::Add','','articles/arts-adminedit.html','','','','off','');
INSERT INTO `requests` VALUES ('arts','delete','Site::Delete','','','arts-admin','','arts-failure','off','');
INSERT INTO `requests` VALUES ('arts','item','Site::Item','','articles/arts-item.html','','','','off','');
INSERT INTO `requests` VALUES ('arts','edit','Site::Edit','','articles/arts-adminedit.html','','','','off','');
INSERT INTO `requests` VALUES ('user','add','Users::Add','','users/user-adminedit.html','','','','off','');
INSERT INTO `requests` VALUES ('user','acldel','Users::ACLDelete','','','user-acl','user-acl','user-acl','off','');
INSERT INTO `requests` VALUES ('user','item','Users::Item','','users/user-item.html','','','','off','');
INSERT INTO `requests` VALUES ('user','edit','Users::Edit','','users/user-edit.html','','','','off','');
INSERT INTO `requests` VALUES ('user','aclsave','Users::ACLSave','','','user-acl','user-acl','user-acl','off','');
INSERT INTO `requests` VALUES ('user','save','Users::Save','','','user-adminedit','user-adminedit','user-failure','off','');
INSERT INTO `requests` VALUES ('user','failure','','','users/user-failure.html','','','','off','');
INSERT INTO `requests` VALUES ('user','chng','Users::Password','','','user-edit','user-pass','','off','');
INSERT INTO `requests` VALUES ('user','logout','Users::Logout','','','home-main','','','off','');
INSERT INTO `requests` VALUES ('user','list','Users::UserLists','','users/user-list.html','','','','off','');
INSERT INTO `requests` VALUES ('user','admin','Users::Admin','','users/user-adminlist.html','','','','off','');
INSERT INTO `requests` VALUES ('user','pass','Users::Name','','users/user-pass.html','','','','off','');
INSERT INTO `requests` VALUES ('user','acl','Users::ACL','','users/user-acl.html','','','','off','');
INSERT INTO `requests` VALUES ('user','ban','Users::Ban','','','user-admin','','user-failure','off','');
INSERT INTO `requests` VALUES ('user','login','','','users/user-login.html','','','','off','');
INSERT INTO `requests` VALUES ('user','amend','Users::Save','','','user-edit','user-editerror','user-failure','off','');
INSERT INTO `requests` VALUES ('user','logged','Users::Login,Users::Retrieve','','','','user-login','user-login','off','');
INSERT INTO `requests` VALUES ('user','delete','Users::Delete','','','user-admin','','user-failure','off','');
INSERT INTO `requests` VALUES ('user','adminedit','Users::Edit','','users/user-adminedit.html','','','','off','');
INSERT INTO `requests` VALUES ('user','adminpass','Users::AdminPass',NULL,'users/user-adminpass.html','','',NULL,'off',NULL);
INSERT INTO `requests` VALUES ('user','adminchng','Users::AdminChng',NULL,'','user-adminedit','user-adminpass',NULL,'off',NULL);

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-11-20 11:58:37
