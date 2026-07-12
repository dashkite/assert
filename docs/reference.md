# Reference

## assert

$assert: condition \to boolean$

Returns `true` if *condition* is true, throws otherwise.

### Example

```coffeescript
assert true
```

## assert.equal

$assert.equal: expected, actual \to boolean$

Returns `true` if *expected* is strictly equal to *actual*, throws otherwise.

### Example

```coffeescript
assert.equal 1, 1
```

## assert.notEqual

$assert.notEqual: expected, actual \to boolean$

Returns `true` if *expected* is strictly not equal to *actual*, throws otherwise.

### Example

```coffeescript
assert.notEqual 1, 2
```

## assert.deepEqual

$assert.deepEqual: expected, actual \to boolean$

Returns `true` if *expected* is deep equal to *actual*, throws otherwise.

### Example

```coffeescript
assert.deepEqual { a: 1 }, { a: 1 }
```

## assert.notDeepEqual

$assert.notDeepEqual: expected, actual \to boolean$

Returns `true` if *expected* is not deep equal to *actual*, throws otherwise.

### Example

```coffeescript
assert.notDeepEqual { a: 1 }, { b: 2 }
```

## assert.throws

$assert.throws: function \to boolean$

Returns `true` if *function* throws, throws otherwise.

### Example

```coffeescript
assert.throws -> throw new Error "oh no"
```

## assert.doesNotThrow

$assert.doesNotThrow: function \to boolean$

Returns `true` if *function* does not throw, throws otherwise.

### Example

```coffeescript
assert.doesNotThrow -> true
```

## assert.rejects

$assert.rejects: function \dashrightarrow boolean$

Returns `true` if *function* returns a promise that rejects, throws otherwise.

### Example

```coffeescript
assert.rejects -> Promise.reject new Error "oh no"
```

## assert.doesNotReject

$assert.doesNotReject: function \dashrightarrow boolean$

Returns `true` if *function* returns a promise that does not reject, throws otherwise.

### Example

```coffeescript
assert.doesNotReject -> Promise.resolve true
```
