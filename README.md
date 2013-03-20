# Threesixtyvoice
================================ 

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
### Popular               -TBD
### ScoreGetList          -TBD
### GroupsProfile         -TBD
### GroupsMembers         -TBD


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
