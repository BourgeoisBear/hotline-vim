" Name:         Hotline
" Author:       Ethan Morgan <ethan@epmor.app>
" URL:          https://github.com/epmor/hotline-vim
" License:      MIT
" Created:      June 23rd 2021
" Modified:     Jan  12th 2022 [Jason Stewart <support@eggplantsd.com>]
"
" Colorscheme initialization "{{{
" ----------------------------------------------------------------------
highlight clear
if has('syntax_on')
  syntax reset
endif
let g:colors_name = 'hotline'
set background=dark
"}}}
" GUI & Term Palettes "{{{
" ----------------------------------------------------------------------
let s:base00 = ['#002b36', '234']
let s:base01 = ['#ff0087', '198']
let s:base02 = ['#00ffff', '190']
let s:base03 = ['#5fd7ff', '198']
let s:base04 = ['#d0d0d0', '252']
let s:base05 = ['#ffffff', '255']
let s:base06 = ['#fdf6e3', '230']
let s:base07 = ['#87ffff', '123']
let s:base08 = ['#5fafff', '75']
let s:base09 = ['#6fd9fc', '81']
let s:base10 = ['#00ffff', '14']
let s:base11 = ['#00ffaf', '49']
let s:base12 = ['#afffaf', '157']
let s:base13 = ['#d7ff00', '190']
let s:base14 = ['#ff5f00', '202']
let s:base15 = ['#ff0087', '198']
let s:base16 = ['#000000', '0']
let s:base17 = ['#121212', '0']

let s:yello  = ['#fce94f', '11']
let s:barney = ['#9300ad', '93']
let s:tiffblue = ['#85fff5', '123']

"}}}
" Highlight function "{{{
" ----------------------------------------------------------------------
function! <SID>X(group, fg, bg, attr)

	let l_hc = ['highlight', a:group]

  if !empty(a:fg)
		let l_hc = l_hc + ['guifg=' . a:fg[0], 'ctermfg=' . a:fg[1]]
  endif

  if !empty(a:bg)
		let l_hc = l_hc + ['guibg=' . a:bg[0], 'ctermbg=' . a:bg[1]]
	else
		let l_hc = l_hc + ['guibg=NONE', 'ctermbg=NONE']
  endif

  if !empty(a:attr)
		let l_hc = l_hc + ['gui=' . a:attr, 'cterm=' . a:attr]
  endif

	exec join(l_hc, ' ')

endfunction
"}}}
" Highlight link function "{{{
" ----------------------------------------------------------------------
function! <SID>Link(from, to)
  exec 'hi def link ' . a:from . ' ' . a:to
endfunction
"}}}
" Highlight filetype link function "{{{
" ----------------------------------------------------------------------
function! <SID>FTLink(ft, from, to)
  exec 'autocmd filetype ' . a:ft . ' hi def link ' . a:from . ' ' . a:to
endfunction
"}}}
" Syntax highlighting "{{{
" ----------------------------------------------------------------------
call <SID>X('Boolean',        s:base08, '',       '')
call <SID>X('Character',      s:base10, '',       '')
call <SID>X('ColorColumn',    s:base02, s:base01, '')
call <SID>X('Comment',        s:base11, '',       '')
call <SID>X('Conceal',        s:base05, '',       '')
call <SID>X('Conditional',    s:base15, '',       '')
call <SID>X('Constant',       s:base08, '',       '')
call <SID>X('Cursor',         s:base00, s:base09, '')
call <SID>X('CursorIM',       s:base00, s:base09, '')
call <SID>X('CursorColumn',   '',       '',       '')
call <SID>X('CursorLine',     '',       '',       '')
call <SID>X('CursorLineNr',   s:base03, s:base01, '')
call <SID>X('Debug',          s:base01, '',       '')
call <SID>X('Define',         s:base14, '',       '')
call <SID>X('Delimiter',      s:base10, '',       '')
call <SID>X('DiffAdd',        s:base11, '',       '')
call <SID>X('DiffChange',     s:base11, '',       '')
call <SID>X('DiffDelete',     s:base11, '',       '')
call <SID>X('DiffText',       s:base11, '',       '')
call <SID>X('Directory',      s:base09, '',       '')
call <SID>X('Error',          s:base14, '',       '')
call <SID>X('ErrorMsg',       s:base14, '',       '')
call <SID>X('Exception',      s:base09, '',       '')
call <SID>X('Float',          s:base08, '',       '')
call <SID>X('FoldColumn',     s:base02, s:base01, '')
call <SID>X('Folded',         s:base02, s:base01, '')
call <SID>X('Function',       s:base13, '',       '')
call <SID>X('Identifier',     s:base08, '',       '')
call <SID>X('Ignore',         s:base01, '',       '')
call <SID>X('IncSearch',      '',       '',       'underline')
call <SID>X('Include',        s:base15, '',       '')
call <SID>X('Keyword',        s:base15, '',       'bold')
call <SID>X('Label',          s:base02, '',       '')
call <SID>X('LineNrAbove',    s:barney, '',       '')
call <SID>X('LineNr',         s:base13, '',       'bold')
call <SID>X('LineNrBelow',    s:base15, '',       '')
call <SID>X('Macro',          s:base11, '',       '')
call <SID>X('MatchParen',     '',       s:base01, '')
call <SID>X('ModeMsg',        s:base11, '',       '')
call <SID>X('MoreMsg',        s:base11, '',       '')
call <SID>X('MsgSeparator',   s:base11, '',       '')
call <SID>X('NonText',        s:base01, '',       '')
call <SID>X('Normal',         s:base05, s:base16, '')
call <SID>X('Number',         s:base08, '',       '')
call <SID>X('NvimSpacing',    s:base01, '',       '')
call <SID>X('Operator',        s:yello, '',       '')
"call <SID>X('Operator',       s:base15, '',       '')
call <SID>X('PMenu',          s:base03, s:base16, '')
call <SID>X('PMenuSel',       s:base00, s:base09, '')
call <SID>X('PMenuSbar',      '',       s:base01, '')
call <SID>X('PMenuThumb',     '',       s:base08, '')
call <SID>X('PreCondit',      s:base08, '',       '')
call <SID>X('PreProc',        s:base08, '',       '')
call <SID>X('Question',       s:base13, '',       '')
call <SID>X('Repeat',         s:base11, '',       '')
call <SID>X('Search',         s:base13, '',       'underline')
call <SID>X('SignColumn',     s:base10, s:base16, '')
call <SID>X('Special',        s:base10, '',       '')
call <SID>X('SpecialChar',    s:base10, '',       '')
call <SID>X('SpecialComment', s:base12, '',       '')
call <SID>X('SpecialKey',     s:base09, '',       '')
call <SID>X('SpellBad',       '',       s:base01, '')
call <SID>X('SpellCap',       '',       s:base01, '')
call <SID>X('SpellLocal',     '',       s:base01, '')
call <SID>X('SpellRare',      '',       s:base01, '')
call <SID>X('StatusLine',     '',       s:base01, '')
call <SID>X('Statement',      s:base10, '',       '')
call <SID>X('StorageClass',   s:base03, '',       '')
call <SID>X('String',         s:tiffblue, '',       '')
call <SID>X('Structure',      s:base09, '',       '')
call <SID>X('TabLine',        s:base03, s:base02, '')
call <SID>X('TabLineFill',    s:base11, s:base01, '')
call <SID>X('TabLineSel',     s:base00, s:base11, '')
call <SID>X('Tag',            s:base11, '',       '')
call <SID>X('TermCursor',     s:base00, s:base09, '')
call <SID>X('Title',          s:base08, '',       '')
call <SID>X('Todo',           s:base09, '',       '')
call <SID>X('Type',           s:base09, '',       '')
call <SID>X('Typedef',        s:base09, '',       '')
call <SID>X('VertSplit',      s:base10, s:base16, 'bold')
call <SID>X('StatusLineNC',   s:base15, s:base16, '')
call <SID>X('Visual',         s:base00, s:base09, '')
call <SID>X('Underlined',     s:base12, '',       '')
call <SID>X('WarningMsg',     s:base10, '',       '')
call <SID>X('Whitespace',     s:base01, '',       '')
call <SID>X('WildMenu',       s:base00, s:base13, '')
"}}}
" CSS "{{{
" ----------------------------------------------------------------------
call <SID>X('cssAttr',                   s:base10, '',       '')
call <SID>X('cssAttrRegion',             s:base10, '',       '')
call <SID>X('cssClassName',              s:base15, '',       '')
call <SID>X('cssClassNameDot',           s:base15, '',       '')
call <SID>X('cssColor',                  s:base10, '',       '')
call <SID>X('cssCommonAttr',             s:base15, '',       '')
call <SID>X('cssDefinition',             s:base09, '',       '')
call <SID>X('cssFlexibleBoxAttr',        s:base10, '',       '')
call <SID>X('cssFlexibleBoxProp',        s:base09, '',       '')
call <SID>X('cssFontDescriptor',         s:base15, '',       '')
call <SID>X('cssFontDescriptorFunction', s:base08, '',       '')
call <SID>X('cssFunction',               s:base06, '',       '')
call <SID>X('cssFunctionComma',          s:base10, '',       '')
call <SID>X('cssFunctionName',           s:base15, '',       '')
call <SID>X('cssIdentifier',             s:base11, '',       '')
call <SID>X('cssIncludeKeyword',         s:base15, '',       '')
call <SID>X('cssKeyFrame',               s:base06, '',       '')
call <SID>X('cssKeyFrameSelector',       s:base08, '',       '')
call <SID>X('cssMediaProp',              s:base09, '',       '')
call <SID>X('cssNoise',                  s:base10, '',       '')
call <SID>X('cssPagePseudo',             s:base13, '',       '')
call <SID>X('cssProp',                   s:base09, '',       '')
call <SID>X('cssPseudoClass',            s:base13, '',       '')
call <SID>X('cssPseudoClassFn',          s:base13, '',       '')
call <SID>X('cssPseudoClassId',          s:base13, '',       '')
call <SID>X('cssPseudoClassLang',        s:base13, '',       '')
call <SID>X('cssSelectorOp',             s:base13, '',       '')
call <SID>X('cssSelectorOp2',            s:base13, '',       '')
call <SID>X('cssTagName',                s:base15, '',       '')
call <SID>X('cssUnitDecorators',         s:base10, '',       '')
call <SID>X('cssValueAngle',             s:base10, '',       '')
call <SID>X('cssValueFrequency',         s:base10, '',       '')
call <SID>X('cssValueInteger',           s:base08, '',       '')
call <SID>X('cssValueLength',            s:base08, '',       '')
call <SID>X('cssValueNumber',            s:base08, '',       '')
call <SID>X('cssValueTime',              s:base10, '',       '')
call <SID>X('cssVariable',               s:base13, '',       '')
call <SID>X('cssVariableValue',          s:base13, '',       '')
call <SID>X('cssVendor',                 s:base15, '',       '')
"}}}
" Git "{{{
" ----------------------------------------------------------------------
call <SID>X('gitcommitComment',       s:base01, '',       '')
call <SID>X('gitcommitHeader',        s:base05, '',       '')
call <SID>X('gitcommitDiscardedFile', s:base13, '',       '')
call <SID>X('gitcommitDiscardedType', s:base09, '',       '')
call <SID>X('gitcommitNoChanges',     s:base06, '',       '')
call <SID>X('gitcommitSelected',      '',       '',       '')
call <SID>X('gitcommitSelectedFile',  s:base11, '',       '')
call <SID>X('gitcommitSelectedType',  s:base09, '',       '')
call <SID>X('gitcommitSummary',       s:base07, '',       '')
call <SID>X('gitcommitUnmerged',      '',       '',       '')
call <SID>X('gitcommitUnmergedFile',  s:base13, '',       '')
call <SID>X('gitcommitUnmergedType',  s:base13, '',       '')
call <SID>X('gitcommitUntracked',     '',       '',       '')
call <SID>X('gitcommitUntrackedFile', s:base10, '',       '')
"}}}
" Haskell "{{{
" ----------------------------------------------------------------------
call <SID>X('ConId',                 s:base09, '',       '')
call <SID>X('haskellBlock',          s:base06, '',       '')
call <SID>X('haskellBottom',         s:base11, '',       'underline')
call <SID>X('haskellBrackets',       s:base06, '',       '')
call <SID>X('haskellDecl',           s:base15, '',       '')
call <SID>X('haskellDeclKeyword',    s:base15, '',       '')
call <SID>X('haskellDefault',        s:base06, '',       '')
call <SID>X('haskellIdentifier',     s:base13, '',       '')
call <SID>X('haskellImport',         s:base09, '',       '')
call <SID>X('haskellImportKeywords', s:base15, '',       '')
call <SID>X('haskellKeyword',        s:base15, '',       '')
call <SID>X('haskellLet',            s:base15, '',       '')
call <SID>X('haskellParens',         s:base06, '',       '')
call <SID>X('haskellPatternKeyword', s:base11, '',       '')
call <SID>X('haskellPragma',         s:base13, '',       'italic')
call <SID>X('haskellPreProc',        s:base11, '',       'undercurl')
call <SID>X('haskellStatic',         s:base11, '',       'undercurl')
call <SID>X('haskellType',           s:base09, '',       '')
call <SID>X('haskellTypeRoles',      s:base11, '',       '')
call <SID>X('haskellWhere',          s:base15, '',       '')
call <SID>X('hsCharacter',           s:base06, '',       'italic')
call <SID>X('hsComment',             s:base01, '',       '')
call <SID>X('hsConSym',              s:base15, '',       '')
call <SID>X('hsConditional',         s:base15, '',       '')
call <SID>X('hsDebug',               s:base11, '',       'undercurl')
call <SID>X('hsDelimiter',           s:base06, '',       '')
call <SID>X('hsEnumConst',           s:base13, '',       '')
call <SID>X('hsExitCode',            s:base09, '',       '')
call <SID>X('hsFloat',               s:base08, '',       '')
call <SID>X('hsForeign',             s:base11, '',       '')
call <SID>X('hsImport',              s:base15, '',       '')
call <SID>X('hsImportMod',           s:base15, '',       '')
call <SID>X('hsInfix',               s:base15, '',       '')
call <SID>X('hsLineComment',         s:base01, '',       '')
call <SID>X('hsMaybe',               s:base09, '',       '')
call <SID>X('hsModule',              s:base15, '',       '')
call <SID>X('hsNumber',              s:base08, '',       '')
call <SID>X('hsOperator',            s:base15, '',       '')
call <SID>X('hsOrdering',            s:base09, '',       '')
call <SID>X('hsPragma',              s:base13, '',       'italic')
call <SID>X('hsSpecialChar',         s:base13, '',       '')
call <SID>X('hsSpecialCharError',    s:base14, '',       '')
call <SID>X('hsStatement',           s:base09, '',       '')
call <SID>X('hsString',              s:base11, '',       '')
call <SID>X('hsStructure',           s:base15, '',       '')
call <SID>X('hsType',                s:base09, '',       '')
call <SID>X('hsTypedef',             s:base15, '',       '')
call <SID>X('hsVarSym',              s:base15, '',       '')
"}}}
" Help "{{{
" ----------------------------------------------------------------------
call <SID>X('helpBar',            s:base10, '',       '')
call <SID>X('helpCommand',        s:base13, '',       '')
call <SID>X('helpExample',        s:base03, '', '')
call <SID>X('helpHyperTextEntry', s:base11, '',       '')
call <SID>X('helpHeader',         s:base11, '',       '')
call <SID>X('helpHeadline',       s:base13, '',       '')
call <SID>X('helpHyperTextJump',  s:base08, '',       '')
call <SID>X('helpNote',           s:base10, '',       '')
call <SID>X('helpOption',         s:base09, '',       '')
call <SID>X('helpSectionDelim',   s:base02, '',       '')
call <SID>X('helpSpecial',        s:base03, '', '')
call <SID>X('helpStar',           s:base13, '',       '')
call <SID>X('helpURL',            s:base08, '',       '')
call <SID>X('helpVim',            s:base09, '',       '')
call <SID>X('helpWarning',        s:base10, '',       '')
"}}}
" HTML "{{{
" ----------------------------------------------------------------------
call <SID>X('htmlArg',     s:base08, '',       '')
call <SID>X('htmlEndTag',  s:base06, '',       '')
call <SID>X('htmlH1',      s:base05, '',       '')
call <SID>X('htmlH2',      s:base05, '',       '')
call <SID>X('htmlH3',      s:base05, '',       '')
call <SID>X('htmlH4',      s:base05, '',       '')
call <SID>X('htmlH5',      s:base05, '',       '')
call <SID>X('htmlH6',      s:base05, '',       '')
call <SID>X('htmlTag',     s:base06, '',       '')
call <SID>X('htmlTagN',    s:base06, '',       '')
call <SID>X('htmlTagName', s:base15, '',       '')
call <SID>X('htmlTitle',   s:base05, '',       '')
"}}}
" JavaScript "{{{
" ----------------------------------------------------------------------
call <SID>X('jsArrowFuncArgs',           s:base14, '',       '')
call <SID>X('jsArrowFunction',           s:base09, '',       '')
call <SID>X('jsAsyncKeyword',            s:base09, '',       'italic')
call <SID>X('jsBlock',                   s:base06, '',       '')
call <SID>X('jsBlockLabel',              s:base09, '',       '')
call <SID>X('jsBlockLabelKey',           s:base09, '',       '')
call <SID>X('jsBooleanFalse',            s:base08, '',       '')
call <SID>X('jsBooleanTrue',             s:base08, '',       '')
call <SID>X('jsBraces',                  s:base10, '',       '')
call <SID>X('jsBracket',                 s:base06, '',       '')
call <SID>X('jsBrackets',                s:base06, '',       '')
call <SID>X('jsBuiltins',                s:base09, '',       '')
call <SID>X('jsCharacter',               s:base09, '',       '')
call <SID>X('jsClassBraces',             s:base05, '',       '')
call <SID>X('jsClassDefinition',         s:base13, '',       'italic')
call <SID>X('jsClassFuncName',           s:base13, '',       'italic')
call <SID>X('jsClassKeyword',            s:base09, '',       '')
call <SID>X('jsClassMethodType',         s:base15, '',       '')
call <SID>X('jsClassProperty',           s:base13, '',       '')
call <SID>X('jsDecorator',               s:base15, '',       '')
call <SID>X('jsDecoratorFunction',       s:base09, '',       '')
call <SID>X('jsDestructuringAssignment', s:base10, '',       '')
call <SID>X('jsDestructuringBraces',     s:base10, '',       '')
call <SID>X('jsDestructuringNoise',      s:base10, '',       '')
call <SID>X('jsExport',                  s:base15, '',       '')
call <SID>X('jsExportDefault',           s:base15, '',       '')
call <SID>X('jsExtendsKeyword',          s:base09, '',       '')
call <SID>X('jsFloat',                   s:base08, '',       '')
call <SID>X('jsForAwait',                s:base15, '',       '')
call <SID>X('jsFrom',                    s:base15, '',       '')
call <SID>X('jsFuncArgOperator',         s:base14, '',       '')
call <SID>X('jsFuncArgs',                s:base14, '',       '')
call <SID>X('jsFuncBraces',              s:base05, '',       '')
call <SID>X('jsFuncCall',                s:base13, '',       '')
call <SID>X('jsFuncName',                s:base13, '',       'italic')
call <SID>X('jsFuncParens',              s:base09, '',       '')
call <SID>X('jsFunction',                s:base09, '',       '')
call <SID>X('jsGenerator',               s:base09, '',       '')
call <SID>X('jsGlobalNodeObjects',       s:base09, '',       '')
call <SID>X('jsGlobalObjects',           s:base09, '',       '')
call <SID>X('jsImport',                  s:base15, '',       '')
call <SID>X('jsLabel',                   s:base15, '',       '')
call <SID>X('jsModuleAs',                s:base15, '',       '')
call <SID>X('jsModuleAsterisk',          s:base15, '',       '')
call <SID>X('jsModuleKeyword',           s:base06, '',       '')
call <SID>X('jsNoise',                   s:base10, '',       '')
call <SID>X('jsNull',                    s:base09, '',       '')
call <SID>X('jsNumber',                  s:base08, '',       '')
call <SID>X('jsObject',                  s:base06, '',       '')
call <SID>X('jsObjectBraces',            s:base10, '',       '')
call <SID>X('jsObjectFuncName',          s:base09, '',       'italic')
call <SID>X('jsObjectKey',               s:base06, '',       '')
call <SID>X('jsObjectKeyComputed',       s:base06, '',       '')
call <SID>X('jsObjectKeyString',         s:base12, '',       '')
call <SID>X('jsObjectMethodType',        s:base13, '',       '')
call <SID>X('jsObjectProp',              s:base06, '',       '')
call <SID>X('jsObjectStringKey',         s:base12, '',       '')
call <SID>X('jsParens',                  s:base05, '',       '')
call <SID>X('jsParensError',             s:base05, '',       '')
call <SID>X('jsPrototype',               s:base09, '',       'italic')
call <SID>X('jsSpecial',                 s:base08, '',       '')
call <SID>X('jsStorageClass',            s:base09, '',       '')
call <SID>X('jsString',                  s:base11, '',       '')
call <SID>X('jsSuper',                   s:base09, '',       'italic')
call <SID>X('jsSwitchBraces',            s:base10, '',       '')
call <SID>X('jsSwitchCase',              s:base15, '',       '')
call <SID>X('jsSwitchColon',             s:base15, '',       '')
call <SID>X('jsTaggedTemplate',          s:base15, '',       '')
call <SID>X('jsTemplateBraces',          s:base15, '',       '')
call <SID>X('jsTemplateExpression',      s:base15, '',       '')
call <SID>X('jsTernaryIfOperator',       s:base15, '',       '')
call <SID>X('jsThis',                    s:base09, '',       '')
call <SID>X('jsUndefined',               s:base09, '',       '')
call <SID>X('jsVariableDef',             s:base06, '',       '')

call <SID>Link('javaScriptBraces',   'jsObjectBraces')
call <SID>Link('javaScriptFunction', 'jsFunction')
call <SID>Link('javaScriptGlobal',   'jsGlobalObjects')
call <SID>Link('javaScriptMember',   'jsGlobalObjects')
call <SID>Link('javaScriptMessage',  'jsGlobalObjects')
call <SID>Link('javaScriptNull',     'jsUndefined')
call <SID>Link('javaScriptNumber',   'jsNumber')
call <SID>Link('javaScriptReserved', 'Keyword')
"}}}
" NERDTree "{{{
" ----------------------------------------------------------------------
call <SID>X('NERDTreeCWD',       s:base12, '',       '')
call <SID>X('NERDTREEDir',       s:base12, '',       '')
call <SID>X('NERDTreeExecFile',  s:base15, '',       '')
call <SID>X('NERDTreeFile',      s:base09, '',       '')
call <SID>X('NERDTreeClosable',  s:base13, '',       '')
call <SID>X('NERDTreeOpenable',  s:base09, '',       '')
call <SID>X('NERDTreeDirSlash',  s:base09, '',       '')
call <SID>X('NERDTreeHelp',      s:base06, '',       '')
call <SID>X('NERDTreeHelpKey',   s:base09, '',       '')
call <SID>X('NERDTreeHelpTitle', s:base11, '',       '')

call <SID>FTLink('nerdtree', 'Cursor',     'Cursor')
call <SID>FTLink('nerdtree', 'CursorLine', 'Cursor')
"}}}
" Netrw "{{{
" ----------------------------------------------------------------------
call <SID>X('netrwSpecial',  s:base08, '',       '')
call <SID>X('netrwClassify', s:base08, '',       '')
call <SID>X('netrwExe',      s:base01, '',       '')
call <SID>X('netrwTreeBar',  s:base01, '',       '')
call <SID>X('netrwPlain',    s:base09, '',       '')
"}}}
" Nvim "{{{
" ----------------------------------------------------------------------
call <SID>X('NvimInternalError', s:base15, '',       '')
"}}}
" Python "{{{
" ----------------------------------------------------------------------
call <SID>X('pythonBoolean',       s:base08, '',       '')
call <SID>X('pythonBuiltinFunc',   s:base09, '',       '')
call <SID>X('pythonBuiltinObj',    s:base08, '',       '')
call <SID>X('pythonDecorator',     s:base15, '',       '')
call <SID>X('pythonDecoratorName', s:base08, '',       '')
call <SID>X('pythonDottedName',    s:base08, '',       '')
call <SID>X('pythonExceptions',    s:base14, '',       '')
call <SID>X('pythonStatement',     s:base15, '',       '')
call <SID>X('pythonStrFormat',     s:base10, '',       '')
"}}}
" Shell "{{{
" ----------------------------------------------------------------------
call <SID>X('bashStatement',    s:base15, '',       '')
call <SID>X('shArithmetic',     s:base08, '',       '')
call <SID>X('shCaseCommandSub', s:base06, '',       '')
call <SID>X('shCmdSubRegion',   s:base15, '',       '')
call <SID>X('shCommandSub',     s:base05, '',       '')
call <SID>X('shCtrlSeq',        s:base05, '',       '')
call <SID>X('shDeref',          s:base05, '',       '')
call <SID>X('shDerefSimple',    s:base05, '',       '')
call <SID>X('shDerefSpecail',   s:base05, '',       '')
call <SID>X('shDerefVar',       s:base05, '',       '')
call <SID>X('shEcho',           s:base15, '',       '')
call <SID>X('shEchoQuote',      s:base15, '',       '')
call <SID>X('shEscape',         s:base06, '',       '')
call <SID>X('shExDoubleQuote',  s:base11, '',       '')
call <SID>X('shExSingleQuote',  s:base11, '',       '')
call <SID>X('shExpr',           s:base15, '',       '')
call <SID>X('shFunction',       s:base13, '',       '')
call <SID>X('shHereDoc',        s:base15, '',       '')
call <SID>X('shIf',             s:base05, '',       '')
call <SID>X('shOption',         s:base12, '',       '')
call <SID>X('shQuote',          s:base11, '',       '')
call <SID>X('shSet',            s:base09, '',       '')
call <SID>X('shSetList',        s:base10, '',       '')
call <SID>X('shSetOption',      s:base12, '',       '')
call <SID>X('shSpecial',        s:base02, '',       '')
call <SID>X('shStatement',      s:base15, '',       '')
call <SID>X('shVarAssign',      s:base15, '',       '')
call <SID>X('shVariable',       s:base05, '',       '')
"}}}
" Vim "{{{
" ----------------------------------------------------------------------
call <SID>X('vimAutoEvent',   s:base09, '',       '')
call <SID>X('vimBracket',     s:base15, '',       '')
call <SID>X('vimCommand',     s:base15, '',       '')
call <SID>X('vimFTOption',    s:base09, '',       '')
call <SID>X('vimFgBgAttrib',  s:base10, '',       '')
call <SID>X('vimFuncBody',    s:base10, '',       '')
call <SID>X('vimFuncSID',     s:base08, '',       '')
call <SID>X('vimFuncVar',     s:base06, '',       '')
call <SID>X('vimFunction',    s:base13, '',       '')
call <SID>X('vimHiCtermFgBg', s:base08, '',       '')
call <SID>X('vimHiGroup',     s:base09, '',       '')
call <SID>X('vimHiGuiFgBg',   s:base08, '',       '')
call <SID>X('vimHiGuiRgb',    s:base10, '',       '')
call <SID>X('vimHiNmbr',      s:base10, '',       '')
call <SID>X('vimHighlight',   s:base15, '',       '')
call <SID>X('vimIsCommand',   s:base08, '',       '')
call <SID>X('vimLet',         s:base09, '',       '')
call <SID>X('vimMap',         s:base15, '',       '')
call <SID>X('vimMapRhs',      s:base05, '',       '')
call <SID>X('vimNotFunc',     s:base15, '',       '')
call <SID>X('vimNotation',    s:base08, '',       '')
call <SID>X('vimNumber',      s:base08, '',       '')
call <SID>X('vimOperParen',   s:base06, '',       '')
call <SID>X('vimOption',      s:base09, '',       '')
call <SID>X('vimParenSep',    s:base09, '',       '')
call <SID>X('vimSetEqual',    '',       '',       '')
call <SID>X('vimUserFunc',    s:base13, '',       '')
call <SID>X('vimVar',         s:base06, '',       '')
"}}}
" XML/JSX "{{{
" ----------------------------------------------------------------------
call <SID>X('xmlTag',     s:base15, '',       '')
call <SID>X('xmlTagName', s:base15, '',       '')
call <SID>X('xmlEndTag',  s:base15, '',       '')
call <SID>X('xmlAttrib',  s:base08, '',       '')
call <SID>X('xmlEqual',   s:base15, '',       '')
"}}}
"
" PARENS "{{{
function! s:HotParens()
	hi HotlineParens guifg=#ff7f90 gui=bold cterm=bold
	match HotlineParens '[(){}\[\]]'
endfunction
call s:HotParens()
augroup Hotline2
	autocmd!
	autocmd WinEnter * call s:HotParens()
augroup END
"}}}
" vim:fdm=marker:foldlevel=0
