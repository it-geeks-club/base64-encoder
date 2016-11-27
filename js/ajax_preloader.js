$(function() {
    'use strict';

    // Show loader
    $(document).ajaxSend(function() {
        $('body').children().not('#preloader').addClass('hidden-load');
        $('#preloader').show();
    });

    function hideLoader() {
        $('#preloader').hide();
        $('body').children().removeClass('hidden-load');
    }

    // Hide loader on complete
    $(document).ajaxComplete(function() {
        hideLoader();
    });

    // Hide loader on error
    $(document).ajaxError(function() {
        hideLoader();
    });
});
