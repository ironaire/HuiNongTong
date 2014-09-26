$(document).ready(function() {
$('#table').DataTable({
        "processing": true,
        "serverSide": true,
        "paging": true,
        "ajax": {
            "url": rolesTableLink,
            "dataType": "json"
        },
        "columnDefs": [
            {"targets": 0, "name": "id", "visible": false},
            {"targets": 1, "name": "name",
                "render": function(data, type, row) {
                    return '<a href="' + showLink + '/' + row[0] + '">' + data + '</a>';
                }
            },
            {"targets": 2, "name": "operation", 
                'searchable': false, 'orderable': false,
                "render": function(data, type, row) {
                    return '<a href="' + editLink + '/' + row[0] + '">' + editLabel + '</a>';
                }
            },
        ],
        "language": dataTableLanguage
    });
});
