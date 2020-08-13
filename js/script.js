window.onload = _ => {
    $(".toast").toast({"autohide": false})
    bottonGoTo = document.querySelectorAll(".go_to")
    for (let i of bottonGoTo) {
        i.addEventListener("click", function () {
            $('.toast').toast('show')
        })
    }
}