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
					
					var moveTimeout = null;
					$carousel.mousemove(function(event){
						var moveMode = null;
						var width = $(this).width();
						var offset = $(this).offset();
						if ((event.pageX - offset.left < width / 3) && moveMode != 'left') {
							moveMode = 'left';
							clearTimeout(moveTimeout);
							moveTimeout = setInterval(function(){
								$carousel.scrollLeft($carousel.scrollLeft() - 1);
							}, 5);
						} else if ((event.pageX - offset.left > 2 * width / 3) && moveMode != 'right') {
							moveMode = 'right';
							clearTimeout(moveTimeout);
							moveTimeout = setInterval(function(){
								$carousel.scrollLeft($carousel.scrollLeft() + 1);
							}, 5);
						} else {
							clearTimeout(moveTimeout);
						}
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
