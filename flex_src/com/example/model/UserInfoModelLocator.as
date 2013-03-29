package com.example.model
{
	import com.adobe.cairngorm.CairngormMessageCodes;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.model.ModelLocator;
	import com.example.vo.UserInfo;

	[Bindable]
	public class UserInfoModelLocator implements ModelLocator
	{
		
		public var result:String;
		
		public var userInfo:UserInfo;
		
		private static var model:UserInfoModelLocator;
		
		public static function getInstance():UserInfoModelLocator{
			if(model==null){
				model =  new UserInfoModelLocator();
			}
			return model;
		}
		
		public function UserInfoModelLocator()
		{
			if(model!=null){
				throw new CairngormEvent(CairngormMessageCodes.SINGLETON_EXCEPTION,"you should have one UserInfoModelLocator instance ");
			}
		}

	}
}