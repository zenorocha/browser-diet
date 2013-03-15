module.exports = function(grunt) {
  var gruntConfig = {
    pkg: grunt.file.readJSON('package.json'),
    min: {
      dist: {
        src: ['out/js/bootstrap-scrollspy.min.js',
              'out/js/jquery.viewport.js',
              'out/assets/js/script.js'],
        dest: 'out/assets/js/all.min.js'
      }
    },
    cssmin: {
      dist: {
        src: ['out/assets/css/main.css'],
        dest: 'out/assets/css/all.min.css'
      }
    },
    htmlmin: {
      dist: {
        options: {
          removeComments: true,
          collapseWhitespace:true
        },
        files: {
          'out/index.html' : 'out/index.html'
        }
      }
    }
  };
  grunt.initConfig(gruntConfig);
  var keys = Object.keys(gruntConfig);
  var tasks = [];
  //Loop trough keys, skipping pkg
  for(i = 1, len = keys.length; i < len; i++) {
    tasks.push(keys[i]);
  }
  grunt.loadNpmTasks('grunt-yui-compressor');
  grunt.loadNpmTasks('grunt-contrib-htmlmin');
  grunt.registerTask('default', tasks);
};