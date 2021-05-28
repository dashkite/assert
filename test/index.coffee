import assert from "../src"
import {test, success} from "@dashkite/amen"
import print from "@dashkite/amen-console"

import * as _ from "@dashkite/joy"

do ->

  print await test "assert", [

    test "simple assert", ->
      assert _.isDefined true
      assert.throws ->
        assert _.isDefined undefined

    test "equal", ->
      assert.equal 0, 0
      assert.throws ->
        assert.equal 0, 1

    test "notEqual", ->
      assert.notEqual 0, 1
      assert.throws ->
        assert.notEqual 0, 0

    test "deepEqual", ->
      assert.notEqual [ 1..5 ], [ 1..5 ]
      assert.deepEqual [ 1..5 ], [ 1..5 ]
      assert.throws ->
        assert.deepEqual [ 1..5 ], [ 1..3 ]

    test "notDeepEqual", ->
      assert.notDeepEqual [ 1..5 ], [ 1..3 ]
      assert.throws ->
        assert.notDeepEqual [ 1..5 ], [ 1..5 ]

    test "throws", ->
      assert.throws ->
        throw new Error "this should throw"
      try
        assert.throws ->
      catch
        return true
      throw new Error "should throw"

    test "rejects", ->
      await assert.rejects -> Promise.reject false
      await assert.doesNotReject -> Promise.resolve true
      try
        await assert.rejects -> Promise.resolve true
      catch error
        return true
      throw new Error "should throw"



  ]

  process.exit if success then 0 else 1
