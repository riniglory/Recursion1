package cs;
import java.util.*;
public class Flip {
	public void flipp(List<String> items, int length, String prefix)
	{
	    if (prefix.length() == length) {
	        items.add(prefix);
	        return;
	    }
	    flipp(items, length, prefix + 'c');
	    flipp(items, length, prefix + 'S');
	    
	}
public static void main(String[] args) {
	
	List<String> inc = new LinkedList<>();
	Flip a=new Flip();
	a.flipp(inc, 4, "");
	for (String s : inc)
	    System.out.println(s);
}
}
