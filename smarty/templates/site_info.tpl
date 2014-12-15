{extends file='base.tpl'}

{block name='title'}Site info{/block}

{block name='content'}
<div class="content-header">
  <h1>
    Site info
  </h1>
</div>
<div class="page-content inset">
  <p>
    <a href="/">encoder.tk</a> is a website fully about base64 encoding scheme.
    This website could help you understand what is a "base64 encoding scheme",
    what is a reason of usage base64 and how you can use it in your own project.
  </p>
  <p>
    {math equation='rand(1,2)' assign='dev_id'}
    {if $dev_id eq 1}
      Site developed by <a href="https://github.com/uzumaxy">Maxim Grischuk</a> and
      <a href="https://github.com/vov4yk-bratyk">Vova Sirenko</a>.
    {elseif $dev_id eq 2}
      Site developed by <a href="https://github.com/vov4yk-bratyk">Vova Sirenko</a> and
      <a href="https://github.com/uzumaxy">Maxim Grischuk</a>.
    {/if}
  </p>
</div>
{/block}