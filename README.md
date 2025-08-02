# Kashi

Turn song files into Anki cards for non-native language lyric learning.

## Overview

Kashi is a tool designed to help language learners improve their skills by converting song lyrics into Anki flashcards. By combining music with spaced repetition learning, Kashi makes language learning more engaging and effective.

## Features

- 🎵 Convert song files to language learning flashcards
- 📚 Generate Anki-compatible card decks
- 🌍 Support for multiple languages
- 🎯 Focus on real-world language usage through music

## Installation

```bash
pip install kashi
```

## Quick Start

```bash
# Convert a song to Anki cards
kashi convert song.mp3 --language spanish --output deck.apkg
```

## Development

This project uses [uv](https://docs.astral.sh/uv/) for dependency management.

### Setup

```bash
# Clone the repository
git clone https://github.com/hansmissenheim/kashi.git
cd kashi

# Install dependencies
uv sync --group dev --group docs

# Install pre-commit hooks
uv run pre-commit install
```

### Running Tests

```bash
# Run tests
uv run pytest

# Run tests with coverage
uv run pytest --cov=kashi
```

### Code Quality

```bash
# Lint code
uv run ruff check .

# Format code
uv run ruff format .

# Type checking
uv run mypy .
```

## Documentation

Full documentation is available at [kashi.readthedocs.io](https://kashi.readthedocs.io).

To build documentation locally:

```bash
uv run mkdocs serve
```

## Contributing

Contributions are welcome! Please read our [Contributing Guide](CONTRIBUTING.md) for details.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
