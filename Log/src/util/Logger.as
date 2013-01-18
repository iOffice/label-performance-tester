/**
 * Created with IntelliJ IDEA.
 * User: Philip Keiter
 * Date: 1/18/13
 * Time: 5:11 PM
 * To change this template use File | Settings | File Templates.
 */
package util {
public class Logger {
	public static function log(startTime:Date, action:String):void {
		var endTime:Date = new Date();
		var diff:int = endTime.getTime() - startTime.getTime();
		trace("");
		trace(formatTime(startTime) + " - started " + action + " labels");
		trace(formatMilliseconds(diff) + " - seconds elapsed");
		trace(formatTime(endTime) + " - finished " + action + " labels");
	}

	private static function formatMilliseconds(value:int):String {
		var seconds:String = String(Math.floor(value / 1000));
		var milliseconds:String = pad(String(value % 1000), "0", 3);
		seconds = seconds + "." + milliseconds;
		return pad(seconds, " ", 12);
	}

	private static function formatTime(time:Date):String {
		var hours:String = pad(String(time.hours), "0", 2);
		var minutes:String = pad(String(time.minutes), "0", 2);
		var seconds:String = pad(String(time.seconds), "0", 2);
		var milliseconds:String = pad(String(time.milliseconds), "0", 3);
		return hours + ":" + minutes + ":" + seconds + "." + milliseconds;
	}

	private static function pad(string:String, pad:String, length:int):String {
		while (string.length < length) {
			string = pad + string;
		}
		return string;
	}
}
}
