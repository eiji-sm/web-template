gulp = require 'gulp'
concat = require 'gulp-concat'


# JavaScriptライブラリのconcat
gulp.task 'library_js', ->

  dirPath = 'vendor_bower/**/'

  libraryUsedList = [
    dirPath + 'jquery.min.js'
    dirPath + 'jquery.easing.min.js'
    dirPath + 'moment.min.js'
    dirPath + 'material.min.js'
  ]

  gulp
  .src libraryUsedList
  .pipe concat('lib.js')
  .pipe gulp.dest('public/static/')