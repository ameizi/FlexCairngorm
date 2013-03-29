package com.example.business
{
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.example.vo.UserInfo;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class UserInfoDelegate
	{
		public var responder:IResponder;
		
		public var service:Object;
		
		public function UserInfoDelegate(responder:IResponder)
		{
			this.responder=responder;
			this.service=ServiceLocator.getInstance().getRemoteObject("userInfoRO");
		}
		
		
		
		public function print(userInfo:UserInfo):void{
			var token:AsyncToken=service.print(userInfo);
			token.addResponder(responder);
		}
		
	}
}