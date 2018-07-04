require('./lib/common')

require("./tests/000-createTable.js")
require("./tests/010-describe.js")
require("./tests/020-specialSigns.js")
require("./tests/030-insert.js")
run_test('[SQL] INSERT',  'test/res/030-insert.yaml' ) // insert sql version
require("./tests/031-insert_or_update.js")
require("./tests/032-insert_or_replace.js")
require("./tests/040-update.js")
run_test('[SQL] UPDATE',  'test/res/040-update.yaml' ) // insert sql version
require("./tests/050-replace.js")
require("./tests/060-delete.js")
require("./tests/070-get.js")
require("./tests/080-query.js")
require("./tests/090-scan.js")
require("./tests/999-deleteTable.js")
