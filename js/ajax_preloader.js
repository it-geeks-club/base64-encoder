$(function() {
    // Show loader
    $( document ).ajaxSend(function() {
        $("body").children().not('div#preloader').addClass('hidden-load');
        $('div#preloader').show();
    });

    function hideLoader() {
        $('div#preloader').hide();
        $("body").children().removeClass('hidden-load');
    }

    // Hide loader on complete
    $( document ).ajaxComplete(function() {
        hideLoader();
    });

    // Hide loader on error
    $( document ).ajaxError(function() {
        hideLoader();
    });
});