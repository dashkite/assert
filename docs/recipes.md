# Recipes

## Basic Assertions

Assert provides a straightforward way to guarantee conditions are met in your codebase.

```coffeescript
# Ensure a variable is defined
assert isDefined profile, "profile must be defined"

# Check for equality
assert.equal result, 42
```

## Testing Exceptions

You can verify that a function throws an expected exception.

```coffeescript
# Verify a function throws
assert.throws -> calculateTotal(-1)

# Verify a specific error message
assert.throws (-> calculateTotal(-1)), "Invalid input"
```

## Testing Asynchronous Rejections

Assert includes support for testing promises that should reject.

```coffeescript
# Verify a promise rejects
assert.rejects -> fetchProfile(invalidId)

# Verify a specific rejection message
assert.rejects (-> fetchProfile(invalidId)), "Profile not found"
```
