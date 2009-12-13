package tests.mocks
{
	import com.anywebcam.mock.Mock;
	import com.esri.ags.Map;
	public class MapMock extends Map
	{
		public var mock:Mock;
		override public function MapMock()
		{
			mock = new Mock(this);
		}
		
		override public function zoomIn():void{
			mock.zoomIn();
		}
		
	}
}