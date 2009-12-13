package tests
{
	import flash.events.MouseEvent;
	
	import net.digitalprimates.fluint.sequence.SequenceEventDispatcher;
	import net.digitalprimates.fluint.sequence.SequenceRunner;
	import net.digitalprimates.fluint.sequence.SequenceWaiter;
	import net.digitalprimates.fluint.tests.TestCase;
	
	import tests.mocks.MapMock;
	
	import widgits.ZoomButton;

	public class ZoomButtonTestCase extends TestCase
	{
		private var mapMock:MapMock;
		public function ZoomButtonTestCase()
		{
			super();
		}
		
		public function testZoomIn():void{
			
			//Arrange
		    mapMock= new MapMock();
		    mapMock.mock.method('zoomIn').once;
		    var button:ZoomButton = new ZoomButton();
		    button.map= mapMock;
			//Act
		    button.doZoom();
		
			//Assert
		    mapMock.mock.verify();
		}
		
		public function handleZoom(event:MouseEvent, passThroughData:Object):void{
			//Assert
		    mapMock.mock.verify();
		}
	}
}