# Weather Data XCTest

[![Swift Tests](https://github.com/nangzinzinwin/weather-data-xctest/actions/workflows/test.yml/badge.svg)](https://github.com/nangzinzinwin/weather-data-xctest/actions/workflows/test.yml)

A Swift temperature conversion project that uses XCTest to validate greenhouse sensor data, including standard conversions, missing readings, absolute zero, and invalid or out-of-range values.

## Overview

The project converts Kelvin temperature readings to Celsius and Fahrenheit.

It also validates sensor data before conversion to handle:

- Missing temperature readings
- Temperatures below absolute zero
- Out-of-range sensor readings

## Project Structure

```
weather-data-xctest/
├── Sources/
│   └── TemperatureConverter.swift
├── Tests/
│   └── TemperatureConverterTests.swift
├── Package.swift
└── README.md
```

## Testing

Unit tests are written using XCTest and cover:

- Kelvin to Celsius conversion
- Kelvin to Fahrenheit conversion
- Conversion consistency
- Absolute zero
- Missing readings
- Negative Kelvin values
- Out-of-range readings

## Workflow

1. Define temperature conversion requirements.
2. Implement the conversion logic.
3. Write XCTest unit tests.
4. Test normal and edge-case inputs.
5. Review and fix failing tests.
6. Document the test results.
   
## Continuous Integration

GitHub Actions automatically runs the XCTest suite on a macOS runner when changes are pushed to `main` or a pull request targets `main`.

## Status

In development.
