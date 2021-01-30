$(() => {
    'use strict';

    $('button[data-role="sender"]').on('click', () => {
        const textToEncode = $('#inputText').val();
        const encodedText = btoa(textToEncode);
        $('#encodedText')
            .val(encodedText)
            .parent('.form-group')
            .removeClass('hidden');
    });

    $('button[type="reset"]').on('click', () => {
        $('#encodedText')
            .val('')
            .parent('.form-group')
            .addClass('hidden');
    });
});
