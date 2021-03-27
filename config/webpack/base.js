const { webpackConfig } = require('@rails/webpacker')
const customConfig = require('./custom')

const { merge: webpackMerge } = require("webpack-merge");

console.log(webpackConfig.output_path)
console.log(webpackConfig.source_path)

module.exports = webpackMerge(webpackConfig, customConfig)
