gulp = require 'gulp'


gulp.task 'bower', ->

  dirPath = 'bower_components/**/'

  # jquery
  gulp
  .src dirPath + 'jquery.min.js'
  .pipe gulp.dest('vendor_bower/jquery/')

  # jquery.easing
  gulp
  .src dirPath + 'jquery.easing.min.js'
  .pipe gulp.dest('vendor_bower/jquery.easing/')

  # moment
  gulp
  .src dirPath + 'moment.min.js'
  .pipe gulp.dest('vendor_bower/moment/')

  # material design lite
  gulp
  .src dirPath + 'material.min.js'
  .pipe gulp.dest('vendor_bower/material-design-lite/')

  gulp
  .src dirPath + 'material.min.css'
  .pipe gulp.dest('vendor_bower/material-design-lite/')