module.exports =

    prompts: false,

    # =================================
    # Template Data

    templateData:

        # -----------------------------
        # Language Definition

        lang: require('./i18n')
        currentLang: 'en'

        # -----------------------------
        # Site Information

        site:
            assets: 'http://zenorocha.github.io/browser-diet/assets'

        getGruntedStyles: ->
            _ = require 'underscore'
            styles = []
            gruntConfig = require('./Gruntfile.js')
            _.each gruntConfig, (value, key) ->
                styles = styles.concat _.flatten _.pluck value, 'dest'
            styles = _.filter styles, (value) ->
                return value.indexOf('.min.css') > -1
            _.map styles, (value) ->
                return value.replace 'out', ''

        getGruntedScripts: ->
            _ = require 'underscore'
            scripts = []
            gruntConfig = require('./Gruntfile.js')
            _.each gruntConfig, (value, key) ->
                scripts = scripts.concat _.flatten _.pluck value, 'dest'
            scripts = _.filter scripts, (value) ->
                return value.indexOf('.min.js') > -1
            _.map scripts, (value) ->
                return value.replace 'out', ''

        getLang: ->
            currentLang = @currentLang.toString()
            return @lang[currentLang]

    # =================================
    # Environments

    environments:
        development:
            templateData:
                site:
                    url: 'http://localhost:9778'
                    assets: 'http://localhost:9778/assets'

    # =================================
    # DocPad Events

    events:

        # Write After
        # Used to minify our assets with grunt
        writeAfter: (opts,next) ->
            # Prepare
            docpad = @docpad
            rootPath = docpad.config.rootPath
            balUtil = require 'bal-util'
            _ = require 'underscore'

            # Make sure to register a grunt `default` task
            command = ["#{rootPath}/node_modules/.bin/grunt", 'default']

            # Execute
            balUtil.spawn command, {cwd:rootPath,output:true}, ->
                src = []
                gruntConfig = require './Gruntfile.js'
                _.each gruntConfig, (value, key) ->
                    src = src.concat _.flatten _.pluck value, 'src'
                _.each src, (value) ->
                    balUtil.spawn ['rm', value], {cwd:rootPath, output:false}, ->
                balUtil.spawn ['find', '.', '-type', 'd', '-empty', '-exec', 'rmdir', '{}', '\;'], {cwd:rootPath+'/out', output:false}, ->
                next()

            # Chain
            @
