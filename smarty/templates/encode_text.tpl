{extends file='base.tpl'}

{block name='title'}Encode text{/block}

{block name='head'}
<script src="/js/pages/encode_text.js"></script>
{/block}

{block name='content'}
<div class="content-header">
    <h1>Encode text</h1>
</div>
<div class="page-content inset">
    <div class="row">
        <div class="col-md-12">
            <form role="form">
                <div class="form-group">
                    <label for="inputText">Input text</label>
                    <textarea class="form-control vertical-resize" rows="7" id="inputText"></textarea>
                </div>
                <div class="form-group pull-right">
                    <button type="button" data-role="sender" class="btn btn-primary">Encode</button>
                    <button type="reset" class="btn btn-default">Clear</button>
                </div>
                <br>
                <div class="form-group hidden">
                    <label for="encodedText">Encoded text</label>
                    <textarea class="form-control vertical-resize" rows="7" id="encodedText"></textarea>
                </div>
            </form>
        </div>
    </div>
</div>
{/block}
