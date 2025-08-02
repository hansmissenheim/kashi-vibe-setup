# Contributing to Kashi

Thank you for your interest in contributing to Kashi! Please see our [documentation](https://hansmissenheim.github.io/kashi/contributing/) for detailed contribution guidelines.

## Quick Start for Contributors

1. Fork the repository
2. Clone your fork: `git clone https://github.com/yourusername/kashi.git`
3. Set up development environment: `uv sync --group dev --group docs`
4. Install pre-commit hooks: `uv run pre-commit install`
5. Create a feature branch: `git checkout -b feature/your-feature`
6. Make your changes and add tests
7. Run tests: `uv run pytest`
8. Submit a pull request

## Development Commands

```bash
# Run tests
uv run pytest

# Lint and format
uv run ruff check .
uv run ruff format .

# Type checking
uv run mypy .

# Build docs
uv run mkdocs serve
```

For detailed guidelines, please visit our [contributing documentation](https://hansmissenheim.github.io/kashi/contributing/).
