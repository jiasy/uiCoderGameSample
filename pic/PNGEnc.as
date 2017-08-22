package {
	import flash.geom.*;
	import flash.display.*;
	import flash.utils.*;
	import flash.events.*;
	public class PNGEnc {
		public static function encode(img:BitmapData):ByteArray {
			// 建立输出用ByteArray类型数据 
			var png:ByteArray = new ByteArray();
			//写入PNG头文件 
			png.writeUnsignedInt(0x89504e47);
			png.writeUnsignedInt(0x0D0A1A0A);
			// 建立IHDR数据块 
			var IHDR:ByteArray = new ByteArray();
			IHDR.writeInt(img.width);
			IHDR.writeInt(img.height);
			IHDR.writeUnsignedInt(0x08060000);
			// 32位RGBA的处理 
			IHDR.writeByte(0);
			writeChunk(png,0x49484452,IHDR);
			// 建立IDAT数据块 
			var IDAT:ByteArray= new ByteArray();
			for (var i:int=0; i < img.height; i++) {
				// no filter 
				IDAT.writeByte(0);
				var p:uint;
				if (! img.transparent) {
					for (var j:int=0; j < img.width; j++) {
						p=img.getPixel(j,i);
						IDAT.writeUnsignedInt(uint(((p&0xFFFFFF) << 8)|0xFF));
					}
				} else {
					for (j=0; j < img.width; j++) {
						p=img.getPixel32(j,i);
						IDAT.writeUnsignedInt( uint(((p&0xFFFFFF) << 8)|(p>>>24)));
					}
				}
			}
			IDAT.compress();
			writeChunk(png,0x49444154,IDAT);
			// 建立IEND数据块 
			writeChunk(png,0x49454E44,null);
			// 返回PNG 
			return png;
		}

		private static var crcTable:Array;
		private static var crcTableComputed:Boolean=false;

		private static function writeChunk(png:ByteArray, type:uint, data:ByteArray) {
			if (! crcTableComputed) {
				crcTableComputed=true;
				crcTable=[];
				for (var n:uint = 0; n < 256; n++) {
					var c:uint=n;
					for (var k:uint = 0; k < 8; k++) {
						if (c&1) {
							c=uint(uint(0xedb88320)^uint(c>>>1));
						} else {
							c=uint(c>>>1);
						}
					}
					crcTable[n]=c;
				}
			}

			var len:uint=0;
			if (data!=null) {
				len=data.length;
			}

			png.writeUnsignedInt(len);
			var p:uint=png.position;
			png.writeUnsignedInt(type);
			if (data!=null) {
				png.writeBytes(data);
			}

			var e:uint=png.position;
			png.position=p;
			var cc:uint=0xffffffff;

			for (var i:int = 0; i < (e-p); i++) {
				cc = uint(crcTable[(cc ^ png.readUnsignedByte())&uint(0xff)] ^ uint(cc>>> 8));
			}

			cc=uint(cc^uint(0xffffffff));
			png.position=e;
			png.writeUnsignedInt(cc);
		}
	}
}