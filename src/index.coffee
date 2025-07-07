import * as _ from "@dashkite/joy"

px =

  equal: eq = (a, b) -> a == b
  notEqual: _.negate eq

  deepEqual: _.equal
  notDeepEqual: _.negate _.equal

  throws: throws = ( f, message ) ->
    try
      f()
    catch error
      return if message?
        error.message == message
      else true
    false

  doesNotThrow: _.negate throws

qx =

  rejects: rejects = ( f, message ) ->
    try
      await f()
    catch error
      return if message?
        error.message == message
      else true
    false

  doesNotReject: (f) -> ! await rejects f

  expect: -> _.expect arguments...

assert = (x, why = "assertion failed") ->
  if x == true then true else throw new Error why

assert.expect = {}

for name, f of px
  do (name, f) ->
    assert[ name ] = _.arity f.length,
      (ax...) -> assert (_.apply f, ax), "assertion #{name} failed"

for name, f of qx
  do (name, f) ->
    assert[ name ] = _.arity f.length,
      (ax...) -> assert (await _.apply f, ax), "assertion #{name} failed"

export default assert
