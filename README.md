# Assert

*Lightweight browser-friendly Javascript assertions.*

```coffeescript
assert isDefined foo
assert.equal foo, bar
assert.deepEqual foo, bar
assert.throws -> throw "oh no"
assert.rejects -> Promise.reject "oh no"
```

## Features

- ESM friendly
- Lightweight
- Curryable
- Plain `assert` uses strict equality

## Install

```shell
npm i @dashkite/assert
```

## Reference

### assert

*assert condition → boolean*

Returns `true` if *condition* is true, throws otherwise.

### assert.equal

*assert.equal expected, actual → boolean*

Returns `true` if *expected* is strictly equal to *actual*, throws otherwise.

### assert.notEqual

*assert.notEqual expected, actual → boolean*

Returns `true` if *expected* is strictly not equal to *actual*, throws otherwise.

### assert.deepEqual

*assert.deepEqual expected, actual → boolean*

Returns `true` if *expected* is deep equal to *actual*, throws otherwise.

### assert.notDeepEqual

*assert.notDeepEqual expected, actual → boolean*

Returns `true` if *expected* is not deep equal to *actual*, throws otherwise.

### assert.throws

*assert.throws function → boolean*

Returns `true` if *function* throws, throws otherwise.

### assert.doesNotThrow

*assert.throws function → boolean*

Returns `true` if *function* does not throw, throws otherwise.

### assert.rejects

*assert.rejects function → boolean*

Returns `true` if *function* returns a promise that rejects, throws otherwise.

### assert.doesNotReject

*assert.rejects function → boolean*

Returns `true` if *function* returns a promise that does not reject, throws otherwise.

### 