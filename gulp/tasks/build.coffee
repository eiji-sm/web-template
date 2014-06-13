gulp = require 'gulp'
gutil = require 'gulp-util'
runSequence = require 'run-sequence'


# 環境変数 gulp --production
isProduction = gutil.env.production?

# 監視を行わないビルドタスク
gulp.task 'build', ->

  # 本番用
  if isProduction
    # ビルドディレクトリのクリーンと、bowerのvendorを準備したあとに
    # JavaScriptライブラリの準備、画像のコピー最適化、HTML, CSS, JavaScriptのコンパイルを行う
    # 最後にHTML内のリソースをまとめる
    runSequence 'clean', 'bower', ['library', 'imagemin', 'jade', 'compass', 'browserify'], 'usemin'
  else
    runSequence 'clean', 'bower', ['library', 'imagemin', 'jade', 'compass', 'browserify']
