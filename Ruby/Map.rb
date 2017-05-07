require_relative("./City")
require_relative("./Path")

class Map
  def initialize
    self.cityBuilder
  end

  def cityBuilder
    puts "Please enter number of City in your Map?\t"
    @lenght = gets.to_i
    @cities = Array.new()
    for i in 0..@lenght-1
      @cities.insert(i,City.new(1001+i))
    end
    self.pathBuilder
  end
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
  def printMap
    for i in 0..@cities.size-1
      for j in 0..@cities.at(i).getConnectedCity.size-1
       puts "from #{@cities.at(i).getName} to #{@cities.at(i).getConnectedCity.at(j).getName} #{@cities.at(i).getPathLenght.at(j).getLenght} kilometer\n"
      end
    end
  end
  ####
  def printIdOfCities
    for i in 0..@cities.size-1
      puts "#{@cities.at(i).getName} ID : #{@cities.at(i).getID}"
    end
  end
  ####
  def printTraversedCities
    for i in 0..@cities.size-1
      puts "#{@cities.at(i).getTraversedPathToThisCity} length : #{@cities.at(i).getDist} \n"
    end
  end
  ####
  def getLenght
    @lenght
  end
end
