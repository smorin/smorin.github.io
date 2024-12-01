.PHONY: install

install:
	@echo "Checking system dependencies..."
	@if ! command -v brew >/dev/null 2>&1; then \
		echo "Installing Homebrew..."; \
		/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" >/dev/null 2>&1; \
	else \
		echo "Homebrew already installed - skipping"; \
	fi
	@if ! command -v node >/dev/null 2>&1; then \
		echo "Installing Node.js..."; \
		brew install node >/dev/null 2>&1; \
	else \
		echo "Node.js already installed - skipping"; \
	fi
	@if ! npm list -g next >/dev/null 2>&1; then \
		echo "Installing Next.js globally..."; \
		npm install -g next >/dev/null 2>&1; \
	else \
		echo "Next.js already installed globally - skipping"; \
	fi
	
	@echo "Setup complete!"

# To run the install command, use:
# make install