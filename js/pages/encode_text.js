$(function() {
    'use strict';

    $('button[data-role="sender"]').on('click', function() {
        if ($('#inputText').val()) {
            $.ajax({
                type: 'POST',
                url: '/scripts/text/encode',
                data: {
                    inputText: $('#inputText').val()
                },
                dataType: 'json',
                beforeSend: function() {
                    $('#encodedText').val('');
                },
                success: function(data) {
                    if (Object.getOwnPropertyNames(data).length === 0) {
                        showError("Can't encode text");
                    }
                    $('#encodedText')
                        .val(data.encodedText)
                        .parent('.form-group')
                        .removeClass('hidden');
                },
                error: function() {
                    showError("Can't encode text");
                }
            });
        }
    });

    $('button[type="reset"]').on('click', function() {
        $('#encodedText')
            .val('')
            .parent('.form-group')
            .addClass('hidden');
    });
});
