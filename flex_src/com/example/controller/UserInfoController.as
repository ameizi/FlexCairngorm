package com.example.controller
{
	import com.adobe.cairngorm.control.FrontController;
	import com.example.command.UserInfoCommand;
	import com.example.event.UserInfoEvent;

	public class UserInfoController extends FrontController
	{
		public function UserInfoController()
		{
			super();
			addCommand(UserInfoEvent.USERINFO_EVENT,UserInfoCommand);
		}
		
	}
}