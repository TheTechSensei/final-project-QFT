# Variables
VENV_NAME := quantum-qft-env
PYTHON := python3
REQ_FILE := requirements.txt

.PHONY: help setup venv install run clean

# Help message
help:
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  setup       Create virtual environment, install dependencies, and run Jupyter Notebook"
	@echo "  venv        Create a virtual environment ($(VENV_NAME))"
	@echo "  install     Install dependencies from $(REQ_FILE)"
	@echo "  activate    Activate the virtual environment"
	@echo "  clean       Remove virtual environment and cache files"

# Setup everything (venv + install + run)
setup: venv install

# Create virtual environment
venv:
	@echo "Creating virtual environment ($(VENV_NAME))..."
	$(PYTHON) -m venv $(VENV_NAME)
	@echo "Virtual environment created."

# Install dependencies
install:
	@echo "Activating virtual environment and installing dependencies..."
	. $(VENV_NAME)/bin/activate && pip install --upgrade pip && pip install -r $(REQ_FILE)
	@echo "Dependencies installed."

# Activate virtual environment
activate:
	@echo "To activate the virtual environment, run:"
	@echo "source $(VENV_NAME)/bin/activate"

# Clean up environment and cache files
clean:
	@echo "Removing virtual environment ($(VENV_NAME)) and cache files..."
	rm -rf $(VENV_NAME)
	find . -type d -name "__pycache__" -exec rm -rf {} +
	@echo "Cleanup complete."
