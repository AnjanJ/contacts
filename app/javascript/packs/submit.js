window.submitFrm = function () {
    console.log('I am Inside');
    $.ajax({
        url: "/contacts",
        type: "POST",
        data: $("form").serialize()
    });
}
