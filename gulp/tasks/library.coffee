gulp = require 'gulp'
concat = require 'gulp-concat'


# JavaScriptライブラリのconcat
gulp.task 'library', ->

  libraryUsedList = [
    'vendor_bower/jquery.js'
    'vendor_bower/jquery.easing.min.js'
    'vendor_bower/lodash.compat.js'
    'vendor_bower/moment.js'
  ]

  gulp
  .src libraryUsedList
  .pipe concat('lib.js')
  .pipe gulp.dest('public')