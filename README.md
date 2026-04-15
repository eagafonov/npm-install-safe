# npm-install-safe

A paranoid shell script that mass-punishes all npm packages for the sins of the few by refusing to install anything published less than a week ago. Supply chain security through procrastination.

## Usage

```sh
./npm-install-safe.sh
```

Set `QUARANTINE_DAYS` to be even more paranoid:

```sh
QUARANTINE_DAYS=30 ./npm-install-safe.sh
```

## Example

```sh
./npm-install-safe.sh -g @mariozechner/pi-coding-agent
```

## Requirements

- npm
- GNU `date` (sorry macOS users, your `date` is from 1987)

## License

WTFPL Version 2
