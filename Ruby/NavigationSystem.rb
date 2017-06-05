require_relative ("./Integer")
require_relative ("./Map")

class NavigationSystem
  #how to start
  def initialize
    @pathList = Array.new()
    @lenghtList = Array.new()
    puts "if you want to use default map press 1\nor to build your personal map press 2"
    condition = gets.to_i
    if condition==1
      @myMap = Map.new(false)
    elsif condition == 2
      @myMap = Map.new(true)
    else
      puts "Wrong number!!!"
    end
    puts "to find all path between two cities press 1 \nto find shortest path from on city press 2"
    condition = gets.to_i
    if condition==1
      self.twoCity
    elsif condition==2
      self.oneCity
    else
      puts "Wrong number!!!"
    end
  end
  #dijkstra runner for find shortest path
  def oneCity
    @myMap.printMap
    @myMap.printIdOfCities
    puts "*-*-*-*-*-*\nEnter id of City to start?\t"
    self.dijkstraTraverse(@myMap.getCities.at(gets.to_i-1001),@myMap.getCities.size)
    @myMap.printTraversedCities
  end
  ####
  #dijkstra algorithm
  def dijkstraTraverse(start,size)
    currentCity = start
    for i in 0..size-1
        for i in 0..currentCity.getConnectedCity.size-1
          nextCity = currentCity.getConnectedCity.at(i)
          if !nextCity.isVisited
            if currentCity.getDist == Integer::MAX
              currentCity.setDist=(0)
            end
            if currentCity.getPathLenght.at(i).getLenght + currentCity.getDist < nextCity.getDist
              nextCity.setDist=(currentCity.getPathLenght.at(i).getLenght + currentCity.getDist)
              nextCity.setTraversedPathToThisCity=(currentCity.getTraversedPathToThisCity + " --> " + nextCity.getName)
            end
          end
        end
        currentCity.setCityVisited=(true)
        minDistCity = City.new(0,"temp")
        for k in 0..size-1
          if @myMap.getCities.at(k).getDist < minDistCity.getDist && !@myMap.getCities.at(k).isVisited
            minDistCity = @myMap.getCities.at(k)
          end
        end
      currentCity=minDistCity
    end
  end
  #findAllPath runner
  def twoCity
    @myMap.printIdOfCities
    puts "*-*-*-*-*-*\nEnter id of start City?\t"
    first = gets.to_i-1001
    puts "*-*-*-*-*-*\nEnter id of second City?\t"
    second = gets.to_i-1001
    findAllPath(@myMap.getCities.at(first),@myMap.getCities.at(second),"",0)
    sortPathList(0,@lenghtList.length-1)
    for i in 0..@pathList.length-1
      puts "#{@pathList.at(i)} ==> #{@lenghtList.at(i)}"
    end
  end
  #simple method to find all path between two city
  def findAllPath(fsource,target,path,lenght)
    if !fsource.isVisited
      fsource.setCityVisited=(true)
      path = path + "-->"+ fsource.getName
    else
      return false
    end
    if fsource.getID == target.getID
      fsource.setCityVisited=(false)
      @pathList.insert(@pathList.size,path)
      @lenghtList.insert(@lenghtList.size,lenght)
      return true
    end
    for i in 0..fsource.getConnectedCity.size-1
      lenght=lenght+fsource.getPathLenght.at(i).getLenght
      self.findAllPath(fsource.getConnectedCity.at(i),target,path,lenght)
      lenght=lenght-fsource.getPathLenght.at(i).getLenght
    end
    fsource.setCityVisited=(false)
    return false
  end
  def sortPathList(beg,last)
    l = beg
    r = last
    current = beg
		while l < r do
			while (current < r) and (@lenghtList[current] < @lenghtList[r]) do#
				r-=1      end
			swap(current, r)
			current = r
			while (current > l) and (@lenghtList[current] > @lenghtList[l]) do#
				l+=1      end
			swap(current, l)
			current = l
		end
		if current > beg+1
			sortPathList(beg, current-1)     end
		if current < last-1
			sortPathList(current+1, last)    end
  end

  def swap(index1,index2)
    temp = @lenghtList[index1]
    @lenghtList[index1]=@lenghtList[index2]
    @lenghtList[index2]= temp
    temp = @pathList[index1]
    @pathList[index1]=@pathList[index2]
    @pathList[index2]= temp
  end
end
#Main of program
nav = NavigationSystem.new
nav = nav
