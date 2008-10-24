= Gem :
== Add New Source:
    gem sources -a http://gems.github.com

==  Install a gem
  
    gem install [gem name]
  
== Update to latest Rubygems (if any):
  
    gem update --system
  
== Search for a gem:
  
    gem query --remote --name [regular expession]
  
== Get list of outdated gems and update as necessary:
  
    gem outdated
  
== Clean up outdated gems:
  
    gem clean
  
== List installed gems by last access time:
  
    gem stale
  
== Current Local Gem Repository:
  
    gem environment
    OR
    ruby -r rubygems -e "puts Gem.path"
  
== Discover Dependency for a Gem:
  
    gem dependency [gem name]
  
== Don't generate Ri and RDoc when installing gems:
  
    gem install [gem name] --no-ri --no-rdoc
  
   To set this as default behavior:
  
    echo "gem: --no-ri --no-rdoc" >> ~/.gemrc
