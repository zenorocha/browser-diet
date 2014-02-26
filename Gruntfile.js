module.exports = function(grunt) {
  grunt.initConfig({
    cssmin: {
      dist: {
        src: ['out/en/assets/css/main.css'],
        dest: 'out/en/assets/css/all.min.css'
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-cssmin');

  grunt.registerTask('default', ['cssmin']);
};
