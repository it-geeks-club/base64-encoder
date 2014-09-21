function clear() {
    $('div#output img').attr('src', '');
    $('div#output a').attr('href', '');
    $('div#output').addClass('hidden');
}

$(function() {
    $('button[data-role="sender"]').on('click', function() {
        if($('textarea#inputText').val()) {
            $.ajax({
                type: 'POST',
                url: '/scripts/decode_image.php',
                data: { 'inputText' : $('textarea#inputText').val() },
                dataType: 'json',
                beforeSend: function() {
                    clear();
                },
                success: function (data) {
                    if(Object.getOwnPropertyNames(data).length === 0) {
                        show_error("Can't decode image");
                    }
                    $('div#output img').attr('src', data['decodedImage']);
                    $('div#output a').attr('href', data['decodedImage']);
                    $('div#output').removeClass('hidden');
                },
                error: function(e) {
                    show_error("Can't decode image");
                }
            });
        }
    });

    $('button[type="reset"]').on('click', function() {
        clear();
    });
});