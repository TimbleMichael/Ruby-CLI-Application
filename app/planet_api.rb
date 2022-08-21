require 'net/http'
require 'open-uri'
require 'json'

class GetPlanet

    URL = "https://api.le-systeme-solaire.net/rest/bodies/"


    def getPlanetUrl
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end 

    def getPlanetName
        planetName = JSON.parse(self.getPlanetUrl)
        planetName["bodies"].collect do |name|
            name["englishName"]
        end
    end

    def getPlanetGravity
        planetGravity = JSON.parse(self.getPlanetUrl)
        planetGravity["bodies"].collect do |gravity|
            gravity["gravity"]
        end
    end

    def getPlanetDensity
        planetDensity = JSON.parse(self.getPlanetUrl)
        planetDensity["bodies"].collect do |density|
            density["density"]
        end
    end

    def getPlanetPerihelion
        planetPerihelion = JSON.parse(self.getPlanetUrl)
        planetPerihelion["bodies"].collect do |perihelion|
            perihelion["perihelion"]
        end
    end

    def getPlanetAphelion
        planetAphelion = JSON.parse(self.getPlanetUrl)
        planetAphelion["bodies"].collect do |aphelion|
            aphelion["aphelion"]
        end
    end

    def getPlanetEccentric
        planetEccentric = JSON.parse(self.getPlanetUrl)
        planetEccentric["bodies"].collect do |eccentricity|
            eccentricity["eccentricity"]
        end
    end

    def getEscapeVelocity
        planetEscape = JSON.parse(self.getPlanetUrl)
        planetEscape["bodies"].collect do |velocity|
            velocity["escape"]
        end
    end

    def getRadius
        planetRadius = JSON.parse(self.getPlanetUrl)
        planetRadius["bodies"].collect do |radius|
            radius["meanRadius"]
        end
    end

    def getType
        planetType = JSON.parse(self.getPlanetUrl)
        planetType["bodies"].collect do |type|
            type["bodyType"]
        end
    end

    def getDiscoveryName
        planetDiscoveryName = JSON.parse(self.getPlanetUrl)
        planetDiscoveryName["bodies"].collect do |discovered_by|
            discovered_by["discoveredBy"]
        end
    end

    def getDiscoveryDate
        planetDiscoveryDate = JSON.parse(self.getPlanetUrl)
        planetDiscoveryDate["bodies"].collect do |discovery_date|
            discovery_date["discoveryDate"]
        end
    end

    # def getMassValue
    #     planetMass = JSON.parse(self.getPlanetUrl)
    #     planetMass["bodies"].collect do |massV|
    #         mass["mass"] ? mass["mass"]["massValue"] : nil
    #     end
    # end

    # def getMassExp
    #     planetMass = JSON.parse(self.getPlanetUrl)
    #     planetMass["bodies"].collect do |massE|
    #         mass["mass"] ? mass["mass"]["massExponent"] : nil
    #     end
    # end

end

# mass = GetPlanet.new.getMassExp
# puts mass








# if input == "1"
#     planetNames = GetPlanet.new.getPlanetName
#     planetGravs = GetPlanet.new.getPlanetGravity
#     planetDensities = GetPlanet.new.getPlanetDensity
#     planetPerihelions = GetPlanet.new.getPlanetPerihelion
#     planetAphelions = GetPlanet.new.getPlanetAphelion
#     planetEccentrics = GetPlanet.new.getPlanetEccentric
#     planetVelocities = GetPlanet.new.getEscapeVelocity
#     planetRadii = GetPlanet.new.getRadius
#     planetTypes = GetPlanet.new.getType
#     planetDiscoveryNames = GetPlanet.new.getDiscoveryName
#     planetDiscoveryDates = GetPlanet.new.getDiscoveryDate


#     data = planetNames.zip(planetGravs, planetDensities, planetPerihelions, planetAphelions, 
#                            planetEccentrics, planetVelocities, planetRadii, planetTypes, planetDiscoveryNames, planetDiscoveryDates)
#     data.each do |planetName, planetGrav, planetDensity, planetPerihelion, planetAphelion, 
#                   planetEccentric, planetVelocity, planetRadius, planetType, planetDiscoveryName, planetDiscoveryDate|
#         Planet.create({name: planetName, gravity: planetGrav, density: planetDensity, perihelion: planetPerihelion, aphelion: planetAphelion,
#                        eccentricity: planetEccentric, escape_velocity: planetVelocity, radius: planetRadius, body_type: planetType,
#                        discovered_by: planetDiscoveryName, discovery_date: planetDiscoveryDate})
#     end 
# end         













