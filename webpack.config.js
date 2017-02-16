'use strict';

// Big thanks to http://pixelatedworks.com/articles/replacing-the-rails-asset-pipeline-with-webpack-and-yarn/
// for this webpack config

const fs = require('fs');
const webpack = require("webpack");
const ExtractTextPlugin = require("extract-text-webpack-plugin");

// Only fingerprint assets in production. Run `webpack -p` for production.
const prod = process.argv.indexOf('-p') !== -1;
const css_output_template = prod ? "stylesheets/[name]-[hash].css" : "stylesheets/[name].css";
const js_output_template = prod ? "javascripts/[name]-[hash].js" : "javascripts/[name].js";

const extractCss = new ExtractTextPlugin(css_output_template)

module.exports = {
  context: __dirname + "/app/assets",

  entry: {
    application: ["./javascripts/application.js", "./stylesheets/main.scss"],
  },

  output: {
    path: __dirname + "/public",
    filename: js_output_template,
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
        test: /\.scss$/,
        loader: extractCss.extract("style-loader", "css-loader", "sass-loader"),
      },

      {
        test: /\.css$/,
        loader: ExtractTextPlugin.extract("css!sass"),
      },
    ]
  },

  plugins: [
    extractCss,

    function() {
      // output the fingerprint
      this.plugin("done", function(stats) {
        let output = "ASSET_FINGERPRINT = \"" + stats.hash + "\""
        fs.writeFileSync("config/initializers/fingerprint.rb", output, "utf8");
      });
    },

    function() {
      // delete previous outputs
      this.plugin("compile", function() {
        let basepath = __dirname + "/public";
        let paths = ["/javascripts", "/stylesheets"];

        for (let x = 0; x < paths.length; x++) {
          const asset_path = basepath + paths[x];

          fs.readdir(asset_path, function(err, files) {
            if (files === undefined) {
              return;
            }

            for (let i = 0; i < files.length; i++) {
              fs.unlinkSync(asset_path + "/" + files[i]);
            }
          });
        }
      });
    }
  ]
};
