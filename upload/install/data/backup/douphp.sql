-- DouPHP v1.x SQL Dump Program
-- http://localhost/douphp.system/doublog/
-- 
-- DATE : 2019-07-08 15:32:24
-- MYSQL SERVER VERSION : 5.5.53
-- PHP VERSION : 5.4.45
-- DouPHP VERSION : v1.5 Release 20190703

DROP TABLE IF EXISTS `dou_admin`;
CREATE TABLE `dou_admin` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO dou_admin VALUES('1','admin','','7fef6171469e80d32c0559f88b377245','ALL','1562486531','1562571137','127.0.0.1');

DROP TABLE IF EXISTS `dou_admin_log`;
CREATE TABLE `dou_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO dou_admin_log VALUES('1','1381887740','1','系统设置: 编辑成功','127.0.0.1');
INSERT INTO dou_admin_log VALUES('2','1381887745','1','编辑导航: 公司简介','127.0.0.1');
INSERT INTO dou_admin_log VALUES('3','1381887749','1','编辑幻灯: 广告图片01','127.0.0.1');
INSERT INTO dou_admin_log VALUES('4','1381887753','1','编辑单页面: 联系我们','127.0.0.1');
INSERT INTO dou_admin_log VALUES('5','1381887756','1','编辑商品分类: 电子数码','127.0.0.1');
INSERT INTO dou_admin_log VALUES('6','1381887759','1','编辑文章分类: 公司动态','127.0.0.1');
INSERT INTO dou_admin_log VALUES('7','1381887775','1','编辑单页面: 企业荣誉','127.0.0.1');
INSERT INTO dou_admin_log VALUES('8','1381887778','1','编辑单页面: 公司简介','127.0.0.1');
INSERT INTO dou_admin_log VALUES('9','1381887781','1','编辑单页面: 营销网络','127.0.0.1');

DROP TABLE IF EXISTS `dou_article`;
CREATE TABLE `dou_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `defined` text NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(50) DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `add_time` varchar(50) DEFAULT NULL,
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO dou_article VALUES('1','1','DouPHP后台登录不了','','后台登录不了，主要问题集中在，输入正确的验证码后仍然提示验证码不对，这个问题造成的原因是输入的验证码无法传送给后台程序，造成这个问题多数是由于服务器不支持session或者cookie造成，所以这个时候您就需要与空间商取得联系，让他们开启session和cookie功能，如果是自己的服务器，则需自己查阅相关技术文档解决此问题。 <br />','','0','','','1372261194','0');
INSERT INTO dou_article VALUES('2','1','使用DouBAK将您的网站转移至另一个服务器','','1.下载程序并解压。<br />\r\n2.将doubak目录上传至站点根目录。<br />\r\n3.运行http://www.domain.com/doubak(domain表示你的域名)，点击\"立即备份\"将数据库备份。<br />\r\n4，将站点文件下载并修改\"data/config.php\"改成新服务器的数据库信息。<br />\r\n5，最后上传所有站点文件至新的服务器，运行http://www.domain.com/doubak点击\"恢复数据库\"即可。','','0','','','1372261407','0');
INSERT INTO dou_article VALUES('3','1','新安装或者升级后都是乱码','','造成乱码问题一般是由于上传PHP文件时，FTP没有开启二进制上传模式造成的，解决方法是使用二进制重新上传一次。<br />\r\n<br />\r\n几种常见的FTP软件的二进制设置说明：<br />\r\n<br />\r\n1、FlashFXP：<br />\r\n打开 FlashFXP：在工具栏中，选项 =&gt; 参数（也可以直接按F6键），在弹出来的窗口中，选择“传输(T)”卡，在传输模式中选择“二进制”。<br />\r\n<br />\r\n2、LeapFTP：<br />\r\n打开 LeapFTP： 在 Options（选项）菜单中选择 Parameters（参数设置），选择其中的（ASCII 扩展名），出现列表后，选中其中的“*.PHP”，点右边的（删除），再点右边的（确定）即可。如果“*.PHP”项目不存在的话，可直接使用，不需另行设置。<br />\r\n<br />\r\n3、CuteFTP：<br />\r\n打开 CuteFTP： 进入软件后按 ALT+F7 进入 Global Options（全局选项），传输 =&gt; 传输方式 =&gt;&nbsp;<br />\r\n<br />\r\n二进制<br />\r\n4、filezilla<br />\r\n打开 filezilla： 在工具栏中，传输 =&gt; 传送类型 =&gt; 选择“二进制”<br />\r\n<br />\r\n注意：二进制是binary 不是ASCII！！<br />\r\n<br />','','0','','','1372261508','0');
INSERT INTO dou_article VALUES('4','1','开启伪静态后提示500错误','','如果您开启伪静态后网站无法打开，提示500错误，一般是由于服务器本身不支持伪静态造成，需要联系空间商重启服务器并开启伪静态功能<br />','','0','','','1372261551','0');
INSERT INTO dou_article VALUES('5','1','网站建设要素之如何制定一份网站策划方案','','要建立一个网站，需要从网站定位，到设计、网站结构、内容准备、内外链的建设等等，是一个复杂繁琐的过程，需要准备一份网站的策划方案。本文将简要描述，从网站的定位到最终的网站建成，整个过程。<br />\r\n<br />\r\n一、网站的定位<br />\r\n<br />\r\n分析：给网站定位，策划一个网站，这是第一步，只有给网站定位好了，才能按照定位的关键词展开。如何给网站定位，如何选择网站的核心关键词。选择核心关键词，需要考虑的因素有：搜索量大、有一定的商业价值、竞争度相对较低。<br />\r\n<br />\r\n这里有个小建议，一般建站前，肯定清楚网站属于哪一个类别，然后根据这个类别的核心关键词，通过百度蜂巢系统，将相关关键词拉出，再根据需要考虑的因素，选择最合适的关键词<br />\r\n<br />\r\n二、确定网站三要素<br />\r\n<br />\r\n分析：建站的三要素，指的是程序、域名和空间，在确定了网站的核心关键词以后，可以由关键词确定网站名称，然后再根据网站名称，选择域名；根据网站主题，选择程序；关于空间，最好是正规空间商提供的服务器，稳定、安全，虽然价格可能比较贵。<br />\r\n<br />\r\n在建立网站需要哪些条件一文中，有详细介绍网站三要素的内容，感兴趣的童鞋可以看看。<br />\r\n<br />\r\n三、确定网站关键词<br />\r\n<br />\r\n分析：这里所说的关键词，是根据已经定位好的核心关键词，再总结所有长尾词的特点，确定一批转化率较高的长尾词，可以作为网站的目录等，分布在首页中<br />\r\n<br />\r\n四、确定网站标题标签<br />\r\n<br />\r\n分析：在网站的定位时，已经确定了网站的关键词，然后再根据网站的关键词，填写网站标题、关键词标签、描述标签。这些都是网站优化的基础，需要注意的是，尽量将内容写的自然，关键词千万不要堆积。标题中，包括三个关键词即可<br />\r\n<br />\r\n五、完善网站布局<br />\r\n<br />\r\n分析：根据前面确定的关键词、长尾词体系，完善网站的子目录及首页的布局，包括核心关键词、近义词、同义词等，增加关键词的密度。下一章，Q猪将从分析robin的广场舞的首页，讲一下网站如何布局。<br />\r\n<br />\r\n六、构建网站结构<br />\r\n<br />\r\n分析：网站的结构尽量以扁平树形结构，具体可以看下，如何制作合理的网站结构。在构建网站结构的同时，注意URL的简单、规范。<br />\r\n<br />\r\n七、编辑网站内容<br />\r\n<br />\r\n分析：网站的内容，尽量以原创和质量较高的微原创为主，注意网站内链的建设，可以建立一份长尾词记录单，记录每一篇文章优化的关键词。<br />\r\n<br />\r\n在编辑文章内容时，注意关键词的四处一词，标题，关键词标签、描述，正文，还有网站其他页面关于帖子的锚文本。<br />\r\n<br />\r\n如果网站的内容编辑，积累到一定程度以后，可以将网站的URL提交给搜索引擎即可。然后就是外链的建设，还有网站内容的，逐步增加。<br />','','4','网站策划','','1372261651','0');
INSERT INTO dou_article VALUES('6','1','如何新增语言文件','','第一步 在 “languages”目录下建立如 “zh_tw” 然后将拷贝 zh_cn 下的 web.lang.php 到这个目录下<br />\r\n<br />\r\n第二步 登陆DouPHP后台，在 “系统设置” -&gt; “系统语言” 选择您刚才添加的语言<br />\r\n<br />\r\n提示：由于国内使用即使是英文版的网站后台也是中文的，所以暂不开放后台语言的切换<br />\r\n<br />','','15','','','1372261775','0');
INSERT INTO dou_article VALUES('7','2','如何修改手机版地址','','1，打开“data/config.php”找到 define(\'M_PATH\',\'m\') 将 m 改为新的后台目录名称<br />\r\n2，找到根目录下“m”目录改为新的后台目录名称<br />\r\n<br />','','3','','','1372261909','0');
INSERT INTO dou_article VALUES('8','2','图片无法上传或者缩略图无法生成','','1，根目录下images和data目录无写入权限（注：包括其下子目录）<br />\r\n2，服务器没有开启文件上传功能<br />\r\n<br />\r\n造成缩略图无法生成主要原因：服务器没有开启GD库功能<br />\r\n<br />','','7','','','1372261997','0');
INSERT INTO dou_article VALUES('9','2','如何建立一个新的DouPHP模板','','第一步 打开 “theme”目录 ，将“default”目录复制一份，更名为您打算制作的模板名称（可包含英文或数字），然后打开您的模板，了解下模板目录结构<br />\r\n<br />\r\n第二步 登陆DouPHP后台，在 “系统设置” -&gt; “站点模板” 选择您刚才添加的模板<br />\r\n<br />','','16','','','1372262040','0');
INSERT INTO dou_article VALUES('10','1','如何添加自定义字段','','以商品为例，如果要给商品加上自定义字段，首先找到“系统设置”-&gt;[自定义]然后填入如“颜色,尺寸,型号”中间以英文逗号隔开，然后在商品编辑页面会看到相应的自定义字段，输入对应的值即可<br />','','115','','','1372262079','0');

DROP TABLE IF EXISTS `dou_article_category`;
CREATE TABLE `dou_article_category` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(30) NOT NULL DEFAULT '',
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) NOT NULL DEFAULT '0',
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO dou_article_category VALUES('1','help','使用技巧','','','0','10');
INSERT INTO dou_article_category VALUES('3','faq','常见问题','','','0','50');
INSERT INTO dou_article_category VALUES('2','theme','模板制作','','','0','20');

DROP TABLE IF EXISTS `dou_config`;
CREATE TABLE `dou_config` (
  `name` varchar(80) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `box` varchar(255) NOT NULL DEFAULT '',
  `tab` varchar(10) NOT NULL DEFAULT 'main',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO dou_config VALUES('site_name','DouPHP轻博客','text','','main','1');
INSERT INTO dou_config VALUES('site_title','DouPHP轻博客','text','','main','2');
INSERT INTO dou_config VALUES('site_keywords','DouPHP轻博客','text','','main','3');
INSERT INTO dou_config VALUES('site_description','DouPHP轻博客','text','','main','4');
INSERT INTO dou_config VALUES('site_logo','logo.png','file','','main','5');
INSERT INTO dou_config VALUES('site_address','福建省漳州市芗城区','text','','main','6');
INSERT INTO dou_config VALUES('site_closed','0','radio','','main','7');
INSERT INTO dou_config VALUES('icp','','text','','main','8');
INSERT INTO dou_config VALUES('tel','0596-8888888','text','','main','9');
INSERT INTO dou_config VALUES('fax','0596-6666666','text','','main','10');
INSERT INTO dou_config VALUES('qq','','text','','main','11');
INSERT INTO dou_config VALUES('email','your@domain.com','text','','main','12');
INSERT INTO dou_config VALUES('language','zh_cn','select','','main','13');
INSERT INTO dou_config VALUES('rewrite','1','radio','','main','14');
INSERT INTO dou_config VALUES('sitemap','1','radio','','main','15');
INSERT INTO dou_config VALUES('captcha','1','radio','','main','16');
INSERT INTO dou_config VALUES('guestbook_check_chinese','1','radio','','main','17');
INSERT INTO dou_config VALUES('code','','textarea','','main','18');
INSERT INTO dou_config VALUES('thumb_width','135','text','','display','1');
INSERT INTO dou_config VALUES('thumb_height','135','text','','display','2');
INSERT INTO dou_config VALUES('price_decimal','2','text','','display','3');
INSERT INTO dou_config VALUES('display','a:2:{s:7:\"article\";s:2:\"10\";s:12:\"home_article\";s:1:\"5\";}','array','','display','4');
INSERT INTO dou_config VALUES('defined','a:1:{s:7:\"article\";s:0:\"\";}','array','','defined','1');
INSERT INTO dou_config VALUES('mail_service','0','radio','','mail','1');
INSERT INTO dou_config VALUES('mail_host','smtp.domain.com','text','','mail','2');
INSERT INTO dou_config VALUES('mail_port','25','text','','mail','3');
INSERT INTO dou_config VALUES('mail_ssl','0','radio','','mail','4');
INSERT INTO dou_config VALUES('mail_username','','text','','mail','5');
INSERT INTO dou_config VALUES('mail_password','','text','','mail','6');
INSERT INTO dou_config VALUES('weixin_appid','','text','','weixin','1');
INSERT INTO dou_config VALUES('weixin_appsecret','','text','','weixin','2');
INSERT INTO dou_config VALUES('mobile_name','DouPHP','text','','mobile','1');
INSERT INTO dou_config VALUES('mobile_title','DouPHP触屏版','text','','mobile','2');
INSERT INTO dou_config VALUES('mobile_keywords','DouPHP,DouPHP触屏版','text','','mobile','3');
INSERT INTO dou_config VALUES('mobile_description','DouPHP,DouPHP触屏版','text','','mobile','4');
INSERT INTO dou_config VALUES('mobile_logo','','file','','mobile','5');
INSERT INTO dou_config VALUES('mobile_subdir_binding','0','radio','','mobile','6');
INSERT INTO dou_config VALUES('mobile_display','a:2:{s:7:\"article\";i:10;s:12:\"home_article\";i:5;}','array','','mobile','7');
INSERT INTO dou_config VALUES('close_update','0','radio','','developer','1');
INSERT INTO dou_config VALUES('close_douphp_plus','0','radio','','developer','2');
INSERT INTO dou_config VALUES('close_mobile','0','radio','','developer','3');
INSERT INTO dou_config VALUES('developer','1','hidden','','hidden','1');
INSERT INTO dou_config VALUES('site_theme','blog','hidden','','','2');
INSERT INTO dou_config VALUES('mobile_theme','mblog','hidden','','','3');
INSERT INTO dou_config VALUES('build_date','1562486532','hidden','','','4');
INSERT INTO dou_config VALUES('update_number','a:6:{s:6:\"update\";s:1:\"0\";s:5:\"patch\";s:1:\"0\";s:6:\"module\";s:1:\"0\";s:6:\"plugin\";s:1:\"0\";s:5:\"theme\";s:1:\"0\";s:6:\"mobile\";N;}','hidden','','','5');
INSERT INTO dou_config VALUES('update_date','a:4:{s:6:\"system\";a:2:{s:6:\"update\";i:20190703;s:5:\"patch\";i:20190703;}s:6:\"module\";a:1:{s:7:\"article\";s:8:\"20190707\";}s:5:\"theme\";a:1:{s:4:\"blog\";s:8:\"20190707\";}s:6:\"mobile\";a:1:{s:5:\"mblog\";s:8:\"20190707\";}}','hidden','','','6');
INSERT INTO dou_config VALUES('cloud_account','','hidden','','','7');
INSERT INTO dou_config VALUES('hash_code','00b0814585e2a823c8b3a15798bfe7b8','hidden','','','8');
INSERT INTO dou_config VALUES('douphp_version','v1.5 Release 20190703','hidden','','','9');

DROP TABLE IF EXISTS `dou_file`;
CREATE TABLE `dou_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(30) NOT NULL DEFAULT '',
  `file` varchar(255) NOT NULL DEFAULT '',
  `module` varchar(20) NOT NULL DEFAULT '',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb_size` int(10) unsigned NOT NULL DEFAULT '0',
  `action_time` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO dou_file VALUES('1','9mqr53t.file','data/slide/20130514acunau.jpg','show','1','main','116696','6353','1530249928','1530249928');
INSERT INTO dou_file VALUES('2','9ckaw93.file','data/slide/20130514rjzqdt.jpg','show','2','main','193412','6353','1530249928','1530249928');
INSERT INTO dou_file VALUES('3','rupuz6g.file','data/slide/20130514xxsctt.jpg','show','3','main','72163','6353','1530249928','1530249928');
INSERT INTO dou_file VALUES('4','gryv365.file','data/slide/20130523hiqafl.jpg','show','4','main','178178','6353','1530249928','1530249928');
INSERT INTO dou_file VALUES('5','ods99li.file','data/slide/m/20140921rqmzcp.jpg','show','5','main','89237','6353','1530249928','1530249928');
INSERT INTO dou_file VALUES('6','3bgcgri.file','data/slide/m/20140921kwoypm.jpg','show','6','main','113780','6353','1530249928','1530249928');
INSERT INTO dou_file VALUES('7','i9lo99y.file','data/slide/m/20140921ypmnew.jpg','show','7','main','46264','6353','1530249928','1530249928');
INSERT INTO dou_file VALUES('8','jljwmcv.file','data/slide/m/20140921demloy.jpg','show','8','main','115613','6353','1530249928','1530249928');

DROP TABLE IF EXISTS `dou_nav`;
CREATE TABLE `dou_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL,
  `nav_name` varchar(255) NOT NULL,
  `guide` varchar(255) NOT NULL DEFAULT '0',
  `parent_id` smallint(5) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

INSERT INTO dou_nav VALUES('1','page','公司简介','1','0','middle','10');
INSERT INTO dou_nav VALUES('2','page','企业荣誉','2','1','middle','10');
INSERT INTO dou_nav VALUES('3','page','发展历程','3','1','middle','20');
INSERT INTO dou_nav VALUES('4','page','联系我们','4','1','middle','30');
INSERT INTO dou_nav VALUES('17','page','公司简介','1','0','bottom','10');
INSERT INTO dou_nav VALUES('18','page','营销网络','6','0','bottom','20');
INSERT INTO dou_nav VALUES('19','page','企业荣誉','2','0','bottom','30');
INSERT INTO dou_nav VALUES('20','page','人才招聘','5','0','bottom','40');
INSERT INTO dou_nav VALUES('21','page','联系我们','4','0','bottom','50');
INSERT INTO dou_nav VALUES('25','page','公司简介','1','0','mobile','10');
INSERT INTO dou_nav VALUES('27','article_category','文章中心','0','0','mobile','30');
INSERT INTO dou_nav VALUES('28','page','企业荣誉','2','0','mobile','40');
INSERT INTO dou_nav VALUES('29','page','营销网络','6','0','mobile','50');
INSERT INTO dou_nav VALUES('30','page','人才招聘','5','0','mobile','60');
INSERT INTO dou_nav VALUES('31','page','联系我们','4','0','mobile','255');
INSERT INTO dou_nav VALUES('33','mobile','手机版','0','0','top','10');
INSERT INTO dou_nav VALUES('34','mobile','手机版','0','0','bottom','60');

DROP TABLE IF EXISTS `dou_page`;
CREATE TABLE `dou_page` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(30) NOT NULL DEFAULT '',
  `parent_id` smallint(5) NOT NULL DEFAULT '0',
  `page_name` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO dou_page VALUES('1','about','0','公司简介','DouPHP 是一款轻量级企业网站管理系统，基于PHP+Mysql架构的，可运行在Linux、Windows、MacOSX、Solaris等各种平台上，系统搭载Smarty模板引擎，支持自定义伪静态，前台模板采用DIV+CSS设计，后台界面设计简洁明了，功能简单易具有良好的用户体验，稳定性好、扩展性及安全性强，可面向中小型站点提供网站建设解决方案。','公司简介','DouPHP是一款轻量级企业网站管理系统，基于PHP+Mysql架构的，可运行在Linux、Windows、MacOSX、Solaris等各种平台上，系统搭载Smarty模板引擎，支持自定义伪静态，前台模板采用DIV+CSS设计，后台界面设计简洁明了，功能简单易具有良好的用户体验，稳定性好、扩展性及安全性强，可面向中小型站点提供网站建设解决方案。');
INSERT INTO dou_page VALUES('2','honor','1','企业荣誉','企业荣誉','企业荣誉','企业荣誉');
INSERT INTO dou_page VALUES('3','history','1','发展历程','发展历程','发展历程','发展历程');
INSERT INTO dou_page VALUES('4','contact','1','联系我们','通讯地址：<br />\r\n<span style=\"color:#D7D7D7;\">--------------------------------------------------------------------------------------------------------------------------------</span><br />\r\n福建省漳州市芗城区，邮编363000<br />\r\n<br />\r\n客服邮箱：<br />\r\n<span style=\"color:#D7D7D7;\">--------------------------------------------------------------------------------------------------------------------------------</span><br />\r\nDouPHP售后服务邮箱：email@email.com<br />\r\nDouPHP业务受理邮箱：<span>email@email.com</span><br />\r\n如您需要订制开发请在邮件中注明您的大概要求，我们将在一个工作日内给予回复。<br />\r\n<br />\r\n客服电话：<br />\r\n<span style=\"color:#D7D7D7;\">--------------------------------------------------------------------------------------------------------------------------------</span><br />\r\n<span>DouPHP</span>的建站咨询电话为 0596-1234567。<br />\r\n客服电话工作时间为周一至周日 8:00-20:00，节假日不休息，免长途话费。<br />\r\n我们将随时为您献上真诚的服务。<br />\r\n<br />\r\n网站网址：<br />\r\n<span style=\"color:#D7D7D7;\">--------------------------------------------------------------------------------------------------------------------------------</span><br />\r\nwww.dou.co<br />','联系我们','联系我们');
INSERT INTO dou_page VALUES('5','job','0','人才招聘','人才招聘','人才招聘','人才招聘');
INSERT INTO dou_page VALUES('6','market','0','营销网络','营销网络','营销网络','营销网络');

DROP TABLE IF EXISTS `dou_show`;
CREATE TABLE `dou_show` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `show_name` varchar(60) NOT NULL DEFAULT '',
  `show_link` varchar(255) NOT NULL DEFAULT '',
  `show_img` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO dou_show VALUES('1','广告图片01','http://www.dou.co','9mqr53t.file','pc','1');
INSERT INTO dou_show VALUES('2','广告图片02','http://www.dou.co','9ckaw93.file','pc','2');
INSERT INTO dou_show VALUES('3','广告图片03','http://www.dou.co','rupuz6g.file','pc','3');
INSERT INTO dou_show VALUES('4','广告图片04','http://www.dou.co','gryv365.file','pc','4');
INSERT INTO dou_show VALUES('5','手机版广告图片01','http://m.douco.com','ods99li.file','mobile','10');
INSERT INTO dou_show VALUES('6','手机版广告图片02','http://m.douco.com','3bgcgri.file','mobile','20');
INSERT INTO dou_show VALUES('7','手机版广告图片03','http://m.douco.com','i9lo99y.file','mobile','30');
INSERT INTO dou_show VALUES('8','手机版广告图片04','http://m.douco.com','jljwmcv.file','mobile','40');

