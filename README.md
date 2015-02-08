<h2 align="center" class='center' style="text-align:center">
  TheRole. Dummy App. Development and testing
</h2>

<p align="center" class='center' style="text-align:center">
  <b>Authorization gem for Ruby on Rails</b><br>
  <i>with <a href="https://github.com/TheRole/TheRoleManagementPanelBootstrap3">Management Panel</a></i>
</p>

<p align="center" class='center' style="text-align:center">
  <img src="https://raw.githubusercontent.com/TheRole/docs/master/images/the_role.png" alt="TheRole. Authorization gem for Ruby on Rails with Administrative interface">
</p>

<p align="center" class='center' style="text-align:center">
  <b>Semantic. Flexible. Lightweigh</b>
</p>

<div align="center" class='center' style="text-align:center">
TheRole: <a href="http://badge.fury.io/rb/the_role"><img src="https://badge.fury.io/rb/the_role.svg" alt="Gem Version" height="18"></a>
API: <a href="http://badge.fury.io/rb/the_role_api"><img src="https://badge.fury.io/rb/the_role_api.svg" alt="Gem Version" height="18"></a>
GUI: <a href="http://badge.fury.io/rb/the_role_management_panel"><img src="https://badge.fury.io/rb/the_role_management_panel.svg" alt="Gem Version" height="18"></a>
CI: <a href="https://travis-ci.org/TheRole/DummyApp"><img src="https://travis-ci.org/TheRole/DummyApp.svg?branch=master" alt="Build Status" height="18"></a>
<a href="https://www.ruby-toolbox.com/categories/rails_authorization">ruby-toolbox</a>
</div>

### How to get?

```
git clone git@github.com:TheRole/DummyApp.git
cd DummyApp
bundle
```

### Start it!

```
rake assets:drop # or rake assets:clean
rake db:bootstrap_and_seed

rails s
```

### Test it!

```
RAILS_ENV=test rake db:bootstrap
RAILS_ENV=test rspec --format documentation

rspec spec/models/ --format documentation
```

### Production mode

```
RAILS_ENV=production rake assets:build
RAILS_ENV=production rake db:bootstrap_and_seed

rails s -e production
```
