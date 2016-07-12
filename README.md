# Administrate::Field::Froala

[![Dependency Status](https://gemnasium.com/badges/github.com/michalvalasek/administrate-field-froala.svg)](https://gemnasium.com/github.com/michalvalasek/administrate-field-froala)

A plugin for adding [Froala] editor support in [Administrate].

## Usage

Add to your `Gemfile`:

```ruby
gem "administrate-field-froala", "~> 0.1"
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:
```ruby
ATTRIBUTE_TYPES = [
  description: Field::Froala,
]
```

In your `application.js` require and initialize the Froala editor (and plugins if needed):
```javascript
//= require froala_editor.min.js

$(function () {
  // initialize Froala editor on all Froala fields (Field::Froala)
  $('.field-unit--froala textarea').froalaEditor();
});
```

Similarly require the stylesheets for Froala and it's plugins in your `application.css`:
```css
/*
 *= require froala_editor.min.css
 *= require froala_style.min.css
 */
```

See [wysiwyg-rails](https://github.com/froala/wysiwyg-rails#include-in-your-assets) documentation for list of all available Froala plugins.


[Froala]: https://github.com/froala/wysiwyg-editor
[Administrate]: https://github.com/thoughtbot/administrate

Administrate::Field::Froala is heavily inspired by (a.k.a. copied after) Administrate::Field::Ckeditor by [Jemcode Limited](https://www.jemco.de?utm_source=github).
