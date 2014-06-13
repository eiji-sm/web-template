gulp = require 'gulp'
compass = require 'gulp-compass'
minifyCSS = require 'gulp-minify-css'
handleErrors = require '../utils/handle_errors'


# Sass(compass)のコンパイルとminify
gulp.task 'compass', ->
  compassOption =
    css: 'source/css'
    sass: 'source/sass'
    image: 'source/image'

  gulp
  .src 'source/sass/*.sass'
  .pipe compass(compassOption)
  .on 'error', handleErrors
  .pipe minifyCSS()
  .pipe gulp.dest('public')