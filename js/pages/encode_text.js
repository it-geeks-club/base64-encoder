$(function() {
    $('button[data-role="sender"]').on('click', function() {
        if($('textarea#inputText').val()) {
            $.ajax({
                type: 'POST',
                url: '/scripts/encode_text.php',
                data: { 'inputText' : $('textarea#inputText').val() },
                dataType: 'json',
                beforeSend: function() {
                    $('textarea#encodedText').val('');
                },
                success: function (data) {
                    if(Object.getOwnPropertyNames(data).length === 0) {
                        show_error("Can't encode text");
                    }
                    $('textarea#encodedText')
                        .val(data['encodedText'])
                        .parent('div.form-group').removeClass('hidden');
                },
                error: function()
                {
                    show_error("Can't encode text");
                }
            });
        }
    });

    $('button[type="reset"]').on('click', function() {
        $('textarea#encodedText')
            .val('')
            .parent('div.form-group').addClass('hidden');
    });
});