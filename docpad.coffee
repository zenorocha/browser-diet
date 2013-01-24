module.exports =

    # =================================
    # Template Data
    # These are variables will be accessible via our templates

    templateData:

        # -----------------------------
        # Site Information

        site:

            # Production URL
            url: 'http://comoperderpesonobrowser.com.br'
            assets: 'http://assets.comoperderpesonobrowser.com.br'

    # =================================
    # Environments

    environments:
        development:
            templateData:
                site:
                    url: 'http://localhost:9778'
                    assets: 'http://localhost:9778/assets'