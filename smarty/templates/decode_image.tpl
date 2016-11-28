{extends file='base.tpl'}

{block name='title'}Decode image{/block}

{block name='head'}
<script src="/js/pages/decode_image.js"></script>
{/block}

{block name='content'}
<div class="content-header">
    <h1>Decode image</h1>
</div>
<div class="page-content inset">
    <div class="row">
        <div class="col-md-12">
            <form role="form">
                <div class="form-group">
                    <label for="inputText">BASE64 text</label>
                    <textarea class="form-control vertical-resize" rows="12" id="inputText"></textarea>
                </div>
                <div class="form-group pull-right">
                    <button type="button" class="btn btn-primary" data-role="sender">
                        Decode
                    </button>
                    <button type="reset" class="btn btn-default">
                        Clear
                    </button>
                </div>
            </form>
            <div id="output" class="hidden text-center clear-both">
                <a href=""><img src="" class="preview"></a>
            </div>
        </div>
    </div>
</div>
{/block}
