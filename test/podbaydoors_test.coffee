chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'Pod Bay Doors:', ->
  podbaydoors_module = require('../src/podbaydoors')

  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @msg =
      send: sinon.spy()
      random: sinon.spy()
    @podbaydoors_module = podbaydoors_module(@robot)

  describe 'display correct response', ->

    it 'should register a hear listener', ->
      expect(@robot.respond).to.have.been.calledWith(/hubot open the pod bay doors/)
