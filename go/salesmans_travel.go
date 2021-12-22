package main

import (
	"fmt"
	"strings"
)

func splitAddress(address string) (string, string, string) {
	char := address[0]
	index := 1
	for char >= '0' && char <= '9' {
		char = address[index]
		index++
	}

	number := address[:index-1]
	streetAndTown := address[index : len(address)-9]
	zip := address[len(address)-8:]
	return number, streetAndTown, zip
}

func Travel(r, zipcode string) string {
	addressSlice := strings.Split(r, ",")
	var streets, houseNumbers []string
	for _, slice := range addressSlice {
		slice = strings.TrimSpace(slice)
		number, streetAndTown, zip := splitAddress(slice)
		if zip == zipcode {
			streets = append(streets, streetAndTown)
			houseNumbers = append(houseNumbers, number)
		}
	}
	streetsString := strings.Join(streets, ",")
	numbersString := strings.Join(houseNumbers, ",")
	return fmt.Sprintf("%s:%s/%s", zipcode, streetsString, numbersString)
}

func main() {
	var ad = `123 Main Street St. Louisville OH 43071, 432 Main Long Road St. Louisville OH 43071,786 High Street Pollocksville NY 56432,
  54 Holy Grail Street Niagara Town ZP 32908, 3200 Main Rd. Bern AE 56210,1 Gordon St. Atlanta RE 13000,
  10 Pussy Cat Rd. Chicago EX 34342, 10 Gordon St. Atlanta RE 13000, 58 Gordon Road Atlanta RE 13000,
  22 Tokyo Av. Tedmondville SW 43098, 674 Paris bd. Abbeville AA 45521, 10 Surta Alley Goodtown GG 30654,
  45 Holy Grail Al. Niagara Town ZP 32908, 320 Main Al. Bern AE 56210, 14 Gordon Park Atlanta RE 13000,
  100 Pussy Cat Rd. Chicago EX 34342, 2 Gordon St. Atlanta RE 13000, 5 Gordon Road Atlanta RE 13000,
  2200 Tokyo Av. Tedmondville SW 43098, 67 Paris St. Abbeville AA 45521, 11 Surta Avenue Goodtown GG 30654,
  45 Holy Grail Al. Niagara Town ZP 32918, 320 Main Al. Bern AE 56215, 14 Gordon Park Atlanta RE 13200,
  100 Pussy Cat Rd. Chicago EX 34345, 2 Gordon St. Atlanta RE 13222, 5 Gordon Road Atlanta RE 13001,
  2200 Tokyo Av. Tedmondville SW 43198, 67 Paris St. Abbeville AA 45522, 11 Surta Avenue Goodville GG 30655,
  2222 Tokyo Av. Tedmondville SW 43198, 670 Paris St. Abbeville AA 45522, 114 Surta Avenue Goodville GG 30655,
  2 Holy Grail Street Niagara Town ZP 32908, 3 Main Rd. Bern AE 56210, 77 Gordon St. Atlanta RE 13000,
  100 Pussy Cat Rd. Chicago OH 13201`

	fmt.Println(Travel(ad, "AA 45522"))
	fmt.Println(Travel(ad, "OH 430"))
}
