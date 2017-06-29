jsonFile = require 'jsonfile'
path     = require 'path'

scan = (pkg, dir, licenses) ->
    key = 'dependencies'

    unless pkg.hasOwnProperty key
        return licenses

    deps = pkg[key]

    for dep, version of deps
        depDir = path.join(dir, 'node_modules', dep)
        depPkg = jsonFile.readFileSync path.join(depDir, 'package.json')

        unless licenses.hasOwnProperty dep
            obj =
                users: [pkg.name]
                module: dep
                version: version
                license: depPkg.license || 'Unknown'
                homepage: depPkg.homepage || 'Unknown'
            licenses[dep] = obj
        else
            licenses[dep].users.push(dep)

        scan depPkg, dir, licenses

    return licenses


module.exports =
    scan: scan