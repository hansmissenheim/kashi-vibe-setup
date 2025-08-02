# Contributing to Kashi

Thank you for your interest in contributing to Kashi! This guide will help you get started.

## Development Setup

1. **Fork and clone the repository**

```bash
git clone https://github.com/yourusername/kashi.git
cd kashi
```

2. **Set up the development environment**

```bash
# Install dependencies
uv sync --group dev --group docs

# Install pre-commit hooks
uv run pre-commit install
```

3. **Create a feature branch**

```bash
git checkout -b feature/your-feature-name
```

## Development Workflow

### Running Tests

```bash
# Run all tests
uv run pytest

# Run tests with coverage
uv run pytest --cov=kashi

# Run specific test file
uv run pytest tests/test_main.py
```

### Code Quality

We use several tools to maintain code quality:

```bash
# Lint code
uv run ruff check .

# Format code
uv run ruff format .

# Type checking
uv run mypy .

# Run all pre-commit hooks
uv run pre-commit run --all-files
```

### Documentation

Build and preview documentation locally:

```bash
uv run mkdocs serve
```

## Coding Standards

- Follow PEP 8 style guidelines (enforced by Ruff)
- Add type hints to all functions
- Write docstrings for all public functions and classes
- Write tests for new functionality
- Keep test coverage above 90%

## Submitting Changes

1. **Make your changes** following the coding standards
2. **Add tests** for any new functionality
3. **Update documentation** if needed
4. **Run the test suite** to ensure everything passes
5. **Commit your changes** using conventional commit messages:
   - `feat: add new feature`
   - `fix: resolve bug`
   - `docs: update documentation`
   - `test: add tests`
   - `refactor: improve code structure`

6. **Push to your fork** and create a pull request

## Pull Request Guidelines

- Keep pull requests focused on a single change
- Include a clear description of what the PR does
- Reference any related issues
- Ensure all tests pass
- Update documentation if necessary

## Reporting Issues

When reporting issues, please include:

- Your operating system and Python version
- Steps to reproduce the issue
- Expected vs actual behavior
- Any error messages or logs

## Questions?

Feel free to open an issue for any questions about contributing!
