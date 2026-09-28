import XCTest
@testable import TemperatureConverter

final class TemperatureConverterTests: XCTestCase {

    // Verifies the required 300 K to Celsius conversion.
    func testKelvinToCelsius300K() {
        let result = TemperatureConverter.kelvinToCelsius(300)

        XCTAssertNotNil(result)
        XCTAssertEqual(result!, 26.85, accuracy: 0.01)
    }

    // Verifies the corresponding 300 K to Fahrenheit conversion.
    func testKelvinToFahrenheit300K() {
        let result = TemperatureConverter.kelvinToFahrenheit(300)

        XCTAssertNotNil(result)
        XCTAssertEqual(result!, 80.33, accuracy: 0.01)
    }

    // Ensures both conversion methods produce consistent results.
    func testCelsiusAndFahrenheitAreConsistent() {
        let celsius = TemperatureConverter.kelvinToCelsius(300)!
        let fahrenheit = TemperatureConverter.kelvinToFahrenheit(300)!
        let expectedFahrenheit = (celsius * 9 / 5) + 32

        XCTAssertEqual(fahrenheit, expectedFahrenheit, accuracy: 0.01)
    }

    // Verifies the temperature values at absolute zero.
    func testAbsoluteZero() {
        let celsius = TemperatureConverter.kelvinToCelsius(0)
        let fahrenheit = TemperatureConverter.kelvinToFahrenheit(0)

        XCTAssertEqual(celsius!, -273.15, accuracy: 0.01)
        XCTAssertEqual(fahrenheit!, -459.67, accuracy: 0.01)
    }

    // Verifies that a missing sensor reading is rejected.
    func testNilTemperature() {
        let celsius = TemperatureConverter.kelvinToCelsius(nil)
        let fahrenheit = TemperatureConverter.kelvinToFahrenheit(nil)

        XCTAssertNil(celsius)
        XCTAssertNil(fahrenheit)
    }

    // Verifies that temperatures below absolute zero are rejected.
    func testNegativeKelvinIsRejected() {
        let celsius = TemperatureConverter.kelvinToCelsius(-10)
        let fahrenheit = TemperatureConverter.kelvinToFahrenheit(-10)

        XCTAssertNil(celsius)
        XCTAssertNil(fahrenheit)
    }

    // Verifies that an out-of-range sensor reading is rejected.
    func testUnexpectedHighReadingIsRejected() {
        let result = TemperatureConverter.kelvinToCelsius(1000)

        XCTAssertNil(result)
    }
}
