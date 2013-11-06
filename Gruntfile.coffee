module.exports = (grunt) ->

  grunt.initConfig
    json_schema:
      manifest:
        files:
          "manifest.schema.json": "test/*.json"

  grunt.loadNpmTasks "grunt-json-schema"
