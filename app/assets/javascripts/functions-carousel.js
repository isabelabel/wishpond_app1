$("a.carousel-control.right").click(function(){

		var total_items = $('#myCarousel').find('.item').size();
		var item_activo1 = $('#myCarousel .carousel-inner .item.active');
		var item_activo_last = $('#myCarousel').find(item_activo1).index() + $('#myCarousel').find('.item.active').size() - 1;

		if (item_activo_last != (total_items - 1)){

			for(var i = 0; i < $('#myCarousel').find('.item').size(); i++) {
				var item = $('#myCarousel').find('.item').get(i);                         
				$('#myCarousel').find(item).removeClass('active');
			}

			var new_first_active = item_activo_last + 1;
			var possible_last = new_first_active + 5;
			var last_item = $('#myCarousel').find('.item').size();

			var condicao = 0;
			if( possible_last > last_item ) {
				condicao = last_item;
			}
			else{
				condicao = possible_last;
			}

			for(var q=new_first_active; q < condicao; q++){
				var new_active = $('#myCarousel .carousel-inner').find('.item').get(q);

				if(new_active != 'undefined'){
					$('#myCarousel').find(new_active).addClass('active');	
				}
			}
		}
	});

	$("a.carousel-control.left").click(function(){
        
		var total_items = $('#myCarousel').find('.item').size();
		var item_activo1 = $('#myCarousel .carousel-inner .item.active');
		var item_activo_last = $('#myCarousel').find(item_activo1).index() + $('#myCarousel').find('.item.active').size() - 1;

		var indice_1 = $('#myCarousel').find(item_activo1).index();

		if(indice_1 > 0){

			for(var i = 0; i < $('#myCarousel').find('.item').size(); i++) {
				var item = $('#myCarousel').find('.item').get(i);
				$('#myCarousel').find(item).removeClass('active');
			}

			var new_first_active = indice_1 - 5;

			for(var q=new_first_active; q < (new_first_active + 5); q++){
				var new_active = $('#myCarousel .carousel-inner').find('.item').get(q);

				if(new_active != 'undefined'){
					$('#myCarousel').find(new_active).addClass('active');	
				}
                
			}
		}
	});