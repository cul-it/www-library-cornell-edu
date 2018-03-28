# www-library-cornell-edu
make file for library.cornell.edu

cucumber tests:

```cd testing
bundle install
selenium-cucumber gen
<add tests to /features/*.feature>
```

```
bundle exec cucumber
or
bundle exec cucumber BROWSER=chrome
or
bundle exec cucumber BROWSER=chrome --tags @test
or
bundle exec cucumber BROWSER=chrome DOMAIN=production
(DOMAIN defaults to wwwtest.library.cornell.edu)
or
bundle exec cucumber HEADLESS=poltergeist
(use poltergeist & phantomjs)

start phantomjs:
phantomjs --webdriver=4444

or
bundle exec cucumber HEADLESS=selenium_chrome_headless
or
bundle exec cucumber HEADLESS=headless_chrome

```

Possible DOMAIN values:
production -> www.library.cornell.edu
dev -> dev-wwwlibrarycornelledu.pantheonsite.io
test -> test-wwwlibrarycornelledu.pantheonsite.io
live -> live-wwwlibrarycornelledu.pantheonsite.io

```
Suggested tests:

With Antibot disabled:
bundle exec cucumber HEADLESS=selenium_chrome_headless DOMAIN=test
bundle exec cucumber HEADLESS=selenium_chrome_headless DOMAIN=test --tags @ares

With Antibot enabled:
bundle exec cucumber HEADLESS=selenium_chrome_headless DOMAIN=test --tags ~@ares --tags ~@email
