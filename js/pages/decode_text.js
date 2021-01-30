$(() => {
    'use strict';

    $('button[data-role="sender"]').on('click', () => {
        const textToDecode = $('#inputText').val();
        const decodedText = atob(textToDecode);
        $('#decodedText')
            .val(decodedText)
            .parent('.form-group')
            .removeClass('hidden');
    });

    $('button[type="reset"]').on('click', () => {
        $('#decodedText')
            .val('')
            .parent('.form-group')
            .addClass('hidden');
    });
});
