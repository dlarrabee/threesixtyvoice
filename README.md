# Threesixtyvoice

A gem that wraps the 360voice API
http://360voice.gamerdna.com/forum/topic.asp?TOPIC_ID=3

## Installation

Add this line to your application's Gemfile:

    gem 'threesixtyvoice'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install threesixtyvoice

## Usage

Badgelist

  sample source data:
  http://www.360voice.com/api/badges-list.asp
  
  badgelist = Threesixtyvoice.badge_list
  puts badgelist.version
  puts badgelist.title
  puts badgelist.owners
  badgelist.badges.each { |badge| puts badge.title }



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
