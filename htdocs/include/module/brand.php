<?php
class module_brand extends module
{
	protected function action_index()
	{
		$brand_list = db::select_all('select * from brand order by brand_title');
		
		$brand_lang_letter_list = array();
		foreach ( $brand_list as $brand_item )
		{
			$brand_first_letter = mb_strtoupper( mb_substr( $brand_item['brand_title'], 0, 1, 'UTF-8' ), 'UTF-8' );
			$brand_letter_list[$brand_first_letter][] = $brand_item;
		}
		
		$this -> view -> assign( 'brand_letter_list', $brand_letter_list );
		$this -> content = $this -> view -> fetch( 'module/brand/index.tpl' );
	}
}