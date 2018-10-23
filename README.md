# Kassabok

### *How to use the Application*

**Go to terminal:**

Install Homebrew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install RVM:
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --ruby
```

Once the installation is complete you must load RVM to make RVM available in your current session. Otherwise you'll need to restart your terminal. Run the following command:

```
source ~/.rvm/scripts/rvm
```
Install Bundler:
```
gem install bundler
```

Now you're all setup

``` 
mkdir [name]
```

``` 
cd [name]
```

```
git init
```

```
git clone https://github.com/ESteinman/ruby_ledger_challenge.git
```
```
bundle install
```
to look at tests: - run:
```
rspec
```

```
[code editor] input.txt
```
Choose your inputs that will be read and then written to the output.txt

Open ruby:
```
001: irb
002: load './input.rb'
```
Your inoputs in input.txt will be read and then go into you code-editor and look at the output.txt-file


