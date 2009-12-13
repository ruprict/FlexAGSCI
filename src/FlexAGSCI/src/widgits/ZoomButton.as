package widgits
{
	import com.esri.ags.Map;
	
	import flash.events.MouseEvent;
	
	import mx.controls.Button;

	public class ZoomButton extends Button
	{
		public var map:Map;
		public function ZoomButton()
		{
			super();
			addEventListener(MouseEvent.CLICK,_doZoom);
		}
		private function _doZoom(ev:MouseEvent):void{
			doZoom();
		}
		
		public function doZoom():void{
			if (map)
				map.zoomIn();
			else
				throw new Error("Map is not set");
		}
		
	}
}