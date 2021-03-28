module.exports = {
    resolve: {
        extensions: ['.css', '.js', '.scss', 'sass'],
        alias: {
            $: 'jquery',
            jQuery: 'jquery',
            jquery: 'jquery',
            'window.jQuery': 'jquery',
            "window.$": "jquery",
            Popper: ['popper.js', 'default'],
            Rails: ['@rails/ujs']
        }
    }
}
