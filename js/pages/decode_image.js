$(function() {
    'use strict';

    var clear = function() {
        $('#output img').attr('src', '');
        $('#output a').attr('href', '');
        $('#output').addClass('hidden');
    };

    $('button[data-role="sender"]').on('click', function() {
        if ($('#inputText').val()) {
            $.ajax({
                type: 'POST',
                url: '/scripts/decode_image.php',
                data: {
                    inputText: $('#inputText').val()
                },
                dataType: 'json',
                beforeSend: function() {
                    clear();
                },
                success: function(data) {
                    if (Object.getOwnPropertyNames(data).length === 0) {
                        showError("Can't decode image");
                    }
                    $('#output img').attr('src', data.decodedImage);
                    $('#output a').attr('href', data.decodedImage);
                    $('#output').removeClass('hidden');
                },
                error: function(e) {
                    showError("Can't decode image");
                }
            });
        }
    });

    $('button[type="reset"]').on('click', function() {
        clear();
    });
});
