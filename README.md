### Standalone Migrations Example (Oracle)

- Install a version of Jruby (Example is using jruby 9.2.7.0)
- Create `standalone` user in Oracle DB with `password`
- Run `bundle install`
- Run `bundle exec rake db:migrate` to run schema migrations
- Run `bundle exec rake db:recompile_views` to recompile views

