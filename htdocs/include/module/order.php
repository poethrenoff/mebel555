<?php
class module_order extends module
{
	protected function action_index()
	{
		if ( session::flash( 'order_send' ) )
		{
			$this -> content = $this -> view -> fetch( 'module/order/send.tpl' );
		}
		else
		{
			$error = ( init_string( 'action' ) == 'order' ) ? $this -> order_send() : '';
			
			$this -> view -> assign( 'error', $error );
			$this -> content = $this -> view -> fetch( 'module/order/index.tpl' );
		}
	}
	
	protected function action_search()
	{
		$brand_list = db::select_all('select * from brand where brand_title like :brand_title order by brand_title limit 10',
			array('brand_title' => init_string('q') . '%'));
		
		$data = array();
		foreach ($brand_list as $row) {
			$data[] = $row['brand_title'];
		}
		
		header("Content-type: application/json");
		echo join("\n", $data);
		exit;
	}
	
	// Отправка заказа
	protected function order_send()
	{
		$error = array();
		
		$field_list = array( 'brand', 'title', 'article', 'decoration', 'material', 'quantity', 'phone', 'captcha_value' );
		foreach ( $field_list as $field_name ) {
			$$field_name = trim( init_string( $field_name ) );
		}
		
		$require_field_list = array( 'brand', 'article', 'phone', 'captcha_value' );
		foreach ( $require_field_list as $field_name ) {
			if ( is_empty( $$field_name ) )
				$error[$field_name] = 'Поле обязательно для заполнения';
		}
		
		if ( !isset( $error['captcha_value'] ) && !captcha::check($captcha_value) ) {
			$error['captcha_value'] = 'Введенный текст не соответствует коду на картинке';
		}
		
		if ( count( $error ) )
			return $error;
		
		$from_email = get_preference( 'from_email' );
		$from_name = get_preference( 'from_name' );
		$order_email = get_preference( 'order_email' );
		$order_subject = get_preference( 'order_subject' );
		
		$message = module_text::get_text_by_tag( 'order_letter' );
		foreach ( $field_list as $field_name ) {
			$message = str_replace( '{' . $field_name . '}', $$field_name, $message );
		}
		
		$email_list = array_map( 'trim', explode( ',', $order_email ) );
		foreach ( $order_email as $to_email )
			sendmail::send( $to_email, $user_email, $user_name, $subject, $message );
		
		session::flash( 'order_send', true );
		
		redirect_to( array( 'controller' => 'order' ) );
	}
}