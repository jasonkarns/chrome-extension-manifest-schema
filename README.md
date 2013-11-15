# chrome-extension-manifest-schema

JSON Schema for validating Chrome extension manifest.json

This module provides a [JSON Schema](http://json-schema.org) (v4) that
describes Chrome extension manifest.json files. To validate a JSON file against
the schema, you will need to use a [JSON Schema
validator](http://json-schema.org/implementations.html#validator-list) with v4
support.

Example using the [TV4 validator](http://geraintluff.github.io/tv4/) via the
[grunt-tv4 plugin](https://github.com/Bartvds/grunt-tv4) to validate a
"manifest.json" file:

```coffeescript
# Gruntfile.coffee

module.exports = (grunt) ->
  grunt.initConfig
    tv4:
      manifest:
        src: "manifest.json"
        options:
          root: require('chrome-extension-manifest-schema')

  grunt.loadNpmTasks "grunt-tv4"
  grunt.registerTask 'default', 'tv4'
```
