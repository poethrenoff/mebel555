			<script type="text/javascript">
				$(function(){
					var current_div = null;
					var hideTimeout = null;
					var showTimeout = null;
					
					$('#content a.letter').mouseover(function(event){
						if (current_div) {
							clearTimeout(showTimeout); clearTimeout(hideTimeout);
							$('#content div[data="' + current_div + '"]').hide();
						}
						
						current_div = $(this).html();
						$('#content div[data="' + current_div + '"]').css({
							left: event.pageX, top: event.pageY + 10
						});
						showTimeout = setTimeout(function(){
							$('#content div[data="' + current_div + '"]').show();
						}, 300);
					}).mouseout(function(event){
						hideTimeout = setTimeout(function(){
							$('#content div[data="' + current_div + '"]').hide();
						}, 500);
					});
					
					$('#content div[data]').mouseover(function(){
						clearTimeout(showTimeout); clearTimeout(hideTimeout);
					}).mouseout(function(){
						hideTimeout = setTimeout(function(){
							$('#content div[data="' + current_div + '"]').hide();
						}, 500);
					});
				});
			</script>
			<div id="clear">
				Выбор мебели по сайту фабрики
			</div>
			<div id="content">
				<p><b><i>Выберите интересующего Вас производителя мебели по начальной букве названия</i></b></p>
				<p>&nbsp;</p>
				<p>
{foreach from=$brand_letter_list key=brand_letter item=brand_list}
					<a href="" class="letter">{$brand_letter}</a>
{/foreach}
				</p>
{foreach from=$brand_letter_list key=brand_letter item=brand_list}
				<div class="brand_list" data="{$brand_letter}">
{foreach from=$brand_list item=brand_item}
					<a href="{$brand_item.brand_url|default:'#'}" target="_blank">{$brand_item.brand_title}</a><br/>
{/foreach}
				</div>
{/foreach}
			</div>
