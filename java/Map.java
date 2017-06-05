import java.util.ArrayList;
import java.util.Scanner;
import java.util.Stack;

public class Map 
{
	private City[] cities;
	private Path[][] paths;
	ArrayList<Dir> traverseArray = new ArrayList<>();

	public Map(int number) 
	{
		cities = new City[number];
		for(int i = 0; i < number; i++)
			cities[i] = new City();
		paths = new Path[number][number];
		for(int i = 0; i < number; i++)
			for(int j = 0; j < number; j ++)
				paths[i][j] = new Path();
	}

	public void printPath() 
	{
		for(int i = 0; i < paths.length; i++)
		{
			for(int j = 0; j < paths.length; j++)
				System.out.print(paths[i][j].getLength() + " ");
			System.out.println();
		}
	}
	
	public City[] getCities() 
	{
		return cities;
	}

	public Path[][] getPaths() 
	{
		return paths;
	}

	public void dijkstra(int start)
	{
		dijkstra(cities[start]);
	}
	
	private void dijkstra(City start) 
	{
		City current = start;
		City next = null;
		
		for(int i = 0; i < cities.length; i++)
		{
			for(int j = 0; j < current.connectedCities.size(); j++)
			{
				next = current.connectedCities.get(j);
				
				if(! next.isMark())
				{
					if (current.getDist() == Integer.MAX_VALUE)
	                    current.setDist(0);
					if(current.pathList.get(j).getLength() + current.getDist() < next.getDist())
					{
						next.setDist(current.pathList.get(j).getLength() + current.getDist());
                        next.traversePath = current.traversePath + " --> " + next.getName(); 
					}
				}
			}
			current.marked();
			
			City minDist = new City();
			for(int k =0; k < cities.length; k++)
				if(cities[k].getDist() < minDist.getDist() && !cities[k].isMark())
					minDist = cities[k];
			
			current = minDist;
		}
	}
	
	public void printTraverse() 
	{
		for(int i = 0; i < cities.length; i++)
			System.out.println(cities[i].traversePath + " ===> Length: " + cities[i].getDist());
	}
	
	public void printId() 
	{
		System.out.println("City\t ID");
		System.out.println();
		for(int i = 0;i < cities.length; i++)
			System.out.println(cities[i].getName() + ": " + cities[i].getId());
	}
	
	public void findPath(int sourceId, int targetID) 
	{
		findPath(cities[sourceId], cities[targetID],"",0);
        printFindPath();
	}
	
	private boolean findPath(City source, City target,String path,int pathLenght)
	{
		if(!source.isMark())
		{
			source.mark(true);
			path += " --> " + source.getName();
		}
		else
		{
			return false;
		}
		if(source.getId() == target.getId())
		{
			//System.out.println(path+" ==> "+pathLenght);
            traverseArray.add(new Dir(path,pathLenght));
			source.mark(false);
			return true;
		}
		for (int i = 0;i < source.connectedCities.size(); i++)
		{
			findPath(source.connectedCities.get(i), target,path,pathLenght+=source.pathList.get(i).getLength());
            pathLenght-=source.pathList.get(i).getLength();
        }
		source.mark(false);
		return false;
	}
	void printFindPath(){
        for (int i = 0; i < traverseArray.size(); i++) {
            System.out.println(traverseArray.get(i).path+ " ==> "+traverseArray.get(i).lenght);
        }
    }

	

	
	
	

	

}
