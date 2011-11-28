
# Less Rails Bootstrap

Bootstrap is Twitter's toolkit for kickstarting CSS for websites, apps, and more. It includes base CSS styles for typography, forms, buttons, tables, grids, navigation, alerts, and more. To get started -- checkout http://twitter.github.com/bootstrap!

The less-rails-bootstrap project hooks into less-rails (https://github.com/metaskills/less-rails) to provide both compiled and LESS CSS source files from the Twitter Bootstrap project within the Rails 3.1 asset pipeline. Benefits:

* Assets are namespaced in twitter/bootstrap to avoid asset conflicts.
* Top level requires to get all stylesheets or javascripts.
* Ability to import or require individually namespaced stylesheets or javascripts.


## Versioning

This gem will directly track the semantic versioning releases of the Twitter Bootstrap project. Our major and minor versions will always match to theirs. Tho we may have tiny patch level releases specific to this gem.


## Installing

This library requires the less-rails gem greater than 2.0.0 to work. Our gem spec will pull this and less in automatically. So all you need to do is bundle up less-rails-bootstrap in your Gemfle.

```ruby
gem 'less-rails-bootstrap'
```


## Usage

The easiest way to use Twitter Bootstrap is require it in your `application.css` file. Doing so will compile the complete LESS libraries files for Bootstrap.

```css
/*
 *= require twitter/bootstrap
*/

#foo {
  /* Your styles... */
}
```

In a file with the `.css.less` extension, you can import the entire Bootstrap LESS framework. This will allow you to use Bootstrap's variables and mixins in your CSS that follows. Remember, unlike other CSS frameworks, requiring or importing Bootstrap will include all the CSS for building a bootstrapped website. If you only want variables or mixins, you will have to import those discreet files.

```css
@import "twitter/bootstrap";

#foo {
  .border-radius(4px);
}
```

Maybe all you want to use is the variables and mixins that come with Twitter Bootstrap. No problem, just import them individually from you own `.css.less` file. In this case only the `#foo` selector is output.

```css
@import "twitter/bootstrap/variables";
@import "twitter/bootstrap/mixins";

.myButton(@radius: 5px) {
  .border-radius(@radius);
}

#foo {
  .myButton(10px);
}
```

Using the JavaScript files is just as easy. Again, you can include all them with a single directive from your `application.js` file. Optionally, you can require only the files you need like `require twitter/bootstrap/modal`.

```javascript
//= require twitter/bootstrap

$(document).ready(function(){
  
});
```


## Testing

Simple! Just clone the repo, then run `bundle install` and `bundle exec rake`. The tests will begin to run. We also use Travis CI to run our tests too. Current build status is:

[![Build Status](https://secure.travis-ci.org/metaskills/less-rails-bootstrap.png)](http://travis-ci.org/metaskills/less-rails-bootstrap)



## License

Twitter Bootstrap Project: http://twitter.github.com/bootstrap

Copyright 2011 Twitter, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Less::Rails is Copyright (c) 2011 Ken Collins, <ken@metaskills.net> and is distributed under the MIT license.



