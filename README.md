# Homebrew Tap for idea-juggler

This is a Homebrew tap for [idea-juggler](https://github.com/your-username/idea-juggler), a Kotlin-based CLI tool that manages separate IntelliJ IDEA instances per project with isolated configurations.

## Installation

```bash
# Add the tap
brew tap your-username/idea-juggler

# Install idea-juggler
brew install idea-juggler
```

## Usage

After installation, you can use `idea-juggler` from anywhere:

```bash
# Configure IntelliJ path
idea-juggler config --intellij-path /Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea

# Open a project with isolated configuration
idea-juggler open ~/projects/my-app

# List tracked projects
idea-juggler list

# Show recent projects
idea-juggler recent
```

For full documentation, see the [main repository](https://github.com/your-username/idea-juggler).

## Updating

```bash
brew update
brew upgrade idea-juggler
```

## Development

To test the formula locally:

```bash
# Install from local tap
brew install --build-from-source Formula/idea-juggler.rb

# Run tests
brew test idea-juggler
```
