import * as _ from "@dashkite/joy"

rx =
  equal: eq = (a, b) -> a == b
  deepEqual: _.equal

predicate = (why, f) ->
  (a, b) -> if f a, b then true else throw new Error why

assert = (x) ->
  if x then true else throw new Error "assertion failed"

for name, f of rx
  assert[ name ] = predicate "assertion #{name} failed", f
  notName =  "not#{_.capitalize name}"
  assert[ notName ] = predicate  "assertion #{notName} failed", _.negate f

assert.throws = (why, f) ->
  try
    f()
    throw new Error why
  catch
    true

assert.rejects = (why, f) ->
  try
    await f()
    throw new Error why
  catch
    true

export default assert
