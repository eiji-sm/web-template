gulp = require 'gulp'
sitemap = require 'gulp-sitemap'


gulp.task 'sitemap', ->

  sitemapOptions =
    fileName: 'sitemap.xml'
    newLine: '\n'
    changeFreq: 'weekly'
    priority: '0.5'
    siteUrl: 'http://clip.cc'
    spacing: '    '

  gulp
  .src 'public/*.html'
  .pipe sitemap(sitemapOptions)
  .pipe gulp.dest('public')

