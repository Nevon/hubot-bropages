chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'Bropages', ->
  beforeEach ->
    @robot =
    respond: sinon.spy()
    hear: sinon.spy()

    require('../src/bropages')(@robot)

    it 'registers a respond listener', ->
      expect(@robot.respond).to.have.been.calledWith(/rtfm/)