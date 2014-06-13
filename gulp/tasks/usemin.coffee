gulp = require 'gulp'
usemin = require 'gulp-usemin'


# HTMLのCSSとJSコードをまとめる
gulp.task 'usemin', ->

  gulp
  .src 'public/*.html'
  .pipe usemin()
  .pipe gulp.dest('public')