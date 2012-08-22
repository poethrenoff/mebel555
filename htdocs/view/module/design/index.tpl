			<link rel="stylesheet" type="text/css" href="/script/sexylightbox/sexylightbox.css"/>
			<script type="text/javascript" src="/script/sexylightbox/jquery.easing.1.3.js"></script>
			<script type="text/javascript" src="/script/sexylightbox/sexylightbox.v2.3.jquery.js"></script>
			<script type="text/javascript">
				window.onload = function(){
					var $carousel = $('#carousel');
					var $carousel_ul = $carousel.find('ul');
					var $carousel_li = $carousel.find('li');
					
					var originalWidth = 0;
					$carousel_li.each(function(){
						originalWidth += $(this).outerWidth();
					});
					$carousel_ul.width(originalWidth);
					$carousel.scrollLeft((originalWidth - $carousel.width()) / 2);
					
					var moveRate = 0;
					var moveTimeout = null;
					
					// При попадании мышки на область карусели запускаем движение
					$carousel.mouseover(function(event){
						clearTimeout(moveTimeout);
						moveTimeout = setInterval(function(){
							$carousel.scrollLeft($carousel.scrollLeft() + moveRate);
						}, 10);
					// При движении мышки вычисляем скорость
					}).mousemove(function(){
						var width = $(this).width();
						var offset = $(this).offset();
						var axisX = event.pageX - offset.left;
						moveRate = Math.round((axisX - width / 2) * 10 / width);
					// При покидании мышки карусели - останавливаем движении
					}).mouseout(function(){
						clearTimeout(moveTimeout);
					});
					
					SexyLightbox.initialize({
						color:'white', dir: '/script/sexylightbox/sexyimages'
					});
				};
			</script>
			<div id="result" style="position: absolute"></div>
			<div id="design_top">Наши работы</div>
			<div id="carousel">
				<ul>
					{foreach from=$photo_list item=photo_item}<li><a href="{$photo_item.design_image}" rel="sexylightbox"><img src="{$photo_item.design_preview}" alt="{$photo_item.design_title|escape}"/></a></li>{/foreach}
				</ul>
			</div>
			<div id="design_bottom">Наши работы</div>
