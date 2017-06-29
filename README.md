<p align="center">
<img src="http://clipground.com/images/famouspeople-clipart-10.jpg"><br/>
<h1 align="center">Contrabando</h1>
<p align="center">
Scans node modules for contraband licenses
</p>
</p>

## Install
```
$ npm install --global contrabando
```
## Usage
Navigate to your modules entry directory (location of `package.json`) and run
```
$ contrabando
```
Note that it's only the `dependencies` entries that are scanned, not peer/dev/optional/bundled dependencies.
### Example
##### Terminal output
```
> Scanning module 'contrabando'...
┌─────────────┬────────────────────────┬─────────┐
│ Module      │ User(s)                │ License │
├─────────────┼────────────────────────┼─────────┤
│ cli-table   │ contrabando            │ Unknown │
├─────────────┼────────────────────────┼─────────┤
│ colors      │ cli-table, contrabando │ MIT     │
├─────────────┼────────────────────────┼─────────┤
│ jsonfile    │ contrabando            │ MIT     │
├─────────────┼────────────────────────┼─────────┤
│ graceful-fs │ jsonfile               │ ISC     │
├─────────────┼────────────────────────┼─────────┤
│ mustache    │ contrabando            │ MIT     │
└─────────────┴────────────────────────┴─────────┘
Done! Output saved as .\licenses.html
```
##### Html Output
<img src="https://raw.githubusercontent.com/alveflo/contraband/master/output-example.png"><br/>
## License
MIT
