package chap11;

import java.util.Collection;

public class MyUtil {
	public static int length(Object Object) {
		Collection c = null;
		if(Object instanceof Collection) {
			c = (Collection)Object;
		}else {
			return -1;
		}
		return c.size();
	}
}
