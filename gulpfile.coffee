gulp = require 'gulp'
coffee = require 'gulp-coffee'

# Compile the whole project
gulp.task 'default', ['compile']

# Task for compiling main coffee file
gulp.task 'compile', ['copy-manifest', 'copy-icon'], ->
    gulp.src "./src/main.coffee"
        .pipe coffee {bare: true}
        .pipe gulp.dest "./dist"

# Task for copying the manifest
gulp.task 'copy-manifest', ->
    gulp.src "./src/manifest.json"
        .pipe gulp.dest "./dist"

# Task for copying the icon
gulp.task 'copy-icon', ->
    gulp.src "./src/icon.png"
        .pipe gulp.dest "./dist"
