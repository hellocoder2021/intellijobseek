console.log("post loaded");

//open modal
$('#post_form_button').click(function (e) {
    $("#create_post_modal").modal('show');
});

$(document).ready(function () {

    console.log("page loaded");
    $("#create_post_from").on('submit', function (event) {
        event.preventDefault();
        let f = new FormData(this);
        $.ajax({
            url: './SavePostServlet',
            data: f,
            type: 'POST',
            success: function (data, textStatus, jqXHR)
            {
                console.log(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(data);

            },
            processData: false,
            contentType: false
        });
    });
});
 