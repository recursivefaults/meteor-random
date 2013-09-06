if Meteor.isServer()
    crypto = Npm.require('crypto')
    @Random = _.extend(Random, {
      fraction: () ->
        bytes = crypto.randomBytes(8)
        val = parseInt(bytes.toString('hex'), 16)
        val = val * 1.0e-19
        if val > 1 return val - 1 else return val
    })
