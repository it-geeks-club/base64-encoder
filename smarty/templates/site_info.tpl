{extends file='base.tpl'}

{block name='title'}Site info{/block}

{block name='content'}
<div class="content-header">
  <h1>
    Site info
  </h1>
</div>
<div class="page-content inset">
  Site "base-64.tk" is a documentation for base64 encoding scheme.
  {math equation='rand(1,2)' assign='dev_id'} 
  {if $dev_id eq 1}
    Site developed by <a href="http://uzumaxy.tk">uzumaxy</a> and <a href="http://lastfm.ru/user/Vov4uk-Bratuk">opium999</a>.
  {elseif $dev_id eq 2}
    Site developed by <a href="http://lastfm.ru/user/Vov4uk-Bratuk">opium999</a> and <a href="http://uzumaxy.tk">uzumaxy</a>.
  {/if}
</div>
{/block}