<?php
class module_design extends module
{
	protected function action_index()
	{
		$photo_list = db::select_all('select * from design order by design_order');
		$this -> view -> assign( 'photo_list', array_merge($photo_list, $photo_list, $photo_list, $photo_list ) );
		$this -> content = $this -> view -> fetch( 'module/design/index.tpl' );
	}
}