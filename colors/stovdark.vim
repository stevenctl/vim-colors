" Author: <steven@landow.dev>

lua << EOF
package.loaded['stovdark'] = nil
package.loaded['stovdark.highlights'] = nil
package.loaded['stovdark.Treesitter'] = nil
package.loaded['stovdark.markdown'] = nil
package.loaded['stovdark.Whichkey'] = nil
package.loaded['stovdark.Git'] = nil
package.loaded['stovdark.LSP'] = nil

require("stovdark")
EOF
