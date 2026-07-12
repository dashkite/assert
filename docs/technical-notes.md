# Technical Notes

## Curried Assertions

Assert leverages `@dashkite/joy` to curry its assertion methods. This allows developers to partially apply assertions, creating reusable validation functions. 

```coffeescript
# Create a reusable assertion
assertIsAdmin = assert.equal "admin"

# Apply the assertion later
assertIsAdmin currentRole
```

## Lightweight Footprint

Assert is designed to be minimal and browser-friendly. By focusing purely on essential assertions and avoiding complex assertion chaining or "truthy" evaluations (it strictly checks `true`), it maintains a small 1.3kB footprint.

## Error Handling

When an assertion fails, Assert throws an `Error` with a standard or custom message. For asynchronous rejections, `assert.rejects` awaits the provided function and catches the resulting error, comparing the error message if provided.
