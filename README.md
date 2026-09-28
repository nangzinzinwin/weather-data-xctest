# Weather Data XCTest

A Swift project for testing temperature conversion logic in a greenhouse climate control scenario.

## Overview

The project converts temperature readings from Kelvin to Celsius and Fahrenheit and tests how the system handles normal, missing, and invalid sensor data.

## Project Structure

weather-data-xctest/
├── Sources/
│   └── TemperatureConverter.swift
├── Tests/
│   └── TemperatureConverterTests.swift
├── Package.swift
└── README.md

## Testing

Unit tests are written using XCTest and cover:

- Standard temperature conversions
- Conversion consistency
- Absolute zero
- Missing temperature readings
- Invalid Kelvin values
- Out-of-range sensor readings

## Workflow

1. Define temperature conversion requirements.
2. Implement the conversion logic.
3. Write XCTest unit tests.
4. Test normal and edge-case inputs.
5. Review and fix failing tests.
6. Document the test results.

## Status

In development.
