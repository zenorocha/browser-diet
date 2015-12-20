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
            assets: 'https://browserdiet.com/assets'


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
    # DocPad Grunt Plugin

    plugins:
        grunt:
            writeAfter: false
            generateAfter: ['cssmin']
