<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="pager">
 <ul>
  <!-- {if $pager.page ne 1} -->
  <li><a href="{$pager.previous}">«</a></li>
  <!-- {/if} -->
  <!-- {foreach from=$pager.box item=box} -->
  <li{if $box.cur} class="active"{/if}><a href="{$box.url}">{$box.page}</a></li>
  <!-- {/foreach} -->
  <!-- {if $pager.page lt $pager.page_count} -->
  <li><a href="{$pager.next}">»</a></li>
  <!-- {/if} -->
 </ul>
</div>