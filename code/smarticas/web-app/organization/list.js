$(document).ready(function() {
$('#table').DataTable({
        "processing": true,
        "serverSide": true,
        "paging": true,
        "ajax": {
            "url": organizationsTableLink,
            "dataType": "json"
        },
        "columnDefs": [
            {"targets": 0, "name": "id", "visible": false},
            {"targets": 1, "name": "code",
                "render": function(data, type, row) {
                    return '<a href="' + showLink + '/' + row[0] + '">' + data + '</a>';
                }
            },
            {"targets": 2, "name": "name",
                "render": function(data, type, row) {
                    return '<a href="' + showLink + '/' + row[0] + '">' + data + '</a>';
                }
            },
            {"targets": 3, "name": "address"},
            {"targets": 4, "name": "leader"},
            {"targets": 5, "name": "contact"},
            {"targets": 6, "name": "level", 'searchable': false},
            {"targets": 7, "name": "area"},
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
