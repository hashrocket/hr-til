'use strict';

const webpack = require("webpack");

module.exports = {
  context: __dirname + "/app/assets/javascripts",

  entry: {
    application: "./application.js",
  },

  output: {
    path: __dirname + "/public",
    filename: "javascripts/[name].js",
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
      }
    ]
  },
};
