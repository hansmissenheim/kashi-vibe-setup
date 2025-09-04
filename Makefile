# Kashi Development Makefile

.PHONY: help install test lint format type-check clean docs serve-docs build all ci

help: ## Show this help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install dependencies
	uv sync --group dev --group docs

test: ## Run tests
	uv run pytest --cov=kashi --cov-report=term-missing --cov-report=html

test-verbose: ## Run tests with verbose output
	uv run pytest -v --cov=kashi --cov-report=term-missing --cov-report=html

lint: ## Run linting
	uv run ruff check .

format: ## Format code
	uv run ruff format .

type-check: ## Run type checking
	uv run mypy .

clean: ## Clean build artifacts
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info/
	rm -rf .pytest_cache/
	rm -rf htmlcov/
	rm -rf .coverage
	rm -rf coverage.xml
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete

docs: ## Build documentation
	uv run mkdocs build

serve-docs: ## Serve documentation locally
	uv run mkdocs serve

build: ## Build package
	uv build

pre-commit: ## Run pre-commit hooks
	uv run pre-commit run --all-files

ci: lint type-check test ## Run all CI checks

all: clean install lint type-check test docs build ## Run full development cycle
