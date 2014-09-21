{extends file='base.tpl'}

{block name='title'}Decode text{/block}

{block name='head'}
  <script src="/js/pages/decode_text.js"></script>
{/block}

{block name='content'}
<div class="content-header">
  <h1>
    Decode text
  </h1>
</div>
<div class="page-content inset">
  <div class="row">
    <div class="col-md-12">
      <form role="form">
        <div class="form-group">
          <label for="inputText">BASE64 text</label>
          <textarea class="form-control vertical-resize" rows="7" id="inputText"></textarea>
        </div>
        <div class="form-group pull-right">
          <button type="button" data-role="sender" class="btn btn-primary">Decode</button>
          <button type="reset" class="btn btn-default">Clear</button>
        </div>
        <br/>
        <div class="form-group hidden">
          <label for="decodedText">Decoded text</label>
          <textarea class="form-control vertical-resize" rows="7" id="decodedText"></textarea>
        </div>
      </form>
    </div>
  </div>
</div>
{/block}