$(document).ready(function() {
$('#table').DataTable({
        "processing": true,
        "serverSide": true,
        "paging": true,
        "ajax": {
            "url": areasTableLink,
            "dataType": "json"
        },
        "columnDefs": [
            {"targets": 0, "name": "id", "visible": false},
            {"targets": 1, "name": "code",
                "render": function(data, type, row) {
                    return '<a href="' + showLink + '/' + row[0] + '">' + data + '</a>';
                }
            },
            {"targets": 2, "name": "spell"},
            {"targets": 2, "name": "level", 'searchable': false},
            {"targets": 3, "name": "reserve1"},
            {"targets": 4, "name": "reserve2"}
        ],
        "language": dataTableLanguage
    });
});
