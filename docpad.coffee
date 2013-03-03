module.exports =

    # =================================
    # Template Data

    templateData:

        # -----------------------------
        # Language Definition

        lang: 'br'

        # -----------------------------
        # Site Information

        site:
            en:
                title: 'How to lose weight (in the browser)'
                titleHTML: '<h1>How to lose <span class="peso">weight</span></h1><h2>in the browser</h2>'
                url: 'http://browserdiet.com'

            br:
                title: 'Como perder peso (no browser)'
                titleHTML: '<h1>Como perder <span class="peso">peso</span></h1><h2>no browser</h2>'
                url: 'http://browserdiet.com/br'
            assets: 'http://assets.browserdiet.com'
            
        getGruntedStyles: ->
            _ = require 'underscore'
            styles = []
            gruntConfig = require('./grunt-config.json')
            _.each gruntConfig, (value, key) ->
                styles = styles.concat _.flatten _.pluck value, 'dest'
            styles = _.filter styles, (value) ->
                return value.indexOf('.min.css') > -1
            _.map styles, (value) ->
                return value.replace 'out', ''

        getGruntedScripts: ->
            _ = require 'underscore'
            scripts = []
            gruntConfig = require('./grunt-config.json')
            _.each gruntConfig, (value, key) ->
                scripts = scripts.concat _.flatten _.pluck value, 'dest'
            scripts = _.filter scripts, (value) ->
                return value.indexOf('.min.js') > -1
            _.map scripts, (value) ->
                return value.replace 'out', ''

        getLang: ->
            return @lang.toString()

        getTitle: ->
            return @site[@getLang()].title

        getTitleHTML: ->
            return @site[@getLang()].titleHTML

        getUrl: ->
            currentLang = @lang.toString()
            return @site[@getLang()].url

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
                gruntConfig = require './grunt-config.json'
                _.each gruntConfig, (value, key) ->
                    src = src.concat _.flatten _.pluck value, 'src'
                _.each src, (value) ->
                    balUtil.spawn ['rm', value], {cwd:rootPath, output:false}, ->
                balUtil.spawn ['find', '.', '-type', 'd', '-empty', '-exec', 'rmdir', '{}', '\;'], {cwd:rootPath+'/out', output:false}, ->
                next()

            # Chain
            @