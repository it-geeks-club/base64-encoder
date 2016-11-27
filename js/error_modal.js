function showError(errorText) {
    'use strict';

    $('#error-modal .modal-body .error-text').text(errorText);
    $('#error-modal').modal({
        show: true
    });
}
