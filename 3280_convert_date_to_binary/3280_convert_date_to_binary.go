package main

import (
	"strconv"
	"strings"
)

func convertDateToBinary(date string) string {
	myArray := strings.Split(date, "-")
	stringYear := ""
	stringMonth := ""
	stringDay := ""

	year, yearErr := strconv.Atoi(myArray[0])
	if yearErr != nil {
		panic(yearErr)
	}

	month, monthErr := strconv.Atoi(myArray[1])
	if monthErr != nil {
		panic(monthErr)
	}

	day, dayErr := strconv.Atoi(myArray[2])
	if dayErr != nil {
		panic(dayErr)
	}

	for year > 0 || month > 0 || day > 0 {
		if year > 0 {
			bin := year % 2
			stringYear = strconv.Itoa(bin) + stringYear
			year = int(year / 2)
		}

		if month > 0 {
			bin := month % 2
			stringMonth = strconv.Itoa(bin) + stringMonth
			month = int(month / 2)
		}

		if day > 0 {
			bin := day % 2
			stringDay = strconv.Itoa(bin) + stringDay
			day = int(day / 2)
		}
	}

	return stringYear + "-" + stringMonth + "-" + stringDay
}
