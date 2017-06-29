# Contrabando
Scans node modules for contraband licenses

## Install
```
$ npm install --global contrabando
```
## Usage
Navigate to your modules entry directory (location of `package.json`) and run
```
$ contrabando
```

### Example
##### Terminal output
```
> Scanning module 'contraband'...
┌─────────────┬───────────────────┬─────────┐
│ Module      │ User(s)           │ License │
├─────────────┼───────────────────┼─────────┤
│ cli-table   │ contraband        │ Unknown │
├─────────────┼───────────────────┼─────────┤
│ colors      │ cli-table, colors │ MIT     │
├─────────────┼───────────────────┼─────────┤
│ jsonfile    │ contraband        │ MIT     │
├─────────────┼───────────────────┼─────────┤
│ graceful-fs │ jsonfile          │ ISC     │
├─────────────┼───────────────────┼─────────┤
│ mustache    │ contraband        │ MIT     │
└─────────────┴───────────────────┴─────────┘
Done! Output saved as .\licenses.html
```
##### Html Output
<img src="https://raw.githubusercontent.com/alveflo/contraband/master/output-example.png"><br/>
## License
MIT
