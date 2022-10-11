/* No getElementById, tem que ser definido um id para uma tag e em seguida chama-lo nesta função abaixo. Alem do id existem outros atributos para as tags */

document.getElementById("div2").innerHTML="Esta linha foi inserida usando o ID da tag por um arquivo externo .js";

/* O document.write só escreve na tela mesmo, exatamente onde o script foi inserido */

document.write("Esta linha foi adicionada por um arquivo externo .js");

/* console.log aparece quando se inspeciona a pagina (F12) na aba console */

console.log('Este log foi por um arquivo externo .js');

/* O alert ou window.alert abre uma janela  */

alert('caixa gerada por um arquivo externo .js');