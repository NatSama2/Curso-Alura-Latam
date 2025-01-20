let numeroSecreto = generarNumeroSecreto();
let intentos = 1;

console.log("numero secreto es:", numeroSecreto);

function asignarTextoElemento(elemento, texto) {
    let elementoHTML = document.querySelector(elemento);
    elementoHTML.innerHTML = texto;
}

function verificarIntento() {
    let numeroDeUsuario = parseInt(
        document.getElementById("valorUsuario").value
    );

    if (numeroDeUsuario === numeroSecreto) {
        asignarTextoElemento(
            "p",
            `Acertaste al número en ${intentos} ${
                intentos === 1 ? "intento" : "intentos"
            }`
        );
        document.getElementById("reiniciar").removeAttribute("disabled");
    } else {
        if (numeroDeUsuario > numeroSecreto) {
            asignarTextoElemento("p", "El número secreto es menor");
        } else {
            asignarTextoElemento("p", "El número secreto es mayor");
        }
        intentos++;
        limpiarCaja();
    }
    return;
}

function limpiarCaja() {
    document.querySelector("#valorUsuario").value = "";
}

function generarNumeroSecreto() {
    return Math.floor(Math.random() * 10) + 1;
}

function mensajesIniciales() {
    asignarTextoElemento("h1", "Juego del Número Secreto");
    asignarTextoElemento("p", "Selecciona un número entre 1 y 10");
    numeroSecreto = generarNumeroSecreto();
    intentos = 1;
}

function reiniciarJuego() {
    // limpiar la caja
    limpiarCaja();
    // indicar mensaje de inervalo de numeros
    // generar el número aleatorio
    // inicializar el número de intentos
    mensajesIniciales();
    // necesito dejar el botón de nuevo juego desabilitado
    document.getElementById("reiniciar").setAttribute("disabled", "true");
}

mensajesIniciales();
