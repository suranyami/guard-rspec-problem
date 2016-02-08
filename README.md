# Guard-RSpec problem app

A minimum rails app to try and pin down issue #326 in [`guard-rspec`](https://github.com/guard/guard-rspec)

## Setup

Download this repo then run:

```bash
gem install bundler
bundle
rake db:create:all
rake db:migrate
guard
```

