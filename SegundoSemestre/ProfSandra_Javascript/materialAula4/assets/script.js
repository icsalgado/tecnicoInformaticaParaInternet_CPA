/* 
function alterar(){
    document.getElementById("titulo").innerHTML = "Seja bem vindo de novo"
}

alterar() //referenciando a função
*/

/* function alterar(titulo){
    document.getElementById("titulo").innerHTML = titulo
    document.getElementById("campo").value = titulo
}

alterar("Bem vindo mais uma vez") 
 */
/* 
function somar(x, y){
    let total = x + y

    document.getElementById("campo").value = total;
}

somar(10, 20)
 */

function clicar(){
    alert("clicou")
    //prompt("clicou")
    document.getElementById("texto").innerText = "Obrigado"
}


function alteraTeclado(e){//recebe o prametro de evento
    console.log(e)
    if (e.keyCode == 32){
        console.log('espaço')
        console.log(document.getElementById('campo').value)
    }
}