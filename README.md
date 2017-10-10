# www-library-cornell-edu
make file for library.cornell.edu

cucumber tests:
cd testing
bundle install
selenium-cucumber gen
<add tests to /features/*.feature>
bundle exec cucumber
or
bundle exec cucumber BROWSER=chrome
or
bundle exec cucumber BROWSER=chrome --tags @test
or
bundle exec cucumber BROWSER=chrome DOMAIN=production
(DOMAIN defaults to wwwtest.library.cornell.edu)
