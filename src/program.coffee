scanner   = require './scanner'
path      = require 'path'
jsonFile  = require 'jsonfile'
Table     = require 'cli-table'
colors    = require 'colors'
templator = require './templator'


try
    pkg = jsonFile.readFileSync path.join(process.cwd(), 'package.json')
catch 
    console.log 'No package.json found in current directory.'
    return

console.log "> Scanning module '#{pkg.name}'..."
licenses = scanner.scan pkg, process.cwd(), {}
viewbag =
    module: pkg.name
    license: pkg.license
    dependencies: []


table = new Table {
    head: ["Module".green, "User(s)".green, "License".green]
}

for key, value of licenses
    table.push [key, value.users.join(", "), value.license]
    obj =
        name: key
        users: value.users.join(", ")
        license: value.license
        homepage: value.homepage
    viewbag.dependencies.push obj

templator.render viewbag
console.log table.toString()

console.log "Done! Output saved as .\\licenses.html".green
