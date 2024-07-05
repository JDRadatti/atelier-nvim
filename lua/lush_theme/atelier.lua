--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local base00 = hsl(265, 10, 10)    -- #19171c
local base01 = hsl(265, 9, 15)     -- #26232a
local base02 = hsl(265, 8, 35)     -- #585260
local base03 = hsl(265, 7, 40)     -- #655f6d
local base04 = hsl(265, 6, 50)     -- #7e7887
local base05 = hsl(265, 5, 55)     -- #8b8792
local base06 = hsl(265, 15, 89)    -- #e2dfe7
local base07 = hsl(265, 25, 94)    -- #efecf4
local base08 = hsl(335, 48, 51)    -- #be4678
local base09 = hsl(15, 48, 45)     -- #aa573c
local base0a = hsl(30, 46, 43)     -- #a06e3b
local base0b = hsl(180, 55, 37)    -- #2a9292
local base0c = hsl(205, 55, 50)    -- #398bc6
local base0d = hsl(230, 65, 60)    -- #576ddb
local base0e = hsl(265, 74, 63)    -- #955ae7
local base0f = hsl(300, 50, 50)    -- #bf40bf
local baseerror = hsl(360, 40, 50) -- #bf40bf
local basegreen = hsl(125, 40, 50) -- #bf40bf
local baseyellow = hsl(60, 40, 50) -- #bf40bf

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
    local sym = injected_functions.sym
    return {
        -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
        -- groups, mostly used for styling UI elements.
        -- Comment them out and add your own properties to override the defaults.
        -- An empty definition `{}` will clear all styling, leaving elements looking
        -- like the 'Normal' group.
        -- To be able to link to a group, it must already be defined, so you may have
        -- to reorder items as you go.
        --
        -- See :h highlight-groups
        --
        ColorColumn { fg = base02 },                                -- Columns set with 'colorcolumn'
        Conceal { fg = base03 },                                    -- Placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor { fg = base07 },                                     -- Character under the cursor
        CurSearch { fg = base0e, bg = base0e.darken(55) },          -- Highlighting a search pattern under the cursor (see 'hlsearch')
        lCursor { fg = base0e },                                    -- Character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM { fg = base0e },                                   -- Like Cursor, but used when in IME mode |CursorIM|
        CursorColumn { bg = base01 },                               -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine { CursorColumn },                                -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory { fg = base0c },                                  -- Directory names (and other special names in listings)
        DiffAdd { fg = basegreen, bg = basegreen.darken(85) },      -- Diff mode: Added line |diff.txt|
        DiffAdded { fg = basegreen, bg = basegreen.darken(85) },    -- Git Fugitive
        DiffChange { fg = baseyellow, bg = baseyellow.darken(85) }, -- Diff mode: Changed line |diff.txt|
        DiffDelete { fg = baseerror, bg = baseerror.darken(85) },   -- Diff mode: Deleted line |diff.txt|
        DiffRemoved { fg = baseerror, bg = baseerror.darken(85) },  -- Git Fugitive
        DiffText { bg = base02 },                                   -- Diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer { fg = base00 },                                -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        -- TermCursor     { }, -- Cursor in a focused terminal
        -- TermCursorNC   { }, -- Cursor in an unfocused terminal
        ErrorMsg { fg = baseerror },            -- Error messages on the command line
        VertSplit { fg = base02 },              -- Column separating vertically split windows
        Folded {},                              -- Line used for closed folds
        FoldColumn {},                          -- 'foldcolumn'
        SignColumn {},                          -- Column where |signs| are displayed
        IncSearch { bg = base0d, fg = base07 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        Substitute { fg = base0a },             -- |:substitute| replacement text highlighting
        LineNr { fg = base02 },                 -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
        -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
        CursorLineNr {},                       -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        CursorLineFold {},                     -- Like FoldColumn when 'cursorline' is set for the cursor line
        -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
        MatchParen { fg = base0e },            -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg { fg = base0d },               -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea { fg = base03 },               -- Area for messages and cmdline
        MsgSeparator {},                       -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg { fg = base0c },               -- |more-prompt|
        NonText { fg = base0c },               -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal { fg = base07 },                -- Normal text
        NormalFloat { fg = base0e },           -- Normal text in floating windows.
        FloatBorder { fg = base01 },           -- Border of floating windows.
        FloatTitle { fg = base0e },            -- Title of floating windows.
        NormalNC { fg = base04 },              -- normal text in non-current windows
        Pmenu { bg = base00 },                 -- Popup menu: Normal item.
        PmenuSel { bg = base01, fg = base07 }, -- Popup menu: Selected item.
        PmenuKind { fg = base0e },             -- Popup menu: Normal item "kind"
        PmenuKindSel { fg = base03 },          -- Popup menu: Selected item "kind"
        PmenuExtra { PmenuSel },               -- Popup menu: Normal item "extra text"
        PmenuExtraSel { PmenuSel },            -- Popup menu: Selected item "extra text"
        PmenuSbar {},                          -- Popup menu: Scrollbar.
        PmenuThumb {},                         -- Popup menu: Thumb of the scrollbar.
        Question { fg = baseerror },           -- |hit-enter| prompt and yes/no questions
        QuickFixLine { fg = base09 },          -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search { fg = base0f },                -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        SpecialKey { fg = base0c },            -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        StatusLine { bg = base00, fg = base00 },          -- Status line of current window
        StatusLineNC { bg = base0e, fg = base00 },        -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine { fg = base02 },                          -- Tab pages line, not active tab page label
        TabLineFill { fg = base04 },                      -- Tab pages line, where there are no labels
        TabLineSel { bg = base0e, fg = base00 },          -- Tab pages line, active tab page label
        Title { fg = base0e },                            -- Titles for output from ":set all", ":autocmd" etc.
        Visual { bg = base01, fg = base0d },              -- Visual mode selection
        VisualNOS { bg = base01, fg = base0e },           -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg { fg = baseerror },                    -- Warning messages
        Whitespace {},                                    -- "nbsp", "space", "tab" and "trail" in 'listchars'
        -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
        WildMenu { bg = base08.darken(55), fg = base08 }, -- Current match in 'wildmenu' completion
        -- WinBar         { }, -- Window bar of current window
        -- WinBarNC       { }, -- Window bar of not-current windows

        -- Common vim syntax groups used for all kinds of code and markup.
        -- Commented-out groups should chain up to their preferred (*) group
        -- by default.
        --
        -- See :h group-name
        --
        -- Uncomment and edit if you want more specific syntax highlighting.

        Comment { fg = base03 },  -- Any comment

        Constant { fg = base09 }, -- (*) Any constant
        String { fg = base0b },   --   A string constant: "this is a string"
        -- Character      { }, --   A character constant: 'c', '\n'
        -- Number         { }, --   A number constant: 234, 0xff
        -- Boolean        { }, --   A boolean constant: TRUE, false
        -- Float          { }, --   A floating point constant: 2.3e10

        Identifier { fg = base06 }, -- (*) Any variable name
        Function { fg = base0c },   --   Function name (also: methods for classes)

        Statement { fg = base0e },  -- (*) Any statement
        -- Conditional    { }, --   if, then, else, endif, switch, etc.
        -- Repeat         { }, --   for, do, while, etc.
        -- Label          { }, --   case, default, etc.
        Operator { fg = base05 }, --   "sizeof", "+", "*", etc.
        -- Keyword        { }, --   any other keyword
        -- Exception      { }, --   try, catch, throw

        PreProc { fg = base0c }, -- (*) Generic Preprocessor
        -- Include        { }, --   Preprocessor #include
        -- Define         { }, --   Preprocessor #define
        -- Macro          { }, --   Same as Define
        -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

        Type { fg = base0a }, -- (*) int, long, char, etc.
        -- StorageClass   { }, --   static, register, volatile, etc.
        -- Structure      { }, --   struct, union, enum, etc.
        -- Typedef        { }, --   A typedef

        Special { fg = base04 }, -- (*) Any special symbol
        -- SpecialChar    { }, --   Special character in a constant
        -- Tag            { }, --   You can use CTRL-] on this
        Delimiter { fg = base06 }, --   Character that needs attention
        -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
        -- Debug          { }, --   Debugging statements

        Underlined { fg = base0c, gui = "underline" }, -- Text that stands out, HTML links
        -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
        Error { fg = baseerror },                      -- Any erroneous construct
        Todo { fg = base08 },                          -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        -- Dap UI Highlight Groups
        DapUINormal { Normal },
        DapUIVariable { Normal },
        DapUIScope { fg = base0c },
        DapUIType { fg = base0a },
        DapUIValue { Normal },
        DapUIModifiedValue { fg = base0f, gui = "bold" },
        DapUIDecoration { fg = base0b },
        DapUIThread { fg = basegreen },
        DapUIStoppedThread { fg = base0c },
        DapUIFrameName { Normal },
        DapUISource { fg = base0f },
        DapUILineNumber { fg = base03 },
        DapUIFloatNormal { NormalFloat },
        DapUIFloatBorder { fg = base03 },
        DapUIWatchesEmpty { fg = base08 },
        DapUIWatchesValue { fg = base0b },
        DapUIWatchesError { fg = baseerror },
        DapUIBreakpointsPath { fg = base0c },
        DapUIBreakpointsInfo { fg = base0d },
        DapUIBreakpointsCurrentLine { fg = base0d, gui = "bold" },
        DapUIBreakpointsLine { DapUILineNumber },
        DapUIBreakpointsDisabledLine { fg = "#424242" },
        DapUICurrentFrameName { DapUIBreakpointsCurrentLine },
        DapUIStepOver { fg = base0d },
        DapUIStepInto { fg = base0d },
        DapUIStepBack { fg = base0d },
        DapUIStepOut { fg = base0d },
        DapUIStop { fg = baseerror },
        DapUIPlayPause { fg = basegreen },
        DapUIRestart { fg = baseyellow },
        DapUIUnavailable { fg = "#424242" },
        DapUIWinSelect { fg = "#298364" },

        -- Telescope Highlight groups
        TelescopeBorder { fg = base02 },


        -- These groups are for the native LSP client and diagnostic system. Some
        -- other LSP clients may use these groups, or use their own. Consult your
        -- LSP client's documentation.

        -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
        --
        -- LspReferenceText            { } , -- Used for highlighting "text" references
        -- LspReferenceRead            { } , -- Used for highlighting "read" references
        -- LspReferenceWrite           { } , -- Used for highlighting "write" references
        -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
        -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
        -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

        -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
        --
        DiagnosticError { fg = baseerror }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticWarn { fg = base0a },     -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticInfo { fg = base0d },     -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticOk { fg = base0c },       -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
        -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
        -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
        -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
        -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
        -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
        -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
        -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
        -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
        -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
        -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
        -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
        -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
        -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
        -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
        -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
        -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

        -- Tree-Sitter syntax groups.
        --
        -- See :h treesitter-highlight-groups, some groups may not be listed,
        -- submit a PR fix to lush-template!
        --
        -- Tree-Sitter groups are defined with an "@" symbol, which must be
        -- specially handled to be valid lua code, we do this via the special
        -- sym function. The following are all valid ways to call the sym function,
        -- for more details see https://www.lua.org/pil/5.html
        --
        -- sym("@text.literal")
        -- sym('@text.literal')
        -- sym"@text.literal"
        -- sym'@text.literal'
        --
        -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

        -- sym"@text.literal"      { }, -- Comment
        -- sym"@text.reference"    { }, -- Identifier
        -- sym"@text.title"        { }, -- Title
        -- sym"@text.uri"          { }, -- Underlined
        -- sym"@text.underline"    { }, -- Underlined
        -- sym"@text.todo"         { }, -- Todo
        -- sym"@comment"           { }, -- Comment
        -- sym"@punctuation"       { }, -- Delimiter
        -- sym"@constant"          { }, -- Constant
        -- sym"@constant.builtin"  { }, -- Special
        -- sym"@constant.macro"    { }, -- Define
        -- sym"@define"            { }, -- Define
        -- sym"@macro"             { }, -- Macro
        -- sym"@string"            { }, -- String
        -- sym"@string.escape"     { }, -- SpecialChar
        -- sym"@string.special"    { }, -- SpecialChar
        -- sym"@character"         { }, -- Character
        -- sym"@character.special" { }, -- SpecialChar
        -- sym"@number"            { }, -- Number
        -- sym"@boolean"           { }, -- Boolean
        -- sym"@float"             { }, -- Float
        -- sym"@function"          { }, -- Function
        -- sym"@function.builtin"  { }, -- Special
        -- sym"@function.macro"    { }, -- Macro
        -- sym"@parameter"         { }, -- Identifier
        -- sym"@method"            { }, -- Function
        -- sym"@field"             { }, -- Identifier
        -- sym"@property"          { }, -- Identifier
        -- sym"@constructor"       { }, -- Special
        -- sym"@conditional"       { }, -- Conditional
        -- sym"@repeat"            { }, -- Repeat
        -- sym"@label"             { }, -- Label
        -- sym"@operator"          { }, -- Operator
        -- sym"@keyword"           { }, -- Keyword
        -- sym"@exception"         { }, -- Exception
        -- sym"@variable"          { }, -- Identifier
        -- sym"@type"              { }, -- Type
        -- sym"@type.definition"   { }, -- Typedef
        -- sym"@storageclass"      { }, -- StorageClass
        -- sym"@structure"         { }, -- Structure
        -- sym"@namespace"         { }, -- Identifier
        -- sym"@include"           { }, -- Include
        -- sym"@preproc"           { }, -- PreProc
        -- sym"@debug"             { }, -- Debug
        -- sym"@tag"               { }, -- Tag
    }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
