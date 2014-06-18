gulp = require 'gulp'


gulp.task 'bower', ->

  # angular
  gulp
  .src 'bower_components/angular/angular.min.js'
  .pipe gulp.dest('vendor_bower/angular/')

  # bootstrap-sass
  gulp
  .src 'bower_components/bootstrap-sass-official/vendor/assets/**'
  .pipe gulp.dest('vendor_bower/bootstrap/')

  # jquery
  gulp
  .src 'bower_components/jquery/dist/jquery.min.js'
  .pipe gulp.dest('vendor_bower/jquery/')

  # jquery.easing
  gulp
  .src 'bower_components/jquery.easing/js/jquery.easing.min.js'
  .pipe gulp.dest('vendor_bower/jquery.easing/')

  # lodash
  gulp
  .src 'bower_components/lodash/dist/lodash.min.js'
  .pipe gulp.dest('vendor_bower/lodash/')

  # modernizr
  gulp
  .src 'bower_components/modernizr/modernizr.js'
  .pipe gulp.dest('vendor_bower/modernizr/')

  # moment
  gulp
  .src 'bower_components/moment/min/moment.min.js'
  .pipe gulp.dest('vendor_bower/moment/')