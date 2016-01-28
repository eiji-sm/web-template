gulp = require 'gulp'
gutil = require 'gulp-util'
runSequence = require 'run-sequence'


# 環境変数 gulp --production
isProduction = gutil.env.production?

# 環境変数 gulp --production --gzip
isGzip = gutil.env.gzip?

# 監視を行わないビルドタスク
gulp.task 'build', ->

  defaultBuildTask = ['library_js', 'library_css', 'imagemin', 'jade', 'compass', 'browserify']

  # 本番用
  if isProduction

    afterBuildTask = []

    # ビルドディレクトリのクリーンと、bowerのvendorを準備したあとに
    # JavaScriptライブラリの準備、画像のコピー最適化、HTML, CSS, JavaScriptのコンパイルを行う
    # 最後にHTML内のリソースをまとめる

    # publicの圧縮をかけるか否か
    if isGzip
      return runSequence 'clean', 'bower', defaultBuildTask, afterBuildTask, 'gzip'

    runSequence 'clean', 'bower', defaultBuildTask, afterBuildTask

  else
    runSequence 'clean', 'bower', defaultBuildTask
