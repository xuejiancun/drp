$(function () {
    $(document).ready(function () {
        $('.navbar-wrapper').stickUp({
            topMargin: 'auto'
        });
    });
});

function GotoProductList() {
    $("#frame").attr("src", "list.html");
}

function GotoCreateProduct() {
    $("#frame").attr("src", "create.html");
}



