window.onload = _ => {
    $(".toast").toast({
        "autohide": false
    })
    bottonGoTo = document.querySelectorAll(".go_to")
    for (let i of bottonGoTo) {
        i.addEventListener("click", function () {
            $('.toast').toast('show')
        })
    }
}

function sendEmail() {
    name = document.querySelector("#name").value
    subject = document.querySelector("#subject").value
    message = document.querySelector("#message").value

    window.open(`mailto:nogueirarenzoso@gmail.com?subject=${subject}&body=${message}`, "_blank");
}