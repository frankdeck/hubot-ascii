'use strict'

chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'ascii', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    require('../src/scripts/ascii.coffee')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith /ascii me (.*)/i
