function mostrarTelefone(elemento){
    elemento.style.display = 'none';//some o botão mostrar telefone
    document.getElementById("telefone").style.display = "block";
}

//let cars = new Array("jetta", "celta", "fox"); //isso é antigo
let cars = ["jetta", "celta", "fox", function(){console.log("função no array")}];
console.log(cars);
console.log(cars[3]())
cars[3]()

//objeto
let formula1 = {
    equipe: "mercedes", 
    piloto: "hamilton",
    piloto2: "botas",
    ligado: false,
    ligar:function(){
        formula1.ligado = true
        console.log("ligando "+this.equipe)
    }
}

console.log(formula1.piloto)

let equipe = formula1.equipe//desconstruindo um objeto

console.log(equipe)

console.log(formula1.ligar())

console.log(formula1.ligado)