package com.example.business
{
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class HelloDelegate
	{
		
		public var responder:IResponder;
		
		public var service:Object;
		
		
		
		public function HelloDelegate(responder:IResponder)
		{
			this.responder=responder;
			this.service=ServiceLocator.getInstance().getRemoteObject("helloRo");
		}
		
		
		
		public function sayHello(name:String):void{
			var token:AsyncToken=service.sayHello(name);
			token.addResponder(responder);
		}
		

	}
}