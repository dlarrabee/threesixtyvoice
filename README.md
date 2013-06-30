# Threesixtyvoice
================================ 

A gem that wraps the 360voice API
http://360voice.gamerdna.com/forum/topic.asp?TOPIC_ID=3

[![Build
Status](https://travis-ci.org/dlarrabee/threesixtyvoice.png)](https://travis-ci.org/dlarrabee/threesixtyvoice)

## Installation

Add this line to your application's Gemfile:

    gem 'threesixtyvoice'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install threesixtyvoice

## Usage

### Badgelist
-------------------------
Params: None

```ruby
badgelist = Threesixtyvoice.badge_list
puts badgelist.version
puts badgelist.title
puts badgelist.owners
badgelist.badges.each { |badge| puts badge.title }
```

### BadgetListGamertags
-------------------------
#### Params
* id [required]: the badge id

```ruby
list = Threesixtyvoice.bage_list_gamertags(32)
puts list.version
puts list.title
puts list.id
puts list.count
list.owners.each { |owner| puts owner }
```

### BlogGetentries        -TBD
### BlogLatest            -TBD
### ChallengeStats        -TBD
### ChallengeViral        -TBD
### ChallengeVitals       -TBD
### ChallengeDetails      -TBD
### Jobs                  -TBD
### Leaderboards          -TBD
### GamesList             -TBD
### GamesListFav          -TBD
### GamesShowTiles        -TBD
### GamesShowTilesHtml    -TBD
### GamertagGroups        -TBD
### CollectionLists       -TBD
### CollectionGamesList   -TBD
### CollectionHistory     -TBD
### GamertagBadges        -TBD
### GamertagExists        -TBD
### GamertagAuthenticate  -TBD
### GamertagLeader        -TBD
### GamertagProfile       -TBD
### GamertagWatchlist     -TBD
### GenresList            -TBD
### Popular
-------------------------
#### Params
* none

```ruby
pop_blogs = Threesixtyvoice.popular
puts pop_blogs.version
pop_blogs.popular_blogs.each do |popular|
  puts "rank: #{popular.rank}"
  puts "gamertag: #{popular.gamertag}"
  puts "url: #{popular.url}"
end
```

### ScoreGetList          -TBD
### GroupsProfile         -TBD
### GroupsMembers
-------------------------
#### Params
* id (required): the group id

```ruby
group_members = Threesixtyvoice.group_members(2)
puts group_members.version
puts group_members.groupid
puts group_members.groupname
puts group_members.grouplink
group_members.members.each { |m| puts "#{m.gamertag}: #{m.role} - #{m.joindate}"}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
