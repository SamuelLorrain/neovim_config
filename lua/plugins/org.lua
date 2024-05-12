return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
        require('orgmode').setup({
            org_agenda_files = '~/Orgmode/**/*',
            org_default_notes_file = '~/Orgmode/refile.org',
            org_startup_folded = 'showeverything',
            org_capture_templates = {
                t = { description = 'Todo', template = '* TODO %?\n %U'},
                e = { description = 'Event', template = '* %?\n SCHEDULED: %T'},
                x = { description = "Todo from clipboard", template = '* TODO %?\n %x\n %U'},
                y = { description = "Note from clipboard", template = '* %?\n %x\n %u'}
            }
        })
  end,
}
