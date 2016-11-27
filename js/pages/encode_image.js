$(function() {
    'use strict';

    var clearFileLoader = function() {
        $('#imageFile').replaceWith($('#imageFile').val('').clone(true));
    };

    var clear = function() {
        $('#rawBase64').val('');
        $('#dataURLBase64').val('');
        $('#htmlBase64').val('');
        $('#cssBase64').val('');
        $('#xmlBase64').val('');
        $('#convertedImg').attr('src', '/img/no_image_300x300.png');
        clearFileLoader();
        $('#output').addClass('hidden');
    };

    var options = {
        beforeSend: function() {
            clear();
        },
        success: function(data) {
            if (data && (data != '\{\}') && (data != '[]')) {
                data = jQuery.parseJSON(data);
                $('#convertedImg').attr('src', data.encodedImageToDataURL);
                $('#rawBase64').val(data.encodedImage);
                $('#dataURLBase64').val(data.encodedImageToDataURL);
                $('#htmlBase64').val('<img src="' + data.encodedImageToDataURL + '" />');
                $('#cssBase64').val(".image {\n" +
                    "    width: 100px;\n" +
                    "    height: 100px;\n" +
                    "    background-image: url('" + data.encodedImageToDataURL + "')\n" +
                    "}");
                $('#xmlBase64').val('<image>\n' +
                    '    <title>An image</title>\n' +
                    '    <link>http://example.com</link>\n' +
                    '    <url>' + data.encodedImageToDataURL + '</url>\n' +
                    '</image>');
                $('#output').removeClass('hidden');
            } else {
                showError("Can't encode image");
            }
        },
        error: function() {
            showError("Can't encode image");
        }
    };

    $('#imageUpload').ajaxForm(options);

    $('#imageFile').on('change', function() {
        $('#imageUrl').val('');
    });

    $('#imageUrl').on('change', function() {
        clearFileLoader();
    });

    $('#imageUrl').on('paste', function() {
        clearFileLoader();
    });

    $('#convertedImg').on('click', function() {
        $('input#imageFile').trigger("click");
    });

    $('button[type="reset"]').on('click', function() {
        clear();
    });
});
