import java.util.Scanner;

public class Main 
{
	
	public static void main(String[] args) 
	{

		Scanner scan = new Scanner(System.in);
		
//		System.out.print("Number of Cities: ");
//		int n = scan.nextInt();
		
		int n = 20;
		Map map = new Map(n);
		
		
		Information.fillCity(map.getCities());
		Information.fillPath(map.getPaths());
		Information.setConnectedCity(map.getCities(), map.getPaths());
		
//		System.out.println();
		
		map.printId();
		System.out.println();
//		System.out.print("Start dijkstra's algorithm with which ID? ");
//		int x = scan.nextInt();
//		System.out.println();
//		map.dijkstra(x);	
//		map.printTraverse();
		
		int source = scan.nextInt();
		int target = scan.nextInt();
		map.findPath(source, target);
		
		
	}

	
	
	
}
