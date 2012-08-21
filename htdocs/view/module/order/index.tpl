			<link rel="stylesheet" type="text/css" href="/script/autocomplete/jquery.autocomplete.css"/>
			<script type="text/javascript" src="/script/autocomplete/jquery.autocomplete.min.js"></script>
			<script type="text/javascript">
				$(function(){
					$('input[name="brand"]').autocomplete("/order/search", {
						minChars: 1, useCache: false
					}).focus(function(){
						$('label[for="' + $(this).attr('id') + '"]').hide();
					}).blur(function(){
						if ($(this).val() == '') {
							$('label[for="' + $(this).attr('id') + '"]').show();
						}
					}).blur();
				});
			</script>
			
			<div id="order">
				Расчет стоимости мебели
			</div>
			<div id="content">
				<form action="" method="post" autocomplete="off">
					<table class="order">
						<tr>
							<td class="title">
								* Фабрика производителя
							</td>
							<td class="value">
								<label for="id_brand" style="">Начните вводить название</label>
								<input id="id_brand" type="text" name="brand" value="{if isset($smarty.post.brand)}{$smarty.post.brand|escape}{/if}"/>
{if $error.brand}
								<div class="error">{$error.brand|escape}</div>
{/if}
							</td>
						</tr>
						<tr>
							<td class="title">
								Наименование позиции
							</td>
							<td class="value">
								<input type="text" name="title" value="{if isset($smarty.post.title)}{$smarty.post.title|escape}{/if}"/>
							</td>
						</tr>
						<tr>
							<td class="title">
								* Артикул
							</td>
							<td class="value">
								<input type="text" name="article" value="{if isset($smarty.post.article)}{$smarty.post.article|escape}{/if}"/>
{if $error.article}
								<div class="error">{$error.article|escape}</div>
{/if}
							</td>
						</tr>
						<tr>
							<td class="title">
								Отделка
							</td>
							<td class="value">
								<input type="text" name="decoration" value="{if isset($smarty.post.decoration)}{$smarty.post.decoration|escape}{/if}"/>
							</td>
						</tr>
						<tr>
							<td class="title">
								Категория ткани
							</td>
							<td class="value">
								<input type="text" name="material" value="{if isset($smarty.post.material)}{$smarty.post.material|escape}{/if}"/>
							</td>
						</tr>
						<tr>
							<td class="title">
								Количество
							</td>
							<td class="value">
								<input type="text" name="quantity" value="{if isset($smarty.post.quantity)}{$smarty.post.quantity|escape}{/if}"/>
							</td>
						</tr>
						<tr>
							<td class="title">
								* Контактный телефон заказчика
							</td>
							<td class="value">
								<input type="text" name="phone" value="{if isset($smarty.post.phone)}{$smarty.post.phone|escape}{/if}"/>
{if $error.phone}
								<div class="error">{$error.phone|escape}</div>
{/if}
							</td>
						</tr>
						<tr>
							<td class="title">
								* Введите текст с картинки
							</td>
							<td class="value">
								<img src="/image/captcha.php" class="captcha" align="top"/>
								<input type="text" value="" name="captcha_value" class="captcha"/>
{if $error.captcha_value}
								<div class="error">{$error.captcha_value|escape}</div>
{/if}
							</td>
						</tr>
						<tr>
							<td class="title">
								&nbsp;
							</td>
							<td class="value">
								<input type="hidden" name="action" value="order"/>
								<input type="submit" value="Отправить" class="button"/>
							</td>
						</tr>
						<tr>
							<td class="title">
								* - обязательно для заполнения
							</td>
							<td class="value">
								&nbsp;
							</td>
						</tr>
					</table>
				</form>
			</div>
