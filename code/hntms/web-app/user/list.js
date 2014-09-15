$(document).ready(function() {
$('#table').DataTable({
        "processing": true,
        "serverSide": true,
        "paging": true,
        "ajax": {
            "url": usersTableLink,
            "dataType": "json"
        },
        "columnDefs": [
            {"targets": 0, "name": "id", "visible": false},
            {"targets": 1, "name": "username",
                "render": function(data, type, row) {
                    return '<a href="' + showLink + '/' + row[0] + '">' + data + '</a>';
                }
            },
            {"targets": 2, "name": "email"},
            {"targets": 3, "name": "name"},
            {"targets": 4, "name": "address"},
            {"targets": 5, "name": "phone"},
            {"targets": 6, "name": "idCard"},
            {"targets": 7, "name": "organization"},
            {"targets": 8, "name": "operation",
                'searchable': false, 'orderable': false,
                "render": function(data, type, row) {
                    return '<a href="' + editLink + '/' + row[0] + '">' + editLabel + '</a>';
                }
            },
        ],
        "language": dataTableLanguage
    });
});
