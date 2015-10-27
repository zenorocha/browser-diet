module.exports = function(grunt) {
  grunt.initConfig({
    cssmin: {
      dist: {
        src: ['out/assets/css/main.css'],
        dest: 'out/assets/css/all.min.css'
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-cssmin');

  grunt.registerTask('default', ['cssmin']);
};
