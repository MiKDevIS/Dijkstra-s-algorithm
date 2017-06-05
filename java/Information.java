
public class Information 
{
	public static void fillCity(City[] c)
	{
		c[0].setName("Oradea");
		c[1].setName("Zerind");
		c[2].setName("Arad");
		c[3].setName("Timisoara");
		c[4].setName("Sibin");
		c[5].setName("Mehadia");
		c[6].setName("Drobeta");
		c[7].setName("Rimnicu Vilcea");
		c[8].setName("Pitesti");
		c[9].setName("Craiova");
		c[10].setName("Fagaras");
		c[11].setName("Bucharest");
		c[12].setName("Giurgiu");
		c[13].setName("Urziceni");
		c[14].setName("Hirsova");
		c[15].setName("Eforie");
		c[16].setName("Vaslui");
		c[17].setName("Iasi");
		c[18].setName("Neamt");
		c[19].setName("Lugoj");
	}
	
	public static void fillPath(Path[][] m)
	{
		m[0][1].setLength(71);
		m[0][4].setLength(151);
		m[1][2].setLength(75);
		m[2][3].setLength(118);
		m[2][4].setLength(140);
		m[3][19].setLength(111);
		m[4][7].setLength(80);
		m[4][10].setLength(99);
		m[5][6].setLength(75);
		m[5][19].setLength(70);
		m[6][9].setLength(120);
		m[7][8].setLength(97);
		m[7][9].setLength(146);
		m[8][9].setLength(138);
		m[8][11].setLength(101);
		m[10][11].setLength(211);		
		m[11][12].setLength(90);
		m[11][13].setLength(85);
		m[13][14].setLength(98);
		m[13][16].setLength(142);
		m[14][15].setLength(86);
		m[16][17].setLength(92);
		m[17][18].setLength(87);
	
		for (int i = 0; i < m.length; i++) 
			for(int j=0; j < m.length; j++)
				if (i > j)
					m[i][j].setLength(m[j][i].getLength());
	}
	
	public static void setConnectedCity(City[] c, Path[][] p) 
	{
		for(int i = 0; i < c.length; i++)
			for(int j = 0; j < i; j++)
				if(p[i][j].getLength() > 0)
				{
					c[i].connectedCities.add(c[j]);
					c[i].pathList.add(p[i][j]);
					c[j].connectedCities.add(c[i]);
					c[j].pathList.add(p[i][j]);
				}
	}
	
	public static void printMatrix(int[][] x) 
	{
		for (int i = 0; i < x.length; i++) 
		{
			for (int j = 0; j < x.length; j++) 
				System.out.print(x[i][j]+" ");
			System.out.println();
		}
	}
	
	public static void fillCity2(City[] c) 
	{
		c[0].setName("A");
		c[1].setName("B");
		c[2].setName("C");
		c[3].setName("D");
		c[4].setName("E");
	}

	public static void fillPath2(Path[][] m) 
	{
		m[0][1].setLength(1);
		m[0][2].setLength(5);
		
		m[1][2].setLength(3);
		m[1][3].setLength(4);
		
		m[2][3].setLength(2);
		m[2][4].setLength(1);
		
		m[3][4].setLength(5);
		
				
		for (int i = 0; i < m.length; i++) 
			for( int j=0; j < m.length; j++)
				if (i > j)
					m[i][j] = m[j][i];
		
	}

}
