module.exports =

    prompts: false,

    # =================================
    # Template Data

    templateData:

        # -----------------------------
        # Language Definition

        currentLang: 'jp'

        lang:
            en:
                title: 'How to lose weight (in the browser)'
                titleHTML: '<h1>How to lose <span>weight</span></h1><h2>in the browser</h2>'
                slogan: 'The definitive front-end performance guide'
                url: 'http://browserdiet.com'
                bonus: 'Bonus'
                images: 'Images'
                server: 'Server'
                edit: 'Edit'
                goTop: 'Go to the top'
                htmlLang: 'en-US'
                credits: 'Develop by <em>Zeno Rocha</em> ● Design by <em>Briza Bueno</em> ● Illustrations by <em>Scott Johnson</em>'
            pt:
                title: 'Como perder peso (no browser)'
                titleHTML: '<h1>Como perder <span>peso</span></h1><h2>no browser</h2>'
                slogan: 'O guia definitivo de performance front-end'
                url: 'http://browserdiet.com/pt'
                bonus: 'Bônus'
                images: 'Imagens'
                server: 'Servidor'
                edit: 'Editar'
                goTop: 'Ir para o topo'
                htmlLang: 'pt-BR'
                credits: 'Desenvolvido por <em>Zeno Rocha</em> ● Design por <em>Briza Bueno</em> ● Ilustrações por <em>Scott Johnson</em>'
            es:
                title: 'Cómo perder peso (en el navegador)'
                titleHTML: '<h1>Como perder <span>peso</span></h1><h2>en el navegador</h2>'
                slogan: 'La guía definitiva para el rendimiento front-end'
                url: 'http://browserdiet.com/es'
                bonus: 'Bonus'
                images: 'Imagenes'
                server: 'Servidor'
                edit: 'Editar'
                goTop: 'Ir arriba'
                htmlLang: 'es-ES'
                credits: 'Desarrollo por <em>Zeno Rocha</em> ● Diseño por <em>Briza Bueno</em> ● Ilustraciones por <em>Scott Johnson</em>'
            pl:
                title: 'Jak schudnąć (w przeglądarce)'
                titleHTML: '<h1>Jak schudnąć <span>weight</span></h1><h2>w przeglądarce</h2>'
                slogan: 'Ostateczny przewodnik wydajności dla stron internetowych'
                url: 'http://browserdiet.com'
                bonus: 'Bonus'
                images: 'Obrazy'
                server: 'Serwer'
                edit: 'Edytuj'
                goTop: 'Do góry'
                htmlLang: 'pl-PL'
                credits: 'Rozwijane przez <em>Zeno Rocha</em> ● Zaprojektowane przez <em>Briza Bueno</em> ● Ilustracje wykonane przez <em>Scott Johnson</em>'
            zh:
                title: 'How to lose weight (in the browser)'
                titleHTML: '<h1>How to lose <span>weight</span></h1><h2>in the browser</h2>'
                slogan: '权威的前端性能指南'
                url: 'http://browserdiet.com'
                bonus: 'Bonus'
                images: 'Images'
                server: 'Server'
                edit: 'Edit'
                goTop: 'Go to the top'
                htmlLang: 'zh-CN'
                credits: 'Develop by <em>Zeno Rocha</em> ● Design by <em>Briza Bueno</em> ● Illustrations by <em>Scott Johnson</em>'
            fr:
                title: 'Comment perdre du poids (dans le navigateur)'
                titleHTML: '<h1>Comment perdre du <span>poids</span></h1><h2>dans le navigateur</h2>'
                slogan: 'Le guide ultime des performances côté client'
                url: 'http://browserdiet.com'
                bonus: 'Bonus'
                images: 'Images'
                server: 'Serveur'
                edit: 'Éditer'
                goTop: 'Aller vers le haut'
                htmlLang: 'fr-FR'
                credits: 'Développé par <em>Zeno Rocha</em> ● Désigné par <em>Briza Bueno</em> ● Illustrations par <em>Scott Johnson</em>'
            cs:
                title: 'Jak shodit váhu (v prohlížeči)'
                titleHTML: '<h1>Jak shodit <span>váhu</span></h1><h2>v prohlížeči</h2>'
                slogan: 'Definitivní příručka pro výkon webu'
                url: 'http://browserdiet.com'
                bonus: 'Bonus'
                images: 'Obrázky'
                server: 'Server'
                edit: 'Editovat'
                goTop: 'Nahoru'
                htmlLang: 'cs-CZ'
                credits: 'Vytvořil <em>Zeno Rocha</em> ● Design <em>Briza Bueno</em> ● Grafika <em>Scott Johnson</em>'
            jp:
                title: 'How to lose weight (in the browser)'
                titleHTML: '<h1>How to lose <span>weight</span></h1><h2>in the browser</h2>'
                slogan: '決定的なフロントエンドのパフォーマンスガイド'
                url: 'http://browserdiet.com'
                bonus: 'Bonus'
                images: 'Images'
                server: 'Server'
                edit: 'Edit'
                goTop: 'Go to the top'
                htmlLang: 'ja-JP'
                credits: 'Develop by <em>Zeno Rocha</em> ● Design by <em>Briza Bueno</em> ● Illustrations by <em>Scott Johnson</em>'

        # -----------------------------
        # Site Information

        site:
            assets: 'http://browserdiet.com/assets'

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
