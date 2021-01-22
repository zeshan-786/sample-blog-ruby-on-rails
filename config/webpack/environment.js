const { environment } = require('@rails/webpacker')

const webpack = require('webpack')

environment.plugins.append('provide', 
    new webpack.ProvidePlugin({
        $: 'Jquery',
        JQuery: 'Jquery',
        Popper: ['popper.js', 'default']
    })
)

module.exports = environment
