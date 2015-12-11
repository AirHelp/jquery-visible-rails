# jquery-visible-rails

## Installation

In your Gemfile, add the following line:

```ruby
gem 'jquery-visible-rails'
```

Now run `bundle install`


## Usage

Add this to your application.js.erb

```js
//= require jquery
//= require jquery.visible
```

Add event handlers for the page becoming visible or hidden:

This basic check will return `true` if the entire element is visible to the user (within the visual viewport).

```js
$('#element').visible();
```

If you'd like to check for ANY PART of the element, you can use the following:

```js
$('#element').visible( true );
```

The plugin ignores the elements visibility by default. E.g., `display:none`, `visibility: hidden`, `offsetWidth` or `offsetHeight` is 0).
To filter on css visibility, you can use the jQuery `:visible` selector:

```js
  $('#element:visible').visible();
```

Optionally, you can sepecify a second parameter to the `.visible` plugin, which will check whether the element is visible, as well as
whether it's within the viewport too.

```js
$('#element:visible').visible( false, true );
```

Optionally, you can add a third parameter to specify the direction to check for visibility. This can either be 'horizontal', 'vertical' or 'both'.
Default is to 'both'.

```js
$('#element').visible( false, false, 'horizontal' );
```

## More information

- [ jquery-visible ](https://github.com/customd/jquery-visible)
