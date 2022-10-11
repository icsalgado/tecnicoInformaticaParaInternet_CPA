$('.owl-carousel').owlCarousel({/*$ é o jquery */
    loop:true,/*faz o carrosel rodar em loop*/
    margin:20,/*Entre um item e outro*/
    nav:false,/*pequenos botoes de navegação */
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:5
        }
    }
}) 