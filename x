package x;

public class X {
	public static void main(String[] args){
		printX(7);
		}
		private static void printX(int width) {
		    printX(width, 0);
		}
		private static void printX(int width, int level) {
		    if (width < 2) {
		        if (width == 1) {
		            printRow(width, level);
		        }
		        return;
		    }
		    printRow(width, level);
		    printX(width - 2, level+1);
		    printRow(width, level);
		}
		
		private static void printRow(int width, int level) {
		    StringBuilder sb = new StringBuilder();
		    if (width < 1) return;

		    for (int i = 0; i < level; i++) {
		        sb.append(" ");
		    }

		    for (int i = 0; i < width; i++) {
		        if (i == 0 || i == width - 1) {
		            sb.append("X");
		        }
		        else {
		            sb.append(" ");
		        }
		    }
		    System.out.println(sb.toString());
		}
		}

