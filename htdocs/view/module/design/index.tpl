			<link rel="stylesheet" type="text/css" href="/script/lightbox/jquery.lightbox-0.5.css"/>
			<script type="text/javascript" src="/script/lightbox/jquery.lightbox-0.5.min.js"></script>
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
							}, 10);
						} else if ((event.pageX - offset.left > 2 * width / 3) && moveMode != 'right') {
							moveMode = 'right';
							clearTimeout(moveTimeout);
							moveTimeout = setInterval(function(){
								$carousel.scrollLeft($carousel.scrollLeft() + 1);
							}, 10);
						} else {
							clearTimeout(moveTimeout);
						}
					}).mouseout(function(){
						clearTimeout(moveTimeout);
					});
					
					$('#carousel a').lightBox({
						imageBlank: '/script/lightbox/images/lightbox-blank.gif',
						imageLoading: '/script/lightbox/images/lightbox-ico-loading.gif',
						imageBtnClose: '/script/lightbox/images/lightbox-btn-close.gif',
						imageBtnPrev: '/script/lightbox/images/lightbox-btn-prev.gif',
						imageBtnNext: '/script/lightbox/images/lightbox-btn-next.gif',
						txtImage: 'Изображение',
						txtOf: 'из'
					});
				};
			</script>
			<div id="result" style="position: absolute"></div>
			<div id="design_top">Наши работы</div>
			<div id="carousel">
				<ul>
					{foreach from=$photo_list item=photo_item}<li><a href="{$photo_item.design_image}"><img src="{$photo_item.design_preview}" alt="{$photo_item.design_title|escape}"/></a></li>{/foreach}
				</ul>
			</div>
			<div id="design_bottom">Наши работы</div>
