return {
  'j-hui/fidget.nvim',
  opts = {
    progress = {
      suppress_on_insert = false,
      ignore_done_already = true,
      display = {
        render_limit = 1, -- show at most one progress message
        done_ttl = 1, -- clear quickly when finished
        progress_icon = { 'line' }, -- tiny spinner
        done_icon = '✔',
        format_message = function(msg)
          return (msg.message or msg.title or ''):gsub('\n', ' ')
        end,
        format_annote = function()
          return ''
        end, -- no annotation
        format_group_name = function()
          return ''
        end, -- no LSP server name
      },
    },
    notification = {
      override_vim_notify = true, -- stop jdtls default popups
      view = {
        stack_upwards = false,
        render_message = function(msg, cnt)
          local s = cnt > 1 and ('(' .. cnt .. 'x) ' .. msg) or msg
          return s:gsub('\n', ' ')
        end,
      },
      window = {
        normal_hl = 'NormalFloat', -- use Comment highlight (no bg if your theme has none)
        winblend = 0, -- transparent background
        border = 'none',
        zindex = 45,
        align = 'bottom', -- bottom of editor
        relative = 'editor',
        max_height = 2, -- one line
        max_width = 0, -- natural width
        y_padding = 0,
        x_padding = 1,
      },
    },
  },
}
