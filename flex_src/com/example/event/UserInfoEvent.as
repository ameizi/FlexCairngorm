package com.example.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.example.vo.UserInfo;
	
	import flash.events.Event;

	public class UserInfoEvent extends CairngormEvent
	{
		public var userInfo:UserInfo;
		
		public static var  USERINFO_EVENT:String="UserInfo";
		
		public function UserInfoEvent(userInfo:UserInfo)
		{
			super(UserInfoEvent.USERINFO_EVENT);
			this.userInfo=userInfo;
		}
		
		
		public override function clone():Event{
			return new UserInfoEvent(userInfo);
		}
		
	}
}