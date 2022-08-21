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
        puts "Please Enter what planet you would like to learn more about"
        inputPlanet = (gets.strip).capitalize   

        puts "What would you like to know about the #{inputPlanet}"
        puts "1. What is the GRAVITY like?"
        puts "2. What is the DENSITY of the planet?"
        puts "3. The PERIHELION?"
        puts "4. The APHELION?"
        puts "5. The ECCENTRICITY?"
        puts "6. The VELOCITY?"
        puts "7. The RADIUS?"
        puts "8. What type of BODY is it?"
        puts "9. Who DISCOVERED it?"
        input = (gets.strip).upcase

        if input == "1" || input == "GRAVITY"
            planet = Planet.find_by(name: inputPlanet)
            puts "The surface gravity on #{inputPlanet} is #{planet.gravity} m.s^-2".green
        elsif input == "2" || input == "DENSITY"
            planet = Planet.find_by(name: inputPlanet)
            puts "The density of #{inputPlanet} is #{planet.density} g.cm^3".green
        elsif input == "3" || input == "PERIHELION"
            planet = Planet.find_by(name: inputPlanet)
            puts "The perihelion (the closest it will be to the sun) of #{inputPlanet} is #{planet.perihelion} km".green
        elsif input == "4" || input == "APHELION"
            planet = Planet.find_by(name: inputPlanet)
            puts "The aphelion (the farthest it will be from thes sun) of #{inputPlanet} is #{planet.aphelion} km".green
        elsif input == "5" || input == "ECCENTRICITY"
            planet = Planet.find_by(name: inputPlanet)
            puts "The eccentricity factor of #{inputPlanet} is #{planet.eccentricity}".green
        elsif input == "6" || input == "VELOCITY"
            planet = Planet.find_by(name: inputPlanet)
            puts "To escape #{inputPlanet} an object must travel at #{planet.escape_velocity} m.s^-1".green
        elsif input == "7" || input == "RADIUS"
            planet = Planet.find_by(name: inputPlanet)
            puts "The radius of #{inputPlanet} is #{planet.radius} km".green
        elsif input == "8" || input == "BODY"
            planet = Planet.find_by(name: inputPlanet)
            puts "#{inputPlanet} is a #{planet.body_type} type".green
        elsif input == "9" || input == "DISCOVERED"
            planet = Planet.find_by(name: inputPlanet)
            puts "#{inputPlanet} was discovered by #{planet.discovered_by} on #{planet.discovery_date}".green
        elsif
            puts "Enter a valid planet"
        end
    end
end



    