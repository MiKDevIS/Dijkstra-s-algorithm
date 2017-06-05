require_relative("./City")
require_relative("./Path")

class Map
  def initialize(cond)
    if cond
      #To build custom map
      self.cityBuilder
    else
      #To build default map
      @cities = Array.new()
      oradea=City.new(1001,"Oradea")
      @cities.insert(@cities.size,oradea)
      zerind=City.new(1002,"Zerind")
      @cities.insert(@cities.size,zerind)
      arad=City.new(1003,"Arad")
      @cities.insert(@cities.size,arad)
      timisoara=City.new(1004,"Timisoara")
      @cities.insert(@cities.size,timisoara)
      lugoj=City.new(1005,"Lugoj")
      @cities.insert(@cities.size,lugoj)
      mehadia=City.new(1006,"Mehadia")
      @cities.insert(@cities.size,mehadia)
      drobeta=City.new(1007,"Drobeta")
      @cities.insert(@cities.size,drobeta)
      sibin=City.new(1008,"Sibin")
      @cities.insert(@cities.size,sibin)
      rimmiecuVilcea=City.new(1009,"Rimmiecu_Vilcea")
      @cities.insert(@cities.size,rimmiecuVilcea)
      craiova=City.new(1010,"Craiova")
      @cities.insert(@cities.size,craiova)
      fagaras=City.new(1011,"Fagaras")
      @cities.insert(@cities.size,fagaras)
      pitesti=City.new(1012,"Pitesti")
      @cities.insert(@cities.size,pitesti)
      giurgiu=City.new(1013,"Giurgiu")
      @cities.insert(@cities.size,giurgiu)
      bucharest=City.new(1014,"Bucharest")
      @cities.insert(@cities.size,bucharest)
      neamt=City.new(1015,"Neamt")
      @cities.insert(@cities.size,neamt)
      iasi=City.new(1016,"Iasi")
      @cities.insert(@cities.size,iasi)
      vaslui=City.new(1017,"Vaslui")
      @cities.insert(@cities.size,vaslui)
      urziceni=City.new(1018,"Urziceni")
      @cities.insert(@cities.size,urziceni)
      hirsova=City.new(1019,"Hirsova")
      @cities.insert(@cities.size,hirsova)
      eforie=City.new(1020,"Eforie")
      @cities.insert(@cities.size,eforie)
      ####
      temp = Path.new(71)
      @cities.at(0).addConnectedCity=(@cities.at(1))
      @cities.at(0).addPathLenght=(temp)
      @cities.at(1).addConnectedCity=(@cities.at(0))
      @cities.at(1).addPathLenght=(temp)
      temp = Path.new(151)
      @cities.at(0).addConnectedCity=(@cities.at(7))
      @cities.at(0).addPathLenght=(temp)
      @cities.at(7).addConnectedCity=(@cities.at(0))
      @cities.at(7).addPathLenght=(temp)
      temp = Path.new(75)
      @cities.at(1).addConnectedCity=(@cities.at(2))
      @cities.at(1).addPathLenght=(temp)
      @cities.at(2).addConnectedCity=(@cities.at(1))
      @cities.at(2).addPathLenght=(temp)
      temp = Path.new(140)
      @cities.at(2).addConnectedCity=(@cities.at(7))
      @cities.at(2).addPathLenght=(temp)
      @cities.at(7).addConnectedCity=(@cities.at(2))
      @cities.at(7).addPathLenght=(temp)
      temp = Path.new(118)
      @cities.at(2).addConnectedCity=(@cities.at(3))
      @cities.at(2).addPathLenght=(temp)
      @cities.at(3).addConnectedCity=(@cities.at(2))
      @cities.at(3).addPathLenght=(temp)
      temp = Path.new(111)
      @cities.at(3).addConnectedCity=(@cities.at(4))
      @cities.at(3).addPathLenght=(temp)
      @cities.at(4).addConnectedCity=(@cities.at(3))
      @cities.at(4).addPathLenght=(temp)
      temp = Path.new(70)
      @cities.at(4).addConnectedCity=(@cities.at(5))
      @cities.at(4).addPathLenght=(temp)
      @cities.at(5).addConnectedCity=(@cities.at(4))
      @cities.at(5).addPathLenght=(temp)
      temp = Path.new(75)
      @cities.at(5).addConnectedCity=(@cities.at(6))
      @cities.at(5).addPathLenght=(temp)
      @cities.at(6).addConnectedCity=(@cities.at(5))
      @cities.at(6).addPathLenght=(temp)
      temp = Path.new(120)
      @cities.at(6).addConnectedCity=(@cities.at(9))
      @cities.at(6).addPathLenght=(temp)
      @cities.at(9).addConnectedCity=(@cities.at(6))
      @cities.at(9).addPathLenght=(temp)
      temp = Path.new(146)
      @cities.at(8).addConnectedCity=(@cities.at(9))
      @cities.at(8).addPathLenght=(temp)
      @cities.at(9).addConnectedCity=(@cities.at(8))
      @cities.at(9).addPathLenght=(temp)
      temp = Path.new(138)
      @cities.at(9).addConnectedCity=(@cities.at(11))
      @cities.at(9).addPathLenght=(temp)
      @cities.at(11).addConnectedCity=(@cities.at(9))
      @cities.at(11).addPathLenght=(temp)
      temp = Path.new(80)
      @cities.at(7).addConnectedCity=(@cities.at(8))
      @cities.at(7).addPathLenght=(temp)
      @cities.at(8).addConnectedCity=(@cities.at(7))
      @cities.at(8).addPathLenght=(temp)
      temp = Path.new(97)
      @cities.at(8).addConnectedCity=(@cities.at(11))
      @cities.at(8).addPathLenght=(temp)
      @cities.at(11).addConnectedCity=(@cities.at(8))
      @cities.at(11).addPathLenght=(temp)
      temp = Path.new(99)
      @cities.at(7).addConnectedCity=(@cities.at(10))
      @cities.at(7).addPathLenght=(temp)
      @cities.at(10).addConnectedCity=(@cities.at(7))
      @cities.at(10).addPathLenght=(temp)
      temp = Path.new(101)
      @cities.at(11).addConnectedCity=(@cities.at(13))
      @cities.at(11).addPathLenght=(temp)
      @cities.at(13).addConnectedCity=(@cities.at(11))
      @cities.at(13).addPathLenght=(temp)
      temp = Path.new(211)
      @cities.at(10).addConnectedCity=(@cities.at(13))
      @cities.at(10).addPathLenght=(temp)
      @cities.at(13).addConnectedCity=(@cities.at(10))
      @cities.at(13).addPathLenght=(temp)
      temp = Path.new(90)
      @cities.at(12).addConnectedCity=(@cities.at(13))
      @cities.at(12).addPathLenght=(temp)
      @cities.at(13).addConnectedCity=(@cities.at(12))
      @cities.at(13).addPathLenght=(temp)
      temp = Path.new(85)
      @cities.at(13).addConnectedCity=(@cities.at(17))
      @cities.at(13).addPathLenght=(temp)
      @cities.at(17).addConnectedCity=(@cities.at(13))
      @cities.at(17).addPathLenght=(temp)
      temp = Path.new(98)
      @cities.at(18).addConnectedCity=(@cities.at(17))
      @cities.at(18).addPathLenght=(temp)
      @cities.at(17).addConnectedCity=(@cities.at(18))
      @cities.at(17).addPathLenght=(temp)
      temp = Path.new(142)
      @cities.at(16).addConnectedCity=(@cities.at(17))
      @cities.at(16).addPathLenght=(temp)
      @cities.at(17).addConnectedCity=(@cities.at(16))
      @cities.at(17).addPathLenght=(temp)
      temp = Path.new(86)
      @cities.at(18).addConnectedCity=(@cities.at(19))
      @cities.at(18).addPathLenght=(temp)
      @cities.at(19).addConnectedCity=(@cities.at(18))
      @cities.at(19).addPathLenght=(temp)
      temp = Path.new(92)
      @cities.at(16).addConnectedCity=(@cities.at(15))
      @cities.at(16).addPathLenght=(temp)
      @cities.at(15).addConnectedCity=(@cities.at(16))
      @cities.at(15).addPathLenght=(temp)
      temp = Path.new(87)
      @cities.at(14).addConnectedCity=(@cities.at(15))
      @cities.at(14).addPathLenght=(temp)
      @cities.at(15).addConnectedCity=(@cities.at(14))
      @cities.at(15).addPathLenght=(temp)
    end
  end
  ####
  #build custom map
  def cityBuilder
    puts "Please enter number of City in your Map?\t"
    @lenght = gets.to_i
    @cities = Array.new()
    for i in 0..@lenght-1
      @cities.insert(i,City.new(1001+i))
    end
    self.pathBuilder
  end
  #To build graph for custom map
  def pathBuilder
    for i in 0..@cities.size-1
      for j in 0..@cities.size-1
        if  i!=j && i<j
          puts "Is there a path between City #{@cities.at(i).getName} and #{@cities.at(j).getName} ?(press 1 if path exist)\t"
          if gets.to_i == 1
            puts "lenght?\t"
            temp = Path.new(gets)
            @cities.at(i).addConnectedCity=(@cities.at(j))
            @cities.at(i).addPathLenght=(temp)
            @cities.at(j).addConnectedCity=(@cities.at(i))
            @cities.at(j).addPathLenght=(temp)
          end
        end
      end
    end
  end
  ####
  #print current map
  def printMap
    for i in 0..@cities.size-1
      for j in 0..@cities.at(i).getConnectedCity.size-1
       puts "from #{@cities.at(i).getName} to #{@cities.at(i).getConnectedCity.at(j).getName} #{@cities.at(i).getPathLenght.at(j).getLenght} kilometer\n"
      end
    end
  end
  ####
  #print to identify cities
  def printIdOfCities
    for i in 0..@cities.size-1
      puts "#{@cities.at(i).getName} ID : #{@cities.at(i).getID}"
    end
  end
  ####
  #print after dijkstra traverse to show result
  def printTraversedCities
    for i in 0..@cities.size-1
      puts "#{@cities.at(i).getTraversedPathToThisCity} length : #{@cities.at(i).getDist} \n"
    end
  end
  ####
  #accessor methods
  def getCities
    @cities
  end
  def getLenght
    @lenght
  end
end
