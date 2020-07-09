package utils

import "math"

const earthRadius = 6378.137
const fanAngle = 180.0

func EarthDistance(lat1, lng1 float64, lat2, lng2 float64) float64 {
	rad := math.Pi / fanAngle
	lat1 = lat1 * rad
	lng1 = lng1 * rad
	lat2 = lat2 * rad
	lng2 = lng2 * rad
	theta := lng2 - lng1
	dist := math.Acos(math.Sin(lat1)*math.Sin(lat2) + math.Cos(lat1)*math.Cos(lat2)*math.Cos(theta))
	return dist * earthRadius
}
