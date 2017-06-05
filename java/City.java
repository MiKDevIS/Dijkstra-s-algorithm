import java.util.ArrayList;

public class City
{
	private String name;
	private int id;
	private int dist;
	private boolean mark;
	ArrayList<City> connectedCities = new ArrayList<>();
	ArrayList<Path> pathList = new ArrayList<>();
	String traversePath = "";
	private static int baseId = 0;
	private int index;
	
	
	public City() 
	{
		name = "Not Set!";
		dist = Integer.MAX_VALUE;
		mark = false;
		id = baseId;
		baseId++;
		index = 0;
	}

	public int getDist() 
	{
		return dist;
	}

	public void setDist(int dist) 
	{
		this.dist = dist;
	}

	public void marked() 
	{
		mark = true;
	}
	
	public boolean isMark() 
	{
		return mark;
	}

	public void setMark(boolean mark) 
	{
		this.mark = mark;
	}

	public void setName(String name) 
	{
		this.name = name;
		traversePath = name;
	}

	public String getName() 
	{
		return name;
	}

	public int getId() 
	{
		return id;
	}

	public void mark(boolean mark)
	{
		this.mark = mark;
	}
	
	public int getIndex() 
	{
		return index++;
		
	}
	
	
	

}
