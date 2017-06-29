mustache = require('mustache')
fs       = require('fs')
path     = require('path')

render = (viewbag) ->
    try
        fs.readFile path.join(__dirname, '../template/template.html'), (err, data) ->
            throw err if err
            output = mustache.render data.toString(), viewbag
            fs.writeFileSync path.join(process.cwd(), 'licenses.html'), output
    catch ex
        throw ex

module.exports =
    render: render