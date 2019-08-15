<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div id="lefter">
 <ul class="logo">
  <a href="{$site.root_url}">
   <i><img src="../images/{$site.site_logo}" alt="{$site.site_name}" title="{$site.site_name}" /></i>
   <em>{$site.site_name}</em>
  </a>
 </ul>
 <ul class="search">
  <div class="searchBox">
   <form name="search" id="search" method="get" action="{$site.root_url}">
    <label for="keyword">{$lang.search_cue}</label>
    <input type="hidden" name="module" value="article">
    <input name="s" type="text" class="keyword" title="{$lang.search_article_cue}" autocomplete="off" onclick="formClick(this,'{$lang.search_article}')" value="{if $keyword_article}{$keyword_article|escape}{else}{$lang.search_article}{/if}" size="25" maxlength="128">
    <input type="submit" class="btnSearch" value="{$lang.btn_submit}">
   </form>
  </div>
 </ul>
 <ul class="menu">
  <li class="m"><a href="{$site.root_url}" class="nav{if $index.cur} cur{/if}">{$lang.home}</a></li>
  <!-- {foreach from=$article_tree item=cate} -->
  <li class="m"><a href="{$cate.url}" class="nav{if $cate.cur} cur{/if}"{if $nav.target} target="_blank"{/if}>{$cate.cat_name}</a> 
   <!-- {if $cate.child} -->
   <ul>
    <!-- {foreach from=$cate.child item=child} -->
    <li><a href="{$child.url}" class="child{if $child.child} parent{/if}">{$child.cat_name}</a> 
     <!-- {if $child.child} -->
     <ul>
      <!-- {foreach from=$child.child item=children} -->
      <li><a href="{$children.url}" class="children">{$children.cat_name}</a></li>
      <!-- {/foreach} -->
     </ul>
     <!-- {/if} --> 
    </li>
    <!-- {/foreach} -->
   </ul>
   <!-- {/if} --> 
  </li>
  <!-- {/foreach} -->
  <!-- {foreach from=$nav_middle_list name=nav_middle_list item=nav} -->
  <li class="m"><a href="{$nav.url}" class="nav{if $nav.cur} cur{/if}"{if $nav.target} target="_blank"{/if}>{$nav.nav_name}</a> 
   <!-- {if $nav.child} -->
   <ul>
    <!-- {foreach from=$nav.child item=child} -->
    <li><a href="{$child.url}" class="child{if $child.child} parent{/if}">{$child.nav_name}</a> 
     <!-- {if $child.child} -->
     <ul>
      <!-- {foreach from=$child.child item=children} -->
      <li><a href="{$children.url}" class="children">{$children.nav_name}</a></li>
      <!-- {/foreach} -->
     </ul>
     <!-- {/if} --> 
    </li>
    <!-- {/foreach} -->
   </ul>
   <!-- {/if} --> 
  </li>
  <!-- {/foreach} -->
  <p class="clear"></p>
 </ul>
</div>
