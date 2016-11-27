$(function() {
    'use strict';

    $('button[data-role="sender"]').on('click', function() {
        if ($('#inputText').val()) {
            $.ajax({
                type: 'POST',
                url: '/scripts/decode_text.php',
                data: {
                    inputText: $('#inputText').val()
                },
                dataType: 'json',
                beforeSend: function() {
                    $('#decodedText').val('');
                },
                success: function(data) {
                    if (Object.getOwnPropertyNames(data).length === 0) {
                        showError("Can't decode text");
                    }
                    $('#decodedText')
                        .val(data.decodedText)
                        .parent('div.form-group')
                        .removeClass('hidden');
                },
                error: function(e) {
                    showError("Can't decode text");
                }
            });
        }
    });

    $('button[type="reset"]').on('click', function() {
        $('#decodedText')
            .val('')
            .parent('.form-group')
            .addClass('hidden');
    });
});
