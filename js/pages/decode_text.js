$(() => {
    'use strict';

    $('button[data-role="sender"]').on('click', () => {
        const textToDecode = $('#inputText').val();
        try {
            const decodedText = atob(textToDecode);
            $('#decodedText')
                .val(decodedText)
                .parent('.form-group')
                .removeClass('hidden');
        } catch {
            showError('Can\'t decode this text!');
        }
    });

    $('button[type="reset"]').on('click', () => {
        $('#decodedText')
            .val('')
            .parent('.form-group')
            .addClass('hidden');
    });
});
