Escort
======

Escort handles the conversation between the user and the appropriate Identity Provider (IdP). This gives the application developer just one interface to trust and let the upstream Service Provider (Escort) deal with the actual IdP. Yes, it's a layer on a layer on a layer, but it's an interesting problem to tinker with.

Installation
------------

Add this line to your application's Gemfile:

    gem 'escort'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install escort

Usage
-----

Not entirely sure right now. I'm starting to hook up the IdP side of the project and will move to the SP elements next. The first release is targeted to talk to any SAML source using a set of parameters that are editable using an admin UI.

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
