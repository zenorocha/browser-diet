module.exports =

    # =================================
    # Template Data

    templateData:

        # -----------------------------
        # Site Information

        site:
            # Production URL
            url: 'http://comoperderpesonobrowser.com.br'
            assets: 'http://assets.comoperderpesonobrowser.com.br'

    # =================================
    # Collections

    collections:

      # Get all sections sorted by numerical order
      html: -> @getCollection("documents").findAll({ url: $startsWith:'/html' }, [order:1])
      css: -> @getCollection("documents").findAll({ url: $startsWith:'/css' }, [order:1])
      js: -> @getCollection("documents").findAll({ url: $startsWith:'/js' }, [order:1])
      jquery: -> @getCollection("documents").findAll({ url: $startsWith:'/jquery' }, [order:1])

    # =================================
    # Environments

    environments:
        development:
            templateData:
                site:
                    url: 'http://localhost:9778'
                    assets: 'http://localhost:9778/assets'