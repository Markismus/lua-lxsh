--[[

 This is the LuaRocks rockspec for the LXSH module.

 Author: Peter Odding <peter@peterodding.com>
 Last Change: {{DATE}}
 Homepage: http://peterodding.com/code/lua/lxsh

]]

package = 'LXSH'
version = '{{VERSION}}'

source = {
  url = 'http://peterodding.com/code/lua/lxsh/downloads/lxsh-{{VERSION}}.zip',
  md5 = '{{HASH}}',
}

description = {
  summary = 'LXSH - Lexing & syntax highlighting in Lua',
  detailed = [[
    LXSH is a collection of lexers and syntax highlighters written in Lua using
    the excellent pattern-matching library LPeg. The highlighters generate HTML
    designed to be easily embedded in web pages.
  ]],
  homepage = 'http://peterodding.com/code/lua/lxsh',
  license = 'MIT',
}

dependencies = {
  'lua >= 5.1',
  'lpeg >= 0.9'
}

build = {
  type = 'builtin',
  modules = {
    ['lxsh.init'] = 'src/init.lua',
    ['lxsh.lexers.lua'] = 'src/lexers/lua.lua',
    ['lxsh.lexers.c'] = 'src/lexers/c.lua',
    ['lxsh.highlighters.lua'] = 'src/highlighters/lua.lua',
    ['lxsh.highlighters.c'] = 'src/highlighters/c.lua',
    ['lxsh.docs.lua'] = 'src/docs/lua.lua',
    ['lxsh.docs.c'] = 'src/docs/c.lua',
    ['lxsh.colors.earendel'] = 'src/colors/earendel.lua',
    ['lxsh.colors.slate'] = 'src/colors/slate.lua',
    ['lxsh.colors.wiki'] = 'src/colors/wiki.lua',
  },
  copy_directories = { 'etc', 'examples', 'test' },
}

-- vim: ft=lua ts=2 sw=2 et