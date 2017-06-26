scanner  = require './scanner'
path     = require 'path'
jsonFile = require 'jsonfile'
Table = require 'cli-table'
colors = require 'colors'

try
    pkg = jsonFile.readFileSync path.join(process.cwd(), 'package.json')
catch 
    console.log 'No package.json found in current directory.'
    return

licenses = scanner.scan pkg, process.cwd(), {}

table = new Table {
    head: ["Module".green, "User(s)".green, "License".green]
}

for key, value of licenses
    table.push [key, value.users.join(", "), value.license]

console.log table.toString()