package com.example.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.example.business.HelloDelegate;
	import com.example.event.HelloEvent;
	import com.example.model.HelloModelLocator;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class HelloCommand implements IResponder, ICommand
	{
		public function HelloCommand()
		{
		}

		public function result(data:Object):void
		{
			var model:HelloModelLocator=HelloModelLocator.getInstance();
			model.result=data.result;
			Alert.show(model.result);
		}
		
		public function fault(info:Object):void
		{
			Alert.show(info.toString());
		}
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:HelloDelegate=new HelloDelegate(this);
			var helloEvent:HelloEvent=HelloEvent(event);
			delegate.sayHello(helloEvent.name);
		}
		
	}
}