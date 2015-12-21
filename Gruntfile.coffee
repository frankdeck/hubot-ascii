'use strict'

module.exports = (grunt) ->

  grunt.loadNpmTasks 'grunt-mocha-test'

  grunt.initConfig
    mochaTest:
      test:
        options:
          reporter: 'spec',
          require: 'coffee-script'
        src: 'test/**/*.coffee'
    watch:
      files: ['Gruntfile.js', 'test/**/*.coffee']
      tasks: 'test'

  grunt.registerTask 'test', 'mochaTest'
