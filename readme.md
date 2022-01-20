# Log parser

This exercise is aimed at learning Ruby, specifically file manipulation and automated tests using Rspec

## Requirements

Requirements are **Ruby 3.1.0**, using **RVM** for version management, and **Rspec** for testing

**games.log** file can be downloaded [here](https://gist.github.com/fabiosammy/ba973184e82e930043df8d4aa002bde4)

## Installation

- First install RVM:

`\curl -sSL https://get.rvm.io | bash -s stable`

- set permissions for user

`sudo usermod -a -G rvm $USER`

- update terminal settings:

`Edit > Profile Preferences > Title and Command tab > check Run 'command as login shell'`

- **REBOOT**

- install Ruby:

`rvm install 3.1.0`

- set default

`rvm --default use 3.1.0`

- clone the repository 

`$ git clone https://github.com/irizaga/parser.git`

- install bundle

`bundle install`

## Execution

- make sure **games.log** is in the same folder as **main.rb** and run the parser

`ruby main.rb`

## Testing
- for tests, run
`bundle exec rspec lib/parser_spec.rb`
