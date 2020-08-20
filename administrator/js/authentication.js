// localStorage.removeItem("authentication")
var data = null
console.log(localStorage.getItem("authentication"))
if (localStorage.getItem("authentication")) {
    data = localStorage.getItem("authentication").split(",")
    // alert(`Seja bem vindo(a) ${data[0]}`)
} else {
    // alert("Você não está autenticado!")
    window.location.href = "login.html"
}

document.querySelector("#sair").addEventListener("click", function () {
    localStorage.removeItem("authentication")
    window.location.href = "login.html"
})