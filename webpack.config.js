'use strict';

const fs = require('fs');
const webpack = require("webpack");
const ExtractTextPlugin = require("extract-text-webpack-plugin");

module.exports = {
  context: __dirname + "/app/assets/javascripts",

  entry: {
    application: "./application.js",
  },

  output: {
    path: __dirname + "/public",
    filename: "[name]-[hash].js",
  },

  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel',
        query: {
          presets: ['es2015']
        },
      },
      {
        test: /\.css$/,
        loader: ExtractTextPlugin.extract("css!sass")
      },
    ]
  },

  plugins: [
    new ExtractTextPlugin("stylesheets/[name]-[hash].css"),

    function() {
      // output the fingerprint
      this.plugin("done", function(stats) {
        let output = "ASSET_FINGERPRINT = \"" + stats.hash + "\""
        fs.writeFileSync("config/initializers/fingerprint.rb", output, "utf8");
      });
    }
  ]
};
