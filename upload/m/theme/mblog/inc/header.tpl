<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div id="header">
 <a href="javascript:;" onClick="javascript:history.back(-1);" class="back"></a>
 <!-- {if $product_list || $search_module eq 'product'} -->
 <div class="topSearch">{include file="inc/search_product.tpl"}</div>
 <!-- {elseif $article_list || $search_module eq 'article'} -->
 <div class="topSearch">{include file="inc/search_article.tpl"}</div>
 <!-- {else} -->
 <em>{$head}</em>
 <!-- {/if} -->
 <a href="{$site.m_url}" class="home"></a>
 <!-- {if $open.order} -->
 <a href="{$url.cart}" class="order"></a>
 <!-- {/if} -->
</div>
