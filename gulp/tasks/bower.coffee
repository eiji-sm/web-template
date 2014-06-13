gulp = require 'gulp'
gutil = require 'gulp-util'
bower = require 'gulp-bower-files'
flatten = require 'gulp-flatten'
uglify = require 'gulp-uglify'
cond = require 'gulp-if'


# 環境変数 gulp --production
isProduction = gutil.env.production?

gulp.task 'bower', ->
  bower()
  .pipe cond isProduction, uglify(preserveComments: 'some')
  .pipe flatten()
  .pipe gulp.dest('vendor_bower')