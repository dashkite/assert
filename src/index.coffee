# TODO 0.1.4 matched against arbitrary object for throws/rejects
# (OR ... maybe it just ignored the 2nd argument?)
# We need to reconcile that interface (or change tests that used it)

import * as _ from "@dashkite/joy"

elide = _.elide 30, "..."

px =

  equal: eq = (a, b) -> a == b
  notEqual: _.negate eq

  deepEqual: _.equal
  notDeepEqual: _.negate _.equal

  throws: throws = ( f, message ) ->
    try
      f()
      false
    catch error
      !message? || ( error.message == message )

  doesNotThrow: _.negate throws

qx =

  rejects: rejects = ( f, message ) ->
    try
      await f()
      false
    catch error
      if ( !message? || ( error.message == message ))
        true
      else
        throw new Error "expected '#{ elide message }',
          got '#{ elide error.message }'"

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
