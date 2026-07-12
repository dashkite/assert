# Assert

*Lightweight browser-friendly Javascript assertions.*

[![Hippocratic License HL3-CORE](https://img.shields.io/static/v1?label=Hippocratic%20License&message=HL3-CORE&labelColor=5e2751&color=bc8c3d)](https://firstdonoharm.dev/version/3/0/core.html)

Assert provides lightweight, browser-friendly Javascript assertions for developers. It offers a concise toolkit to ensure code correctness across multiple environments.

## Features

- ESM friendly
- Lightweight (1.3kB in the browser)
- Curryable
- Plain `assert` takes only `true` — no “truth” values

## Installation

```shell
pnpm install -D @dashkite/assert
```

## Usage

```coffeescript
assert isDefined foo
assert.equal foo, bar
assert.deepEqual foo, bar
assert.throws -> throw "oh no"
assert.rejects -> Promise.reject "oh no"
```

## Other Resources

- [Reference](docs/reference.md)
- [Recipes](docs/recipes.md)
- [Technical Notes](docs/technical-notes.md)
- [Testing](docs/testing.md)