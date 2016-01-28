gulp = require 'gulp'
compass = require 'gulp-compass'
minifyCSS = require 'gulp-minify-css'
handleErrors = require '../utils/handle_errors'
prefixer = require 'gulp-autoprefixer'

# Sass(compass)のコンパイルとminify
# TODO: 重い
gulp.task 'compass', ->
  compassOption =
    css: 'public'
    sass: 'source/sass'
    image: 'source/image'
    import_path: 'source/sass/modules'

  gulp
  .src ['source/sass/**/*.sass','source/sass/*.scss']
  .pipe compass(compassOption)
  .on 'error', handleErrors
  .pipe minifyCSS()
  .pipe gulp.dest('public/static/')