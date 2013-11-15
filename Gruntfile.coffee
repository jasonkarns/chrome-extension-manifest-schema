module.exports = (grunt) ->

  grunt.initConfig
    cson:
      options:
        rootObject: true

      schema:
        files:
          "manifest.schema.json": "manifest.schema.cson"

    tv4:
      options:
        multi: true
        fresh: true

      manifest:
        options:
          root: "manifest.schema.json"
        src: "test/*.json"

      schema:
        options:
          root: "schemas/json-schema.schema.json"
        src: "manifest.schema.json"

  grunt.loadNpmTasks "grunt-cson"
  grunt.loadNpmTasks "grunt-tv4"

  grunt.registerTask 'test', [ 'cson', 'tv4' ]
  grunt.registerTask 'default', 'test'
