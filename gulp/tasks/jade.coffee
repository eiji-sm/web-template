gulp = require 'gulp'
jade = require 'gulp-jade'

# jadeのコンパイル
gulp.task 'jade', ->

  gulp
  .src 'source/jade/*.jade'
  .pipe jade()
  .pipe gulp.dest('public/')