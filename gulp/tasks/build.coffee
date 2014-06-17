gulp = require 'gulp'
gutil = require 'gulp-util'
runSequence = require 'run-sequence'


# 環境変数 gulp --production
isProduction = gutil.env.production?

# 環境変数 gulp --production --gzip
isGzip = gutil.env.gzip?

# 監視を行わないビルドタスク
gulp.task 'build', ->

  beforeBuildTask = ['clean', 'bower']
  defaultBuildTask = ['library', 'imagemin', 'jade', 'compass', 'browserify']

  # 本番用
  if isProduction

    afterBuildTask = ['sitemap', 'usemin']

    # ビルドディレクトリのクリーンと、bowerのvendorを準備したあとに
    # JavaScriptライブラリの準備、画像のコピー最適化、HTML, CSS, JavaScriptのコンパイルを行う
    # 最後にHTML内のリソースをまとめる

    # publicの圧縮をかけるか否か
    if isGzip
      return runSequence beforeBuildTask, defaultBuildTask, afterBuildTask, 'gzip'

    runSequence beforeBuildTask, defaultBuildTask, afterBuildTask

  else
    runSequence beforeBuildTask, defaultBuildTask
