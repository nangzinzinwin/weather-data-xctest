public struct TemperatureConverter {
    
    public init() {}
    
    // Accepts Kelvin values within the greenhouse operating range.
    public static func kelvinToCelsius(_ kelvin: Double?) -> Double? {
        guard let kelvin = kelvin,
              kelvin >= 0,
              kelvin <= 373.15 else {
            return nil
        }
        
        return kelvin - 273.15
    }
    
    public static func kelvinToFahrenheit(_ kelvin: Double?) -> Double? {
        guard let celsius = kelvinToCelsius(kelvin) else {
            return nil
        }
        
        return (celsius * 9 / 5) + 32
    }
}
