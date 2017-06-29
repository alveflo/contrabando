<p align="center">
<img src="http://clipground.com/images/famouspeople-clipart-10.jpg"><br/>
<h1 align="center">Contrabando</h1>
<p align="center">
Scans node modules for contraband licenses
</p>
</p>
Ok now that's not entirely true. What it really does is that it compares the licenses of your dependencies against your own and redflags all licenses that differs. It also gives you a nice html output that you can use to manually see which dependencies your module has and also which licenses that are smuggled in there, which is quite handy in many cases.
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
