# Usage

## Basic Usage

Convert a song file to Anki cards:

```bash
kashi convert song.mp3 --language spanish --output deck.apkg
```

## Command Line Interface

### convert

Convert a song file to Anki cards.

```bash
kashi convert [OPTIONS] INPUT_FILE
```

**Options:**

- `--language, -l`: Target language for learning (required)
- `--output, -o`: Output file path for the Anki deck (default: `deck.apkg`)
- `--difficulty`: Difficulty level for card generation (beginner, intermediate, advanced)
- `--help`: Show help message

**Examples:**

```bash
# Basic conversion
kashi convert song.mp3 -l spanish -o spanish_deck.apkg

# With difficulty level
kashi convert song.mp3 -l french --difficulty beginner
```

## Supported Formats

### Audio Formats
- MP3
- WAV
- FLAC
- M4A

### Languages
- Spanish
- French
- German
- Italian
- Portuguese
- More languages coming soon!

## Configuration

Coming soon - configuration file support for custom settings.
