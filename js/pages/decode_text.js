$(function() {
    $('button[data-role="sender"]').on('click', function() {
        if($('textarea#inputText').val()) {
            $.ajax({
                type: 'POST',
                url: '/scripts/decode_text.php',
                data: { 'inputText' : $('textarea#inputText').val() },
                dataType: 'json',
                beforeSend: function() {
                    $('textarea#decodedText').val('');
                },
                success: function (data) {
                    if(Object.getOwnPropertyNames(data).length === 0) {
                        show_error("Can't decode text");
                    }
                    $('textarea#decodedText')
                        .val(data['decodedText'])
                        .parent('div.form-group').removeClass('hidden');
                },
                error: function(e) {
                    show_error("Can't decode text");
                }
            });
        }
    });

    $('button[type="reset"]').on('click', function() {
        $('textarea#decodedText')
            .val('')
            .parent('div.form-group').addClass('hidden');
    });
});