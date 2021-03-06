BTC_PRICE_SCRIPT = btc_price.py
BTC_FEES_SCRIPT = btc_fees.py
BTC_PRICE = btc_price
BTC_FEES = btc_fees

.PHONY: help install uninstall

help:
	@echo "Run 'make install' or 'make uninstall'"

install:
	@cp ${BTC_PRICE_SCRIPT} ~/.local/bin/${BTC_PRICE}
	@chmod +x ~/.local/bin/${BTC_PRICE}
	@cp ${BTC_FEES_SCRIPT} ~/.local/bin/${BTC_FEES}
	@chmod +x ~/.local/bin/${BTC_FEES}
	@echo "Copied scripts to ~/.local/bin, and set as executable."

uninstall:
	@rm -f ~/.local/bin/${BTC_PRICE}
	@rm -f ~/.local/bin/${BTC_FEES}
	@echo "Removed ${BTC_PRICE} and ${BTC_FEES} from ~/.local/bin/"
