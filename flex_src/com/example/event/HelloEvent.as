package com.example.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import flash.events.Event;

	public class HelloEvent extends CairngormEvent
	{
		
		public var name:String;
		
		public static var HELLO_EVENT:String="sayHello";
		
		public function HelloEvent(name:String)
		{
			super(HELLO_EVENT);
			this.name=name;
		}
		
		public override function clone():Event{
			return new HelloEvent(name);
		}
		
		
	}
}