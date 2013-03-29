package com.example.controller
{
	import com.adobe.cairngorm.control.FrontController;
	import com.example.command.HelloCommand;
	import com.example.event.HelloEvent;

	public class HelloServiceController extends FrontController
	{
		public function HelloServiceController()
		{
			super();
			addCommand(HelloEvent.HELLO_EVENT,HelloCommand);
		}
		
	}
}