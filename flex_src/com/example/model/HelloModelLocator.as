package com.example.model
{
	import com.adobe.cairngorm.CairngormError;
	import com.adobe.cairngorm.CairngormMessageCodes;
	import com.adobe.cairngorm.model.ModelLocator;
	

	[Bindable]
	public class HelloModelLocator implements ModelLocator
	{
		public var result:String;
		
		private static var model:HelloModelLocator;
		
		public static function getInstance():HelloModelLocator{
			if(model==null){
				model=new HelloModelLocator();
			}
			return model;
		}
		
		
		
		public function HelloModelLocator()
		{
			if(model!=null){
				throw new CairngormError(CairngormMessageCodes.SINGLETON_EXCEPTION,"You Should Be Have One HelloModelLocator Instance !");
			}	
		}

	}
}