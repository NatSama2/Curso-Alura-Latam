let numeroSecreto = Math.floor(Math.random() * 10) + 1;
console.log("El número secreto es:", numeroSecreto);

let numeroUsuario = 0;
let intentos = 1;

/*
Ahora se usara operador ernario ya no es necesario definir esta variable
let palabraIntentos = "intento";
*/

// Bucle que se repite mientras los números sean diferentes
while (numeroUsuario != numeroSecreto) {
  numeroUsuario = parseInt(
    prompt("Me indicas un numero entre 1 y 10 por favor:")
  );

  console.log(numeroUsuario);

  if (numeroUsuario == numeroSecreto) {
    // Acertamos el número
    alert(
      `Acertaste, el número es: ${numeroSecreto}, lo hiciste en ${intentos} ${
        intentos == 1 ? "intento" : "intentos"
      }`
    );
  } else {
    // Si no acertamos ver si es mayor o menor
    if (numeroUsuario > numeroSecreto) {
      alert("El número secreto es menor");
    } else {
      alert("El número secreto es mayor");
    }
    // Contador de intentos, se incrementa cuando no se acierta
    intentos = intentos + 1;

    /*
    palabraIntentos = "intentos";
    ya no se usa
    */

    // Número maximo de intenos
    if (intentos > 5) {
      alert("Perdiste, pasaste el número maximo de intentos");
      break;
    }
  }
}
