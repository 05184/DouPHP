<?php
/**
 * DouPHP
 * --------------------------------------------------------------------------------------------------
 * 版权所有 2013-2018 漳州豆壳网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.douco.com
 * --------------------------------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在遵守授权协议前提下对程序代码进行修改和使用；不允许对程序代码以任何形式任何目的的再发布。
 * 授权协议：http://www.douco.com/license.html
 * --------------------------------------------------------------------------------------------------
 * Author: DouCo
 * Release Date: 2018-05-23
 */
if (!defined('IN_DOUCO')) {
    die('Hacking attempt');
}

// 全站数据调用
$article_cat_id = $firewall->get_legal_id('article_category', $_REQUEST['id'], $_REQUEST['unique_id']);
if ($article_cat_id == '-1') {
    $article_id = $firewall->get_legal_id('article', $_REQUEST['id'], $_REQUEST['unique_id']);
    $article_cat_id = $dou->get_one("SELECT cat_id FROM " . $dou->table('article') . " WHERE id = '$article_id'"); 
}
$smarty->assign('article_tree', $dou->get_category('article_category', 0, $article_cat_id));

?>