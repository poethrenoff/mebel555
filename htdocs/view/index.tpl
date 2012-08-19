<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<title>{$meta_title|escape}</title>
		<meta name="keywords" content="{$meta_keywords|escape}"/> 
		<meta name="description" content="{$meta_description|escape}"/> 
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<link rel="shortcut icon" href="/image/favicon.ico">
		<link rel="stylesheet" type="text/css" href="/style/index.css"/>
		<link rel="stylesheet" type="text/css" href="/script/supersized/supersized.core.css"/>
		<script type="text/javascript" src="/script/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="/script/supersized/supersized.core.3.2.1.min.js"></script>
		<script type="text/javascript">
			jQuery(function($){
				$.supersized({
					slides : [{
						image : '/image/back.jpg'
					}]
				});
				$(window).resize(function(){
					$('#menu').height($(document).height());
				}).resize();
			});
		</script>
	</head>
	<body>
		<div id="main">
			<div id="menu">
				<a id="logo" href="/"><h1>Mebel 555</h1></a>
				<a id="about" href="/about"><h1>О компании</h1></a>
				<a id="brand" href="/brand"><h1>Выбор мебели по сайту фабрики</h1></a>
				<a id="order" href="/order"><h1>Расчет стоимости мебели</h1></a>
				<a id="design" href="/design"><h1>Наши работы</h1></a>
				<a id="contact" href="/contact"><h1>Контакты</h1></a>
{$social}
			</div>
		</div>
	</body>
</html>
