local colors = {
    -- content here will not be touched
    -- PATCH_OPEN
Normal = {fg = "#EFECF4"},
DapUIFrameName = {link = "Normal"},
DapUINormal = {link = "Normal"},
DapUIValue = {link = "Normal"},
DapUIVariable = {link = "Normal"},
ColorColumn = {fg = "#585260"},
Comment = {fg = "#655F6D"},
Conceal = {fg = "#655F6D"},
Constant = {fg = "#AA573C"},
CurSearch = {fg = "#955BE6", bg = "#3F137C"},
Cursor = {fg = "#EFECF4"},
CursorColumn = {bg = "#26232A"},
CursorLine = {link = "CursorColumn"},
CursorIM = {fg = "#955BE6"},
CursorLineFold = {},
CursorLineNr = {},
DapUIBreakpointsCurrentLine = {fg = "#576DDB", bold = true},
DapUICurrentFrameName = {link = "DapUIBreakpointsCurrentLine"},
DapUIBreakpointsDisabledLine = {fg = "#424242"},
DapUIBreakpointsInfo = {fg = "#576DDB"},
DapUIBreakpointsPath = {fg = "#398BC6"},
DapUIDecoration = {fg = "#2A9292"},
DapUIFloatBorder = {fg = "#655F6D"},
DapUILineNumber = {fg = "#655F6D"},
DapUIBreakpointsLine = {link = "DapUILineNumber"},
DapUIModifiedValue = {fg = "#BF40BF", bold = true},
DapUIPlayPause = {fg = "#4DB355"},
DapUIRestart = {fg = "#B2B34D"},
DapUIScope = {fg = "#398BC6"},
DapUISource = {fg = "#BF40BF"},
DapUIStepBack = {fg = "#576DDB"},
DapUIStepInto = {fg = "#576DDB"},
DapUIStepOut = {fg = "#576DDB"},
DapUIStepOver = {fg = "#576DDB"},
DapUIStop = {fg = "#B34D4D"},
DapUIStoppedThread = {fg = "#398BC6"},
DapUIThread = {fg = "#4DB355"},
DapUIType = {fg = "#A06E3B"},
DapUIUnavailable = {fg = "#424242"},
DapUIWatchesEmpty = {fg = "#BE4678"},
DapUIWatchesError = {fg = "#B34D4D"},
DapUIWatchesValue = {fg = "#2A9292"},
DapUIWinSelect = {fg = "#298364"},
Delimiter = {fg = "#E2DFE7"},
DiagnosticError = {fg = "#B34D4D"},
DiagnosticInfo = {fg = "#576DDB"},
DiagnosticOk = {fg = "#398BC6"},
DiagnosticWarn = {fg = "#A06E3B"},
DiffAdd = {fg = "#4DB355", bg = "#0C1D0E"},
DiffAdded = {fg = "#4DB355", bg = "#0C1D0E"},
DiffChange = {fg = "#B2B34D", bg = "#1D1D0C"},
DiffDelete = {fg = "#B34D4D", bg = "#1D0C0C"},
DiffRemoved = {fg = "#B34D4D", bg = "#1D0C0C"},
DiffText = {bg = "#585260"},
Directory = {fg = "#398BC6"},
EndOfBuffer = {fg = "#19171C"},
Error = {fg = "#B34D4D"},
ErrorMsg = {fg = "#B34D4D"},
FloatBorder = {fg = "#26232A"},
FloatTitle = {fg = "#955BE6"},
FoldColumn = {},
Folded = {},
Function = {fg = "#398BC6"},
Identifier = {fg = "#E2DFE7"},
IncSearch = {fg = "#EFECF4", bg = "#576DDB"},
LineNr = {fg = "#585260"},
MatchParen = {fg = "#955BE6"},
ModeMsg = {fg = "#576DDB"},
MoreMsg = {fg = "#398BC6"},
MsgArea = {fg = "#655F6D"},
MsgSeparator = {},
NonText = {fg = "#398BC6"},
NormalFloat = {fg = "#955BE6"},
DapUIFloatNormal = {link = "NormalFloat"},
NormalNC = {fg = "#7E7887"},
Operator = {fg = "#8B8792"},
Pmenu = {bg = "#19171C"},
PmenuKind = {fg = "#955BE6"},
PmenuKindSel = {fg = "#655F6D"},
PmenuSbar = {},
PmenuSel = {fg = "#EFECF4", bg = "#26232A"},
PmenuExtra = {link = "PmenuSel"},
PmenuExtraSel = {link = "PmenuSel"},
PmenuThumb = {},
PreProc = {fg = "#398BC6"},
Question = {fg = "#B34D4D"},
QuickFixLine = {fg = "#AA573C"},
Search = {fg = "#BF40BF"},
SignColumn = {},
Special = {fg = "#7E7887"},
SpecialKey = {fg = "#398BC6"},
Statement = {fg = "#955BE6"},
StatusLine = {fg = "#655F6D"},
StatusLineNC = {fg = "#19171C"},
String = {fg = "#2A9292"},
Substitute = {fg = "#A06E3B"},
TabLine = {fg = "#585260"},
TabLineFill = {fg = "#7E7887"},
TabLineSel = {fg = "#19171C", bg = "#955BE6"},
TelescopeBorder = {fg = "#585260"},
Title = {fg = "#955BE6"},
Todo = {fg = "#BE4678"},
Type = {fg = "#A06E3B"},
Underlined = {fg = "#398BC6", underline = true},
VertSplit = {fg = "#585260"},
Visual = {fg = "#576DDB", bg = "#26232A"},
VisualNOS = {fg = "#955BE6", bg = "#26232A"},
WarningMsg = {fg = "#B34D4D"},
Whitespace = {},
WildMenu = {fg = "#BE4678", bg = "#571E36"},
lCursor = {fg = "#955BE6"},
    -- PATCH_CLOSE
    -- content here will not be touched
}

vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='atelier-cave'")

-- apply highlight groups
for group, attrs in pairs(colors) do
    vim.api.nvim_set_hl(0, group, attrs)
end
