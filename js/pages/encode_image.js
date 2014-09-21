function clearFileLoader() {
    $('input#imageFile').replaceWith($('input#imageFile').val('').clone(true));
}

function clear() {
    $('textarea#rawBase64').val('');
    $('textarea#dataURLBase64').val('');
    $('textarea#htmlBase64').val('');
    $('textarea#cssBase64').val('');
    $('textarea#xmlBase64').val('');
    $('img#convertedImg').attr('src', '/img/no_image_300x300.png');
    clearFileLoader();
    $('div#output').addClass('hidden');
}

$(function() {
    var options = { 
        beforeSend: function() 
        {
            clear();
        },
        success: function(data) 
        {
            if(data && (data != '\{\}') && (data != '[]')) {
                data = jQuery.parseJSON(data);
                $('img#convertedImg').attr('src', data['encodedImageToDataURL']);
                $('textarea#rawBase64').val(data['encodedImage']);
                $('textarea#dataURLBase64').val(data['encodedImageToDataURL']);
                $('textarea#htmlBase64').val('<img src="' + data['encodedImageToDataURL'] + '" />');
                $('textarea#cssBase64').val("div.image {\n" +
                    "    width: 100px;\n" +
                    "    height: 100px;\n" +
                    "    background-image: url('" + data['encodedImageToDataURL'] + "')\n" +
                    "}");
                $('textarea#xmlBase64').val('<image>\n' +
                    '    <title>An image</title>\n' +
                    '    <link>http://your-domain.com</link>\n' +
                    '    <url>' + data['encodedImageToDataURL'] + '</url>\n'+
                    '</image>');
                $('div#output').removeClass('hidden');
            } else {
                show_error("Can't encode image");
            }
        },
        error: function()
        {
            show_error("Can't encode image");
        }
    };

    $('form#imageUpload').ajaxForm(options);

    $('input#imageFile').on('change', function() {
       $('input#imageUrl').val('');
    });

    $('input#imageUrl').on('change', function() {
       clearFileLoader();
    });

    $('input#imageUrl').on('paste', function() {
       clearFileLoader();
    });

    $('img#convertedImg').on('click', function() {
       $('input#imageFile').trigger( "click" );
    });

    $('button[type="reset"]').on('click', function() {
       clear();
    });
});