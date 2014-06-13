gulp = require 'gulp'
imagemin = require 'gulp-imagemin'
pngcrush = require 'imagemin-pngcrush'

gulp.task 'imagemin', ->

  imageminOption =
    progressive: true
    svgoPlugins: [removeViewBox: false]
    use: [pngcrush()]

  gulp
  .src 'source/image/*'
  .pipe imagemin(imageminOption)
  .pipe gulp.dest('public')