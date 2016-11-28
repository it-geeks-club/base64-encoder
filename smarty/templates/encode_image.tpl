{extends file='base.tpl'}

{block name='title'}Encode image{/block}

{block name='head'}
<script src="/js/vendor/jquery_form.js"></script>
<script src="/js/pages/encode_image.js"></script>
{/block}

{block name='content'}
<div class="content-header">
    <h1>Encode image</h1>
</div>
<div class="page-content inset">
    <div class="row">
        <div class="col-md-12">
            <form role="form" enctype="multipart/form-data" id="imageUpload" method="post" action="/scripts/encode_image.php">
                <div class="row">
                    <div class="col-md-5">
                        <div class="well form-group">
                            <label for="imageFile">Image file</label>
                            <input type="file" id="imageFile" name="imageFile">
                        </div>
                        <div class="well form-group">
                            <label for="imageUrl">Image URL</label>
                            <input type="text" class="form-control" id="imageUrl" data-role="input-link" name="imageUrl" />
                        </div>
                        <div class="form-group">
                            <button type="submit" data-role="sender" class="btn btn-primary full-width">Encode</button>
                        </div>
                        <div class="form-group">
                            <button type="reset" class="btn btn-default full-width">Clear</button>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-6 text-center">
                        <img id="convertedImg" class="preview" alt="" src="/img/no_image_300x300.png" />
                        <p class="help-block">Maximum file size: 32 MB</p>
                        <p class="help-block">Supported formats: JPEG/JPG, PNG, GIF, BMP</p>
                    </div>
                </div>
            </form>
            <div id="output" class="hidden" style="clear:both">
                <h2>Representation of image BASE64 data</h2>
                <br>
                <div class="form-group">
                    <label for="rawBase64">RAW</label>
                    <textarea class="form-control vertical-resize" rows="3" id="rawBase64"></textarea>
                </div>
                <div class="form-group">
                    <label for="dataURLBase64">Data URI scheme</label>
                    <textarea class="form-control vertical-resize" rows="3" id="dataURLBase64"></textarea>
                </div>
                <div class="form-group">
                    <label for="cssBase64">CSS</label>
                    <textarea class="form-control vertical-resize" rows="5" id="cssBase64" wrap="off"></textarea>
                </div>
                <div class="form-group">
                    <label for="htmlBase64">HTML</label>
                    <textarea class="form-control vertical-resize" rows="1" id="htmlBase64" wrap="off"></textarea>
                </div>
                <div>
                    <label for="xmlBase64">XML</label>
                    <textarea class="form-control vertical-resize" rows="5" id="xmlBase64" wrap="off"></textarea>
                </div>
            </div>
        </div>
    </div>
</div>
{/block}
