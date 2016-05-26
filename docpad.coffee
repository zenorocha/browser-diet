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
            if @document.pageurl
              return @document.pageurl
            else
              return @getLang().url

        getImageUrl: ->
            if @document.imageurl
              return @document.imageurl
            else
              return 'https://browserdiet.com/assets/img/fb-diet.jpg'

    # =================================
    # Environments

    environments:
        development:
            templateData:
                site:
                    url: 'http://localhost:9778'
                    assets: 'http://localhost:9778/assets'