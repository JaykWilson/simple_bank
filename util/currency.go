package util

const (
	USD = "USD"
	EUR = "EUR"
	BTC = "BTC"
)

func IsSupportedCurrency(currency string) bool {
	switch currency {
	case USD, EUR, BTC:
		return true
	}
	return false
}
