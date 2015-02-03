function selectColor(obj) {
    if (obj.value == 1) {
        $("#previewImage").attr("src", "images/car5.jpg");
    } else if (obj.value == 2) {
        $("#previewImage").attr("src", "images/car3.jpg");
    } else if (obj.value == 3) {
        $("#previewImage").attr("src", "images/car2.jpg");
    } else if (obj.value == 4) {
        $("#previewImage").attr("src", "images/car1.jpg");
    } else if (obj.value == 5) {
        $("#previewImage").attr("src", "images/car4.jpg");
    }
}