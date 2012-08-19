<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
	<head>
		<title>{$meta_title|escape}</title>
		<meta name="keywords" content="{$meta_keywords|escape}"/> 
		<meta name="description" content="{$meta_description|escape}"/> 
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" type="text/css" href="/style/index.css"/>
	</head>
	<body>
		<table class="main" border="1">
			<tr>
				<td class="header" colspan="3">
					Шапка сайта
				</td>
			</tr>
			<tr>
				<td class="menu">
{$menu} 
				</td>
				<td class="content">
{$content} 
				</td>
				<td class="news">
{$news} 
				</td>
			</tr>
			<tr>
				<td class="footer" colspan="3">
					Подвал сайта
				</td>
			</tr>
		</table>
	</body>
</html>
