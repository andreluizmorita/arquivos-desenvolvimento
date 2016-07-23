$(function(){
	/* --- MAIN ------------------------------------------------------------------ */
	$("body").fadeIn(200).prepend('<a id="voltar-topo"></a>');
	$('#voltar-topo').fadeOut(0);

	$(window).scroll(function () {
        if ($(this).scrollTop() > 800) {
            $('#voltar-topo').fadeIn(200);
        } else {
            $('#voltar-topo').fadeOut(300);
        }
    });

    $('#voltar-topo').on('click',function () {
        $('body,html').animate({
            scrollTop: 0
    	}, 2000, 'easeInOutQuint');

        return false;
    });

    $('#contato-scroll').on('click', function(e){
    	e.preventDefault();

    	$('html, body').animate({
	        scrollTop: $("section.contato").offset().top
	    }, 2000, 'easeInOutQuint');

    });

	$("body").queryLoader2({
	 	barColor: "#efefef",
	    backgroundColor: "#111",
	    percentage: true,
	    barHeight: 10,
	    minimumTime: 200,
	    fadeOutTime: 1000
	});

	$(window).load(function(){
		$("html").niceScroll({cursorwidth: "8px",cursorborder: "1px solid #333",zindex: "100000"});
	});

	var positionHeader = 200;	
	var bannerTexto = 300;

	$(window).scroll(function() {
		var scroll = window.pageYOffset || document.documentElement.scrollTop;

		wWidth = $(window).width();

		if(wWidth>992)
		{
			if ( scroll >= positionHeader ) {
	   			$('.menu-top, header, #curso-menu, #menu-buscar').addClass('menu-scroll');
	   			$('.banner-titulo, .banner-descricao').addClass('mover-250');
		    } else {
	        	$('.menu-top, header, #curso-menu, #menu-buscar').removeClass('menu-scroll');
	        	$('.banner-titulo, .banner-descricao').removeClass('mover-250');
	    	}
		}
	});

	$('.botao-buscar').on('click', function(e){
		e.preventDefault();
		$('#menu-buscar').toggleClass('ativo');
	});

	var menuMobile = false;
	var menuBusca = false;

	$('#menu-mobile').on('click', function(e){
		e.preventDefault();

		if(menuMobile) {
			menuMobile = false;
			$('.menu-top').removeClass('ativar');
		} else {
			menuMobile = true;
			$('.menu-top').addClass('ativar');
		}

		if(menuBusca) {
			menuBusca = false;
			$('#menu-buscar').removeClass('ativo');			
		}
	});

	$('#menu-mobile-buscar').on('click', function(e){
		e.preventDefault();

		if(menuBusca) {
			menuBusca = false;
			$('#menu-buscar').removeClass('ativo');
		} else {
			menuBusca = true;
			$('#menu-buscar').addClass('ativo');
		}

		if(menuMobile) {
			menuMobile = false;
			$('.menu-top').removeClass('ativar');			
		}
	});	

	$(window).on('resize', function(){
		wWidth = $(window).width();

		if(wWidth>767){
			$('.menu-top').css({height:116,display:'block'});
		} else {
			$('.menu-top').css({height:0,display:'none'});
		}
	}); 
	
	$('.prevent-click').on('click', function(e){
		e.preventDefault();
	});

	/* --- FORMULARIO DE CONTATO -------------------------- */
	var usuarioExiste = false;

    /* AQUI VAI SEU ENDERECO - NO EXEMPLO FOI USADO RETORNO JSON NO FORMATO {return:0} ou {return:1} */
    var url = 'src/validaemail.cfm';

    $('#form-error,#form-success').hide();

    $('#contato-valida-email').show();
    $('#contato-fale-conosco').hide();

    $('#contato-valida-email').submit(function(event) {
    	event.preventDefault();

        var formData = $('#contato-valida-email').serialize()

        $.ajax({
            type: "POST",
            url: url,
            data: formData,
            success: function(data){
            	console.log(data);
            	$('#contato-valida-email').hide();
                $('#contato-fale-conosco').show();

                if(data.result==1){
                    $('#contato-valida-email').hide();
                    $('#contato-fale-conosco').show(); 
                }
            }
        });
    });

    $('#contato-fale-conosco').submit(function(event) {
    	event.preventDefault();
    	
        var formData = $('#contato-fale-conosco').serialize()

        $.ajax({
            type: "POST",
            url: url,
            data: formData,
            success: function(data){
                console.log(data);
            	$('#contato-valida-email').hide();
                $('#contato-fale-conosco').show();

                if(data.result==1){
                    $('#contato-valida-email').hide();
                    $('#contato-fale-conosco').show(); 
                }
            }
        });
    });
	
});


