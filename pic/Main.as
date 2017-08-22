package {
	import flash.display.*;
	import flash.geom.*;
	import flash.utils.*;
	import flash.events.*;
	import flash.filesystem.*;
	import com.adobe.images.JPGEncoder;

	public class Main extends MovieClip {
		//承载png二进制代码的数组
		public var pngArray:Array=new Array  ;
		//要转换的目标，只要放到场景中就成了
		public var target:MovieClip;
		public var currentDrawFrame:int=1;
		//延展宽度，高度
		public var buffer:int=0;
		var now:Date = new Date();
		//名称
		public var nameIt:String="pic_";
		//倒出类型
		public var _publicType:int=0;//1.Png,2.jpg.
		//游戏名
		public var _gameName:String;

		public function Main() {
			//要转换的目标对象[必须对其中点]
			target=MovieClip(getChildAt(0));
			target.stop();
			_gameName = target.name;
			//建立一个帧循环来导出所有这个元件中的图像,放置到pngArray数组中
			addEventListener(Event.ENTER_FRAME,enterF);
			
			_publicType=1;
		}
		//返回一个png格式的ByteArray
		public function drawPng(bmd_:BitmapData):ByteArray {
			//把BitmapData转换成二进制的PNG 用字节流
			var myPNG:ByteArray
			if(_publicType==1){
				myPNG=PNGEnc.encode(bmd_);
			}else if(_publicType==2){
				var jpgEncoder:JPGEncoder = new JPGEncoder(80);
				myPNG = jpgEncoder.encode(bmd_); 
			}

			return myPNG;
		}
		public function enterF(evt:Event):void {
			MovieClip(target).gotoAndStop(currentDrawFrame);//走到当前帧
			var rectWidth:int;
			var rectHeight:int;
			
			var _tempRect:Rect;
			for(var i:int=0;i<MovieClip(target).numChildren;i++){
				var _tempMC:DisplayObject=MovieClip(target).getChildAt(i);
				if(_tempMC is Rect){
					_tempRect=Rect(_tempMC);
					break;
				}
			}
			rectWidth=_tempRect.width;
			rectHeight=_tempRect.height;
			_tempRect.visible=false;
			
			trace("currentFrame : "+currentFrame);
			trace("rectWidth : "+rectWidth);
			trace("rectHeight : "+rectHeight);

			var _currentFrameName = null;
			var _frameLabelArr:Array = MovieClip(target).currentLabels;//获取当前MC中所有帧名的信息
			for(i =0;i<_frameLabelArr.length;i++){//帧名循环
				if(currentDrawFrame==FrameLabel(_frameLabelArr[i]).frame){//与其他的比较,是同一帧的话
					_currentFrameName = FrameLabel(_frameLabelArr[i]).name;
					break;
				}
			}

			//画当前帧转换成BitmapData;
			var bmd:BitmapData=Intercept.draw(target,new Rectangle(-1*rectWidth/2-buffer,-1*rectHeight/2-buffer,rectWidth+2*buffer,rectHeight+2*buffer));
			//转换成BNG的数据,且写到硬盘里
			writePngFile(drawPng(bmd),rectWidth,rectHeight,currentDrawFrame,_currentFrameName);
			//当前帧变更到下一帧
			currentDrawFrame++;
			//当它超过范围的时候,结束这个帧循环，把所有的东西都输出
			if (currentDrawFrame>MovieClip(target).totalFrames) {
				trace("end");
				//移除enterF
				removeEventListener(Event.ENTER_FRAME,enterF);
			}
		}
		function writePngFile(ba_:ByteArray,rectWidth_,rectHeight_,currentDrawFrame_,frameName_):void {
			//指定一个文件位置
			var file: File;
			if(frameName_){
				if(_publicType==1){
					file= File.desktopDirectory.resolvePath("pics/"+_gameName+"/"+frameName_+".png");
				}else if(_publicType==2){
					file= File.desktopDirectory.resolvePath("pics/"+_gameName+"/"+frameName_+".jpg");
				}
			}else{
				if(_publicType==1){
					file= File.desktopDirectory.resolvePath("pics/"+nameIt+String(rectWidth_)+"x"+String(rectHeight_)+"_"+String(currentDrawFrame_)+".png");
				}else if(_publicType==2){
					file= File.desktopDirectory.resolvePath("pics/"+nameIt+String(rectWidth_)+"x"+String(rectHeight_)+"_"+String(currentDrawFrame_)+".jpg");
				}
			}

			//创建一个文件流
			var fileStream:FileStream=new FileStream  ;
			//指定为写
			fileStream.open(file,FileMode.WRITE);
			//写入ByteArray;
			fileStream.writeBytes(ba_);
			//关掉这个流;
			fileStream.close();
		}
	}
}