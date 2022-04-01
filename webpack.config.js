const path = require('path')

module.exports = {
    mode: 'production',
    devtool: 'source-map',
    entry: './_src/index.js',
    resolve: {
        extensions: [ '.js' ],
    },
    output: {
        filename: 'bundler.js',
        path: path.join(__dirname, 'assets/js')
    },
    module: {
        rules: [
            {
                test: /\.css$/i,
                use: ['style-loader', 'css-loader'],
            },
        ],
    },
}
