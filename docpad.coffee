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

        getTitle: ->
            if @document.title
              return @document.title
            else
              return @getLang().title

        getSlogan: ->
            if @document.slogan
              return @document.slogan
            else
              return @getLang().slogan

        getUrl: ->
            if @document.url
              return @document.url
            else
              return @getLang().url

    # =================================
    # Environments

    environments:
        development:
            templateData:
                site:
                    url: 'http://localhost:9778'
                    assets: 'http://localhost:9778/assets'