function show_error(error_text) {
    $('div#errorModal .modal-body .error_text').text(error_text);
    $('div#errorModal').modal({
        show: true
    });
}