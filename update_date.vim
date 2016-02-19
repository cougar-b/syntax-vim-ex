:" Update the date of following line in vim.vim.rc.
:"     '" Last Change:  '
:"
:language C
:silent new vim.vim.rc
:let pat = '^"\s*Last\s*Change:\s\+'
:let lnum = search(pat, 'We', 10)
:if lnum > 0
:   exec 'norm! lD"=strftime("%b %d, %Y")' . "\rp"
:   silent update
:endif
:quitall!
:" vim:ts=4 sw=4 et
