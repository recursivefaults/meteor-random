Package.describe({
    "summary": "Giving Meteor's server cryptographically strong random numbers" 
});

Package.on_use(function (api) {
    api.use('coffeescript', 'server');
    api.use('underscore', 'server');
    api.imply('random');
    api.add_files('server/random.coffee', 'server');
});
