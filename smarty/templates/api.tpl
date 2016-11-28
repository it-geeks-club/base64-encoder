{extends file='base.tpl'}

{block name='title'}API{/block}

{block name='head'}
<script src="/js/pages/api.js"></script>
{/block}

{block name='content'}
<div class="content-header">
    <h1>API</h1>
</div>
<div class="page-content inset">
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs" id="api_tabs">
                <li class="active">
                  <a href="#encode_text" data-toggle="tab">Text -> Base64</a>
                </li>
                <li>
                  <a href="#decode_text" data-toggle="tab">Base64 -> Text</a>
                </li>
                <li>
                  <a href="#encode_image" data-toggle="tab">Image -> Base64</a>
                </li>
                <li>
                  <a href="#decode_image" data-toggle="tab">Base64 -> Image</a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="encode_text">
                    <dl>
                        <dt>Description</dt>
                        <dd>Convert input text into base64 representation</dd>
                    </dl>
                    <dl>
                        <dt>URL</dt>
                        <dd>
                            <code>http://encoder.click/scripts/encode_text.php</code>
                        </dd>
                    </dl>
                    <dl>
                        <dt>Request type</dt>
                        <dd>POST</dd>
                    </dl>
                    <dl>
                        <dt>Request parameters</dt>
                        <dd>inputText — text for converting</dd>
                    </dl>
                    <dl>
                        <dt>Response</dt>
                        <dd>
                            JSON: <code>{literal}{"encodedText":"VALUE"}{/literal}</code>, where <code>VALUE</code> is base64; on conversion error response is empty JSON object
                        </dd>
                    </dl>
                    <dl>
                        <dt>Usage example</dt>
                        <dd>
                            Request with cURL: <code>curl --data-urlencode "inputText=sample text" http://encoder.click/scripts/encode_text.php</code>
                            <br>Response: <code>{literal}{"encodedText":"c2FtcGxlIHRleHQ="}{/literal}</code>
                        </dd>
                    </dl>
                </div>
                <div class="tab-pane" id="decode_text">
                    <dl>
                        <dt>Description</dt>
                        <dd>Convert base64 data into text representation</dd>
                    </dl>
                    <dl>
                        <dt>URL</dt>
                        <dd>
                            <code>http://encoder.click/scripts/decode_text.php</code>
                        </dd>
                    </dl>
                    <dl>
                        <dt>Request type</dt>
                        <dd>POST</dd>
                    </dl>
                    <dl>
                        <dt>Request parameters</dt>
                        <dd>inputText — base64 data for converting</dd>
                    </dl>
                    <dl>
                        <dt>Response</dt>
                        <dd>
                            JSON: <code>{literal}{"decodedText":"VALUE"}{/literal}</code>, where <code>VALUE</code> is decoded text; on conversion error response is empty JSON object
                        </dd>
                    </dl>
                    <dl>
                        <dt>Usage example</dt>
                        <dd>
                            Request with cURL: <code>curl --data-urlencode "inputText=c2FtcGxlIHRleHQ=" http://encoder.click/scripts/decode_text.php</code>
                            <br>Response: <code>{literal}{"decodedText":"sample text"}{/literal}</code>
                        </dd>
                    </dl>
                </div>
                <div class="tab-pane" id="encode_image">
                    <dl>
                        <dt>Description</dt>
                        <dd>Convert image into base64 data</dd>
                    </dl>
                    <dl>
                        <dt>URL</dt>
                        <dd>
                            <code>http://encoder.click/scripts/encode_image.php</code>
                        </dd>
                    </dl>
                    <dl>
                        <dt>Request type</dt>
                        <dd>POST</dd>
                    </dl>
                    <dl>
                        <dt>Request parameters, just one of the following</dt>
                        <dd>
                            <ul>
                                <li>imageFile — image file for converting</li>
                                <li>imageUrl — full link to image file for converting</li>
                            </ul>
                        </dd>
                    </dl>
                    <dl>
                        <dt>Response</dt>
                        <dd>
                            JSON: <code>{literal}{"encodedImage":"VALUE1","encodedImageToDataURL":"VALUE2"}{/literal}</code>, where VALUE1 is base 64 data of current image and VALUE2 is image data-url; on conversion error response is empty JSON object
                        </dd>
                    </dl>
                    <dl>
                        <dt>Usage example #1</dt>
                        <dd>
                            Request with cURL: <code>curl -F "imageFile=@/tmp/localfile.png" http://encoder.click/scripts/encode_image.php</code>
                            <br>Response: <code>{literal}{"encodedImage":"iVB...dgg==","encodedImageToDataURL":"data:image/png;base64,iVB...dgg=="}{/literal}</code>
                        </dd>
                    </dl>
                    <dl>
                        <dt>Usage example #2</dt>
                        <dd>
                            Request with cURL: <code>curl --data-urlencode "imageUrl=http://imageshack.com/a/img600/6353/foti.png" http://encoder.click/scripts/encode_image.php</code>
                            <br>Response: <code>{literal}{"encodedImage":"iVB...gg==","encodedImageToDataURL":"data:image/png;base64,iVB...gg=="}{/literal}</code>
                        </dd>
                    </dl>
                </div>
                <div class="tab-pane" id="decode_image">
                    <dl>
                        <dt>Description</dt>
                        <dd>Create image from base64 data</dd>
                    </dl>
                    <dl>
                        <dt>URL</dt>
                        <dd>
                            <code>http://encoder.click/scripts/decode_image.php</code>
                        </dd>
                    </dl>
                    <dl>
                        <dt>Request type</dt>
                        <dd>POST</dd>
                    </dl>
                    <dl>
                        <dt>Request parameters</dt>
                        <dd>inputText — data URI of image</dd>
                    </dl>
                    <dl>
                        <dt>Response</dt>
                        <dd>
                            JSON: <code>{literal}{"decodedImage":"IMAGE_URL"}{/literal}</code>, where <code>IMAGE_URL</code> is full link to image; on conversion error response is empty JSON object
                        </dd>
                    </dl>
                    <dl>
                        <dt>Usage example</dt>
                        <dd>
                            Request with cURL: <code>curl --data-urlencode "inputText=data:image/png;base64,iVB...U5g==" http://encoder.click/scripts/decode_image.php</code>
                            <br>Response: <code>{literal}{"decodedImage":"http://encoder.click/public/2389351535_2985.png"}{/literal}</code>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>
{/block}
