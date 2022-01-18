# Log parser

This exercise is aimed at learning Ruby, specifically file manipulation and a first contact with automated tests using Rspec.

Requirements are **Ruby 3.1.0**, using **RVM** for version control, and **Rspec** for tests

**games.log** file can be downloaded [here](https://gist.github.com/fabiosammy/ba973184e82e930043df8d4aa002bde4)

First install RVM:
```
\curl -sSL https://get.rvm.io | bash -s stable
```

set permissions for user
```
sudo usermod -a -G rvm $USER
```

update terminal settings:
```
Edit > Profile Preferences > Title and Command tab > check Run 'command as login shell'
```

**REBOOT**

Now time to install Ruby:
```
rvm install 3.1.0
```

set default
```
rvm --default use 3.1.0
```

Clone the repository 
```
$ git clone https://github.com/gibran.irizaga/.git
```

install bundle
```
bundle install
```

put **games.log** in the same folder as **main.rb** and run the parser
```
ruby main.rb
```
