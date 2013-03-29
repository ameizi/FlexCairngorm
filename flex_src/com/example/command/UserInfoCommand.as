package com.example.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.example.business.UserInfoDelegate;
	import com.example.event.UserInfoEvent;
	import com.example.model.UserInfoModelLocator;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class UserInfoCommand implements IResponder, ICommand
	{
		public function UserInfoCommand()
		{
		}

		public function result(data:Object):void
		{
			var result:Object=data.result;
			var model:UserInfoModelLocator=UserInfoModelLocator.getInstance();
			model.result=result as String;
		}
		
		public function fault(info:Object):void
		{
			Alert.show(info.toString());
		}
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:UserInfoDelegate=new UserInfoDelegate(this);
			var userInfoEvent:UserInfoEvent=UserInfoEvent(event);
			delegate.print(userInfoEvent.userInfo);
		}
		
	}
}