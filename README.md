# Mattermost Quote Plugin

A Mattermost plugin that provides Slack-like quote formatting.

## Features

- Automatically formats lines starting with `>` in Slack-like quote style
- Theme-aware styling that matches your Mattermost theme
- Simple and intuitive interface

## Installation

1. Download the latest `mattermost-quote-plugin-x.x.x.tar.gz` from the [releases page](https://github.com/kuuumo/mattermost-quote-plugin/releases)
2. Go to Mattermost System Console > **Plugin Management > Upload Plugin**
3. Upload the downloaded plugin file
4. Enable the plugin

## Development

### Prerequisites

- Node.js v16 or higher
- npm v7 or higher
- make

### Build Instructions

```bash
# Full build (clean + build + package)
make all

# Individual build steps
make clean   # Clean build artifacts
make webapp  # Build webapp only
make dist    # Package only
```

### Project Structure

```
.
├── webapp/              # Frontend implementation
│   ├── src/
│   │   ├── index.js    # Plugin main logic
│   │   └── styles.css  # Style definitions
│   └── package.json    # Dependencies
├── plugin.json         # Plugin configuration
└── Makefile           # Build scripts
```

### Release Process

The release process is automated using GitHub Actions. Follow these steps to create a new release:

1. Create a release tag
```bash
git tag v1.0.0  # Replace with appropriate version
git push origin v1.0.0
```

2. GitHub Actions Execution
- Upon pushing a tag, the following steps are automatically executed:
  1. Plugin build
  2. Draft release creation
  3. Build artifact upload

3. Release Review and Publishing
- On GitHub:
  1. Open the **Releases** page
  2. Review the created draft release
  3. Edit the description if needed
  4. Click **Publish release**

### Troubleshooting

#### Build Issues

1. `webapp/dist` directory not found
```bash
make clean  # Clean build artifacts
make all    # Rebuild everything
```

2. Dependency errors
```bash
rm -rf webapp/node_modules  # Remove node_modules
make all                    # Reinstall dependencies and rebuild
```

## License

MIT License
