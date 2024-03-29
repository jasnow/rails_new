# README

* Ruby version: 3.2.1 (latest)

* Rails version: 7.0.4.2 (latest)

## How to create this repo

 1. Run **gem install rails -pre** if needed.
 2. Run **rails new rails_new.**
 3. Run **cd rails_new; echo 'rvm use 3.2.10@ruby3.2-rails7.0 --create' > .rvmrc**
 4. Created repo on Github and fixed .git/config. Run "git pull" to sync.
 5. Add .travis.yml file such as:
```
language: ruby
rvm:
  - 3.2.1
before_install: gem install bundler
cache: bundler
```
 6. Remove Gemfile comments. (egrep -v "^#|^  #" Gemfile |uniq)
    Removed most of the gem numbers. 
 7. Optionally, add a LICENSE file.
 8. Add 3 sorbet gems.
```
gem 'sorbet', :group => :development
gem 'sorbet-runtime'
gem 'sorbet-rails'
```
 9. Add 'dalli' and 'redis' gem to Gemfile to avoid sorbet error messages. 
 10. Run "bundle" and fix any Gemfile syntax issues.
 11. Run "rails db:create db:migrate db:setup" to avoid sorbet error messages.
 12. Then to push to GitHub.

## How to know if you have a sane repo
 1. Run **bundle** with no errors.
 2. Run **rake** (expect 0 tests) with no errors and 2 known warnings.
```
warning: class variable access from toplevel
```
 3. When you go to "localhost:3000" in browser, you expect to see
   "Yay!: You're on Rails!" message and no errors.
