package com.example.vo
{
	[Bindable]
	[RemoteClass(alias="com.example.UserInfo")]
	public class UserInfo
	{
		
		public var username:String;
		public var location:String;
		public var schoole:String;
		public var telphone:String;
		
		public function UserInfo(username:String,location:String,schoole:String,telphone:String)
		{
			this.username=username;
			this.location=location;
			this.schoole=schoole;
			this.telphone=telphone;
		}

	}
}