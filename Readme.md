# gemathon

This Gem is used to find Repos belonging to an organisation

**gemathon** can be used from the command line or as part of a Ruby web framework.

### Installation

To install the gem using terminal, run the following command:

    gem install gemathon

To use it in rails application add the gem to the Gemfile:

    gem "gemathon"    

### Basic Usage

gemathon can simple list all repos belonging to an organisation

    require 'gemathon'
    require 'github_api'
    
    your_github_username = '***********'
    your_github_password = '***********'
    org_name =["*********","*******"]

    connection = Github.new(basic_auth: "#{your_github_username}:#{your_github_password}")
    
    # The List Module will fetch all the repositories belonging to an organisation

    @list=Gemathon::List.new(connection,org_name).list
    
### Contributing

Contributions are welcomed. You can fork a repository, add your code changes to the forked branch, ensure all existing unit tests pass, create new unit tests cover your new changes and finally create a pull request.

After forking and then cloning the repository locally, install Bundler and then use it
to install the development gem dependecies:

    gem install bundler
    bundle install

github-contributions this is complete, you should be able to run the test suite:

    rake spec


### Bug Reporting

Please use the Issues page to report bugs or suggest new enhancements.


