<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div id="articleList"> 
 <!-- {foreach from=$recommend_article name=article_list item=article} -->
 <dl<!-- {if $smarty.foreach.article_list.last} --> class="last"<!-- {/if} -->>
 <dt><a href="{$article.url}">{$article.title}</a></dt>
 <dd{if $article.image} class="imgBox"{/if}>
 <p class="desc">{$article.description|truncate:156:"..."}</p>
 <!-- {if $article.image} -->
 <p class="img"><img src="{$article.image}" width="100"></p>
 <!-- {/if} -->
 </dd>
 <dd class="time">{$article.add_time}</dd>
 </dl>
 <!-- {/foreach} --> 
</div>
