exports.config =
  plugins:
    react:
      # options passed through to `react-tools.main.transformWithDetails()`
      harmony: yes    # include some es6 transforms
      sourceMap: yes   # generate inline source maps
      stripTypes: no  # strip type annotations
      autoIncludeCommentBlock: yes
  # See http://brunch.io/#documentation for docs.
  paths:
    public: 'public'
    watched: ['app', 'vendor','bower_components']

  files:
    javascripts:
      defaultExtension: 'js'
      joinTo:
        'app.js': /^app/
        'vendor.js': /^(vendor|bower_components)/

      order:
        before: [
          "bower_components/react/react-with-addons.js"
          "vendor/scripts/jquery.js"
          "vendor/scripts/underscore.js"
          "vendor/scripts/backbone.js"
          "vendor/scripts/backbone.react.js"
        ]

    stylesheets:
      joinTo: 'styles.css'

    templates:
      joinTo: 'app.js'
