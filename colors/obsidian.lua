-- Define the core Obsidian color palette
local colors = {
	bg = "#1e1e1e",
	fg = "#d4d4d4",
	red = "#f44747",
	orange = "#ce9178",
	yellow = "#dcdcaa",
	green = "#608b4e",
	cyan = "#4ec9b0",
	blue = "#569cd6",
	purple = "#8a5cf5",
	comment = "#636da6",
	gutter = "#2d2d2d",
	line = "#333333",
	cursorline = "#2a2d2e",
	selection = "#264f78",
	visual = "#04395e",
}

-- Apply highlights
local function set_hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

set_hl("Normal", { fg = colors.fg, bg = colors.bg })
set_hl("Comment", { fg = colors.comment, italic = true })
set_hl("CursorLine", { bg = colors.cursorline })
set_hl("Visual", { bg = colors.visual })
set_hl("LineNr", { fg = colors.gutter })
set_hl("CursorLineNr", { fg = colors.yellow, bold = true })
set_hl("StatusLine", { fg = colors.fg, bg = colors.line })
set_hl("VertSplit", { fg = colors.line })

-- Syntax highlighting (treesitter and legacy)
set_hl("String", { fg = colors.orange })
set_hl("Function", { fg = colors.blue })
set_hl("Identifier", { fg = colors.cyan })
set_hl("Keyword", { fg = colors.purple, bold = true })
set_hl("Type", { fg = colors.yellow })
set_hl("Constant", { fg = colors.green })
set_hl("Number", { fg = colors.green })
set_hl("Boolean", { fg = colors.green })

set_hl("@markup.link.url", { fg = colors.purple })
set_hl("@keyword.directive.markdown", { link = "Comment" })
set_hl("@markup.link.label.markdown_inline", { fg = colors.purple })

-- Heading gradient from Obsidian purple to light complement
local heading_colors = {
	"#8a5cf5", -- H1
	"#a170f7", -- H2
	"#b584f9", -- H3
	"#c998fb", -- H4
	"#ddaafc", -- H5
	"#f2bdfd", -- H6
}

for i, color in ipairs(heading_colors) do
	vim.api.nvim_set_hl(0, "@markup.heading." .. i .. ".markdown", {
		fg = color,
		bold = true,
	})
end
