// Package weather_forecast provides a function to get the current weather condition for a given city.
package weather

// CurrentCondition returns the current weather condition for a given city.
var CurrentCondition string
// CurrentLocation is the city for which the weather condition is being reported.
var CurrentLocation string

// Forecast returns the current weather condition for a given city.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
