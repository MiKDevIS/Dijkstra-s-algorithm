require_relative ("./Integer")
class City
    def initialize(id)
      @connectedCity = Array.new()
      @pathLenght = Array.new()
      @cityVisited = false
      @dist= Integer::MAX
      puts "Please enter city name?\n"
      @name = gets
      @traversedPathToThisCity = @name
      @id = id
    end

    # accessor methods
    def getName
        @name
    end
    def getID
        @id
    end
    def isVisited
        @cityVisited
    end
    def getConnectedCity
        @connectedCity
    end
    def getPathLenght
        @pathLenght
    end
    def getTraversedPathToThisCity
        @traversedPathToThisCity
    end
    def getDist
        @dist
    end
    # setter methods
    def setName=(value)
        @name = value
    end
    def setID=(value)
        @id = value.to_i
    end
    def setCityVisited=(value)
        @cityVisited = value
    end
    def addConnectedCity=(value)
        @connectedCity.insert(@connectedCity.length,value)
    end
    def addPathLenght=(value)
        @pathLenght.insert(@pathLenght.size,value)
    end
    def setTraversedPathToThisCity=(value)
        @traversedPathToThisCity=value
    end
    def setDist=(value)
        @dist = value.to_i
    end
end
