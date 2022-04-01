const path = require('path')
const fs = require('fs')
const _template = require('lodash/template')

/**
 * @private
 */
const getPath = p => path.join(__dirname, '../', p)

const TEMPLATE_SRC = '.README.md'
const TEMPLATE_DST = 'README.md'

const templatePath = getPath(TEMPLATE_SRC)
const templateSrc = fs.readFileSync(templatePath, 'utf-8')
const readme = _template(templateSrc)()
const dst = getPath(TEMPLATE_DST)

fs.writeFileSync(dst, readme)

console.log(`rendered ${dst}`)
