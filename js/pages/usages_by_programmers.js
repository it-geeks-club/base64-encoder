$(() => {
    'use strict';

    $('#select-pl')
        .selectize({
            create: false,
            sortField: {
                field: 'text',
                direction: 'asc'
            },
            dropdownParent: 'body'
        })
        .on('change', function() {
            $('.code-example').hide();
            const langName = $(this).val();
            $(`.code-example[data-rel-pl="${langName}"]`).show();
        });
});
