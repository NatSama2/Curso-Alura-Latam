// El principal objetivo de este desafío es fortalecer tus habilidades en lógica de programación. Aquí deberás desarrollar la lógica para resolver el problema.

// Crear un array para almacenar los nombres
let amigos = [];

// Implementa una función para agregar amigos
function agregarAmigo() {
    let nombreAmigo = document.getElementById("amigo").value.trim();

    if (nombreAmigo === "") {
        alert("Por favor, inserte un nombre válido.");
        return;
    }

    amigos.push(nombreAmigo);

    // Limpiar el campo de entrada
    document.getElementById("amigo").value = "";

    // Mostrar la lista actualizada
    mostrarListaAmigos();
}

function mostrarListaAmigos() {
    let listaAmigosElement = document.getElementById("listaAmigos");
    listaAmigosElement.innerHTML = ""; // Limpiar la lista antes de actualizar

    amigos.forEach((nombre) => {
        let li = document.createElement("li");
        li.textContent = nombre;
        listaAmigosElement.appendChild(li);
    });
}

// Sortear un amigo aleatoriamente
function sortearAmigo() {
    if (amigos.length === 0) {
        alert("Agregue al menos un amigo antes de sortear.");
        return;
    }

    let indiceAleatorio = Math.floor(Math.random() * amigos.length);
    let amigoSecreto = amigos[indiceAleatorio];

    // Mostrar el resultado del sorteo
    mostrarResultado(amigoSecreto);
}

function mostrarResultado(amigo) {
    let resultadoElement = document.getElementById("resultado");
    resultadoElement.innerHTML = ""; // Limpiar resultados anteriores

    let li = document.createElement("li");
    li.textContent = `El amigo secreto es: ${amigo}`;
    resultadoElement.appendChild(li);
}
