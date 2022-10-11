var hora = 9;

if(hora < 12){
    //consição se for menor que 12
    console.log("bom dia")
}else if(hora < 18){
    //condição se for maior ou igual a 12 e menor que 18, mesmo sem estar declarado na condição, só entra se não for menor que 12
    console.log("boa tarde")
}else if(hora <= 23){
    //condição se for maior que 18 e menor ou igual a 23
    console.log("boa noite")
}


if(1==1){
    let nome ="fulano" //let é de escopo local se fosse um var o proximo console.log funcionaria
    //alert(nome)
}
//console.log(nome) //por isso vai dar como indefinida

const PI = 3.14 //constantes não poderão ser alteradas
console.log(PI)

//PI = 10 //isso aqui não vai funcionar a não ser que a constante seja um objeto ou array

const PI3 = {primario: 3.14, secundario: 15} //se for objeto ou array
console.log(PI3)

PI3.primario = PI3.secundario = 10 //isso aqui vai funcionar dai
console.log(PI3)

let outronome = 'outro fulano'

console.log(typeof PI) //esses todos mostram o tipo da variavel
console.log(typeof hora)
console.log(typeof outronome)

document.getElementById('titulo').innerHTML = "Olá Mundo" //pega do documento html o contegudo do que tiver ID = titulo e troca por Olá mundo

document.getElementById('campo').value = "sandra"  // altera o campo

document.getElementById('paragrafo').innerText += " mais uma vez"  // inclui texto

