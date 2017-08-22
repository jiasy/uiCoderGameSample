package {
	import flash.display.*;
	import flash.geom.*;
	import flash.utils.*;
	import flash.events.*;

	public class Intercept extends Sprite {
		public function Intercept() {
			////bmp为源显示对象    
			//var bmp:Bitmap = new BmpClass() as Bitmap;
			//addChild(bmp);
			//bmp.y=100;
			//
			////方法一.BitmapData.draw 
			//var bit1:BitmapData=draw(bmp,new Rectangle(150,150,100,100));
			//var bmp1:Bitmap=new Bitmap(bit1);
			//addChild(bmp1);
			//
			////方法二:BitmapData.copyPixels   
			//var bit2:BitmapData=copy(bmp.bitmapData,new Rectangle(150,150,100,100));
			//var bmp2:Bitmap=new Bitmap(bit2);
			//addChild(bmp2);
			//bmp2.x=150;
		}
		/** 
		* 以区域重绘显示对象  
		* @param target  显示对象 
		* @param rect    区域 
		* @return       bitmapData 
		*/
		public static function draw(target:DisplayObject,rect:Rectangle):BitmapData {
			var matrix:Matrix=new Matrix(1,0,0,1,- rect.x,- rect.y);
			rect.x=rect.y=0;
			var bitmapData:BitmapData=new BitmapData(rect.width,rect.height,true,0x00000000);
			bitmapData.draw(target,matrix,null,null,rect);
			return bitmapData;
		}

		/** 
		* 以区域复制bitmapData;  
		* @param target  目标BitmapData 
		* @param rect    区域 
		* @return       bitmapData 
		*/
		private function copy(target:BitmapData,rect:Rectangle):BitmapData {
			var bitmapData:BitmapData=new BitmapData(rect.width,rect.height);
			bitmapData.copyPixels(target,rect,new Point(0,0));
			return bitmapData;
		}
	}
}