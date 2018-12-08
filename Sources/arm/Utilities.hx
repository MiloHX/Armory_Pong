package arm;

import kha.FastFloat;
import iron.math.Math;
import iron.math.Vec2;

class Utilities {

	static public inline function rotateVec2(vec:Vec2, angle:Float):Vec2 {
		var sin = Math.sin(angle);
		var cos = Math.cos(angle);

		var result = new Vec2();
		result.x = vec.x * cos - vec.y * sin;
		result.y = vec.x * sin + vec.y * cos;

		return result;
	}

	/**
	* angle from vec2 v1 to vec2 v2 (normalize them first)
	* @param v1 vec2 1
	* @param v2 vec2 2
	* @return   result
	*/
	public static inline function angleBetweenVec2(v1:Vec2, v2:Vec2):FastFloat {
		return Math.atan2(v1.x*v2.y - v1.y*v2.x, v1.x*v2.x + v1.y*v2.y);
	}


	public static function checkDigits(number:Int):Int {
		if (number < 100000) {
			if (number < 100) {
				if (number < 10) {
					return 1;
				} else {
					return 2;
				}
			} else {
				if (number < 1000) {
					return 3;
				} else {
					if (number < 10000) {
						return 4;
					} else {
						return 5;
					}
				}
			}
		} else {
			if (number < 10000000) {
				if (number < 1000000) {
					return 6;
				} else {
					return 7;
				}
			} else {
				if (number < 100000000) {
					return 8;
				} else {
					if (number < 1000000000) {
						return 9;
					} else {
						return 10;
					}
				}
			}
		}
	}

}