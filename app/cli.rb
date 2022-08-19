class CLI
    def initialize
        contiue = 'y'

        puts "############################################################".green
        puts "############################################################".green
        puts "#".green+ " Welcome to my Calculator and Planetorium Wonder Emporium ".white+ "#".green
        puts "############################################################".green
        puts "############################################################".green

        while contiue == 'y'
            puts "What would you like to do, today".white
            puts "1. Calculator".green
            puts "2. Book of Planets".green

            input = gets.strip

            if input == "1"
                startCalculator
            else
                startPlanet
            end
            puts "Do you want to contiue (y/N)?"
            contiue = gets.strip
        end
    end

    def startCalculator

        puts "Enter First Number"
        input1 = gets.strip
        puts "Enter Second Number"
        input2 = gets.strip

        puts "Enter Operator (+, -, *, /, exp)"
        inputOperator = gets.strip

        result = Calculator.new.calculate(input1, input2, inputOperator)

        puts result
    end

    def startPlanet
        puts "1. insert nmae"
        input = gets.strip

        if input == "1"
            planetNames = GetPlanet.new.getPlanetName
            planetGravs = GetPlanet.new.getPlanetGravity
            planetDensities = GetPlanet.new.getPlanetDensity
            planetPerihelions = GetPlanet.new.getPlanetPerihelion
            planetAphelions = GetPlanet.new.getPlanetAphelion
            planetEccentrics = GetPlanet.new.getPlanetEccentric
            planetVelocities = GetPlanet.new.getEscapeVelocity
            planetRadii = GetPlanet.new.getRadius
            planetTypes = GetPlanet.new.getType
            planetDiscoveryNames = GetPlanet.new.getDiscoveryName
            planetDiscoveryDates = GetPlanet.new.getDiscoveryDate


            data = planetNames.zip(planetGravs, planetDensities, planetPerihelions, planetAphelions, 
                                   planetEccentrics, planetVelocities, planetRadii, planetTypes, planetDiscoveryNames, planetDiscoveryDates)
            data.each do |planetName, planetGrav, planetDensity, planetPerihelion, planetAphelion, 
                          planetEccentric, planetVelocity, planetRadius, planetType, planetDiscoveryName, planetDiscoveryDate|
                Planet.create({name: planetName, gravity: planetGrav, density: planetDensity, perihelion: planetPerihelion, aphelion: planetAphelion,
                               eccentricity: planetEccentric, escape_velocity: planetVelocity, radius: planetRadius, body_type: planetType,
                               discovered_by: planetDiscoveryName, discovery_date: planetDiscoveryDate})
            end 
        end            
    end
end



    