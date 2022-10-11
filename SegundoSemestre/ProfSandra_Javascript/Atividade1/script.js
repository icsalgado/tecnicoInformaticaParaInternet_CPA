function showCalc(){
    let userName = document.getElementById('name').value
    let userHeight = parseFloat(document.getElementById('height').value)
    let userWeight = parseFloat(document.getElementById('weight').value)
    let userIMC = userWeight/(userHeight*userHeight)
    console.log(userIMC)
    document.getElementById('imc').innerHTML="Seu imc é "+userIMC.toFixed(2)
    if(userIMC <= 18.5){
        document.getElementById('classification').innerHTML="Abaixo do Peso"
        document.getElementById('message').innerHTML="Olá "+userName+" você precisa se alimentar mais"
    }else if(userIMC > 18.5 && userIMC <= 24.9){
        document.getElementById('classification').innerHTML="Saudável"        
        document.getElementById('message').innerHTML="Olá "+userName+" parabéns, você viverá bem"
    }else if(userIMC > 25 && userIMC <= 29.9){
        document.getElementById('classification').innerHTML="Sobrepeso"
        document.getElementById('message').innerHTML="Olá "+userName+" você precisa comer menos"
    }else if(userIMC > 30 && userIMC <= 34.9){
        document.getElementById('classification').innerHTML="Obesidade Grau 1"
        document.getElementById('message').innerHTML="Olá "+userName+" você precisa ir a um médico o quanto antes"
    }else if(userIMC > 35 && userIMC <= 39.9){
        document.getElementById('classification').innerHTML="Obesidade Grau 2"
        document.getElementById('message').innerHTML="Olá "+userName+" você precisa ir ao médico urgente"
    }else if(userIMC >= 40){
        document.getElementById('classification').innerHTML="Obesidade Grau 3"
        document.getElementById('message').innerHTML="Olá "+userName+" vá ao médico"
    }
}