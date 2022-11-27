import Foundation
import UIKit

/*
 Enums are used to store like constants.
 */
enum WeatherType {
    case sun, rain, cloud, snow, wind
}

func getWeatherStatus(weather: WeatherType) -> String? {
    switch weather {
    case WeatherType.sun:
        print("Sunny")
    case WeatherType.rain:
        print("Rainy")
    case WeatherType.cloud:
        print("Cloudy")
    case WeatherType.snow:
        print("Snowy")
    case WeatherType.wind:
        print("Windy")
    }
    
    return "\(weather)"
}

getWeatherStatus(weather: WeatherType.sun) // Sunny
getWeatherStatus(weather: WeatherType.cloud) // Cloudy
getWeatherStatus(weather: WeatherType.rain) // Rainy
getWeatherStatus(weather: WeatherType.snow) // Snowy
getWeatherStatus(weather: WeatherType.wind) // Windy

/**
 We could also declare enums with multiple cases which makes it easier for us to call in methods.
 */
enum Sport {
    case basketball
    case football
    case soccer
    case baseball
}

func getSport(sport: Sport) -> String? {
    switch sport {
    case .basketball:
        return "basektball"
    case .baseball:
        return "baseball"
    case .football:
        return "football"
    case .soccer:
        return "soccer"
    }
}
