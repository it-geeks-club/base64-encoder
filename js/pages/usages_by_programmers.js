$(function() {
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
        var related_table = $('table.code-example[data-rel-pl="' + $(this).val() + '"]');
        if(related_table.size() && (related_table.css('display') === 'none')) {
            $('table.code-example').hide();
            related_table.show();
        }
    });

    $('table.code-example th:first-child')
    .on('mouseenter', function() {
        $(this)
        .closest('table')
        .find('tr > td:first-child')
        .addClass('on-hover');
    })
    .on('mouseleave', function() {
       $(this)
        .closest('table')
        .find('tr > td:first-child')
        .removeClass('on-hover'); 
    });

    $('table.code-example th:last-child')
    .on('mouseenter', function() {
        $(this)
        .closest('table')
        .find('tr > td:last-child')
        .addClass('on-hover');
    })
    .on('mouseleave', function() {
       $(this)
        .closest('table')
        .find('tr > td:last-child')
        .removeClass('on-hover'); 
    });
});