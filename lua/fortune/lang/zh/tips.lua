return {
  short = {
    {
      "<number>G 跳转到该行号对应的行",
      "",
      "- Neovim",
    },
    {
      "`:%s/./&/gn` 统计缓冲区中的字符数",
      "",
      "- Neovim",
    },
    {
      "`:%s/\\i\\+/&/gn` 统计缓冲区中的单词数",
      "",
      "- Neovim",
    },
    {
      "`:%s/^//n` 统计缓冲区中的行数",
      "",
      "- Neovim",
    },
    {
      "将 Caps Lock 映射到 Escape 是 Vim 用户的常见做法",
      "",
      "- Neovim",
    },
    {
      '使用 `"_` 将文本复制到黑洞寄存器',
      "",
      "- Neovim",
    },
    {
      "使用 `:help g` 学习 g 命令的强大用法",
      "",
      "- Neovim",
    },
    {
      "如果文本换行，使用 gk 和 gj 上下移动",
      "",
      "- Neovim",
    },
    {
      "使用 CTRL-A 和 CTRL-X 增加和减少数字",
      "",
      "- Neovim",
    },
    {
      "您可以使用 Vimscript 函数替换文本 `%s/replace/\\=1+1`",
      "",
      "- Neovim",
    },
    {
      "q: 打开最近的命令历史记录",
      "",
      "- Neovim",
    },
    {
      "使用 `:sort` 对缓冲区中的行进行排序",
      "",
      "- Neovim",
    },
    {
      "使用 `:grep` 在多个文件中搜索模式",
      "",
      "- Neovim",
    },
    {
      "使用 `:w !sudo tee %` 保存需要 root 权限的文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:sort u` 删除缓冲区中的重复行",
      "",
      "- Neovim",
    },
    {
      "使用 `:g/pattern/d` 删除包含特定模式的行",
      "",
      "- Neovim",
    },
    {
      "使用 `:%!xxd` 将文件转换为十六进制",
      "",
      "- Neovim",
    },
    {
      "使用 `:g/^/m0` 反转缓冲区中行的顺序",
      "",
      "- Neovim",
    },
    {
      "使用 `:set list` 在缓冲区中显示空白字符",
      "",
      "- Neovim",
    },
    {
      "使用 `:set spell` 启用拼写检查",
      "",
      "- Neovim",
    },
    {
      "使用 `:set number` 显示行号",
      "",
      "- Neovim",
    },
    {
      "使用 `:tabnew` 打开新标签页",
      "",
      "- Neovim",
    },
    {
      "使用 `:tabnext` 或 `gt` 切换到下一个标签页",
      "",
      "- Neovim",
    },
    {
      "使用 `:tabprevious` 或 `gT` 切换到上一个标签页",
      "",
      "- Neovim",
    },
    {
      "使用 `:tabclose` 关闭当前标签页",
      "",
      "- Neovim",
    },
    {
      "使用 `:vsp filename` 在垂直分屏中打开文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:sp filename` 在水平分屏中打开文件",
      "",
      "- Neovim",
    },
    {
      "使用 `Ctrl-W h/j/k/l` 在分屏之间导航",
      "",
      "- Neovim",
    },
    {
      "使用 `:resize +/-n` 调整当前分屏的高度",
      "",
      "- Neovim",
    },
    {
      "使用 `:vertical resize +/-n` 调整当前分屏的宽度",
      "",
      "- Neovim",
    },
    {
      "使用 `:sview` 以只读模式打开文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:setlocal spell` 为当前缓冲区启用拼写检查",
      "",
      "- Neovim",
    },
    {
      "使用 `:make` 运行 make 命令并在 quickfix 列表中显示错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:cnext` 和 `:cprev` 在 quickfix 列表项之间导航",
      "",
      "- Neovim",
    },
    {
      "使用 `:cw` 打开 quickfix 列表窗口",
      "",
      "- Neovim",
    },
    {
      "使用 `:colder` 和 `:cnewer` 导航到更旧和更新的 quickfix 列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:marks` 列出所有当前标记",
      "",
      "- Neovim",
    },
    {
      "使用 `:delmarks a b c` 删除标记 a、b 和 c",
      "",
      "- Neovim",
    },
    {
      "使用 `:make!` 强制执行 make 命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:noautocmd w` 写入文件而不触发 autocmd 事件",
      "",
      "- Neovim",
    },
    {
      "使用 `:checktime` 检查文件是否在 Neovim 外部被修改",
      "",
      "- Neovim",
    },
    {
      "使用 `:e!` 从磁盘重新加载当前文件，放弃更改",
      "",
      "- Neovim",
    },
    {
      "使用 `:registers` 显示所有寄存器的内容",
      "",
      "- Neovim",
    },
    {
      '使用 `"*y` 将文本复制到系统剪贴板',
      "",
      "- Neovim",
    },
    {
      '使用 `"*p` 从系统剪贴板粘贴',
      "",
      "- Neovim",
    },
    {
      "使用 `:TOhtml` 将当前缓冲区转换为 HTML",
      "",
      "- Neovim",
    },
    {
      "使用 `:TOhtml` 后跟文件名将 HTML 输出保存到文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:registers` 后跟寄存器名称显示特定寄存器的内容",
      "",
      "- Neovim",
    },
    {
      '使用 `"+yy` 将一行复制到系统剪贴板',
      "",
      "- Neovim",
    },
    {
      '使用 `"+p` 从系统剪贴板粘贴',
      "",
      "- Neovim",
    },
    {
      "使用 `:write` 或 `:w` 保存更改到文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:edit` 或 `:e` 打开文件进行编辑",
      "",
      "- Neovim",
    },
    {
      "使用 `:q` 退出 Neovim",
      "",
      "- Neovim",
    },
    {
      "使用 `:q!` 强制退出 Neovim 而不保存更改",
      "",
      "- Neovim",
    },
    {
      "使用 `:wq` 保存更改并退出",
      "",
      "- Neovim",
    },
    {
      "使用 `:ls` 列出所有打开的缓冲区",
      "",
      "- Neovim",
    },
    {
      "使用 `:bnext` 或 `:bn` 切换到下一个缓冲区",
      "",
      "- Neovim",
    },
    {
      "使用 `:bprevious` 或 `:bp` 切换到上一个缓冲区",
      "",
      "- Neovim",
    },
    {
      "使用 `:bdelete` 或 `:bd` 删除缓冲区",
      "",
      "- Neovim",
    },
    {
      "使用 `:cd` 后跟目录路径更改当前目录",
      "",
      "- Neovim",
    },
    {
      "使用 `:pwd` 显示当前工作目录",
      "",
      "- Neovim",
    },
    {
      "使用 `:r` 后跟文件名在当前光标位置插入文件内容",
      "",
      "- Neovim",
    },
    {
      "使用 `:read` 后跟 shell 命令在当前光标位置插入命令输出",
      "",
      "- Neovim",
    },
    {
      "使用 `:source` 后跟文件路径执行 Vimscript 文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:history` 显示命令行历史记录",
      "",
      "- Neovim",
    },
    {
      "使用 `:ju` 或 `:jumps` 显示跳转位置列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:changes` 显示最近更改列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:checkhealth` 诊断 Neovim 设置中的常见问题",
      "",
      "- Neovim",
    },
    {
      "使用 `:scriptnames` 显示已加载的脚本列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:set option?` 显示选项的当前值",
      "",
      "- Neovim",
    },
    {
      "使用 `:echo &option` 显示选项的当前值",
      "",
      "- Neovim",
    },
    {
      "使用 `:verbose set option?` 查找选项上次设置的位置",
      "",
      "- Neovim",
    },
    {
      "使用 `:redir @* | silent set option? | redir END` 将 `:set option?` 的输出复制到剪贴板",
      "",
      "- Neovim",
    },
    {
      "使用 `:redir @* | silent echo &option | redir END` 将选项值复制到剪贴板",
      "",
      "- Neovim",
    },
    {
      "使用 `:redir @* | silent verbose set option? | redir END` 将 `:set option?` 的详细输出复制到剪贴板",
      "",
      "- Neovim",
    },
    {
      "使用 `:terminal` 打开终端窗口",
      "",
      "- Neovim",
    },
    {
      "使用 `:term` 作为 `:terminal` 的别名",
      "",
      "- Neovim",
    },
    {
      "在终端模式下使用 `Ctrl-W` 后跟 `N` 切换到普通模式",
      "",
      "- Neovim",
    },
    {
      "使用 `Ctrl-W` 后跟 `C` 退出终端模式",
      "",
      "- Neovim",
    },
    {
      "使用 `:sp term://$SHELL` 在水平分屏中打开终端",
      "",
      "- Neovim",
    },
    {
      "使用 `:vsp term://$SHELL` 在垂直分屏中打开终端",
      "",
      "- Neovim",
    },
    {
      "使用 `:termedit` 打开包含文件内容的终端缓冲区",
      "",
      "- Neovim",
    },
    {
      "使用 `:termfind` 打开包含文件内容的终端缓冲区，并将光标定位到模式的第一个匹配项",
      "",
      "- Neovim",
    },
    {
      "使用 `:grep` 后跟搜索模式和文件模式在文件中搜索文本",
      "",
      "- Neovim",
    },
    {
      "使用 `:lgrep` 使用位置列表执行搜索",
      "",
      "- Neovim",
    },
    {
      "使用 `:vimgrep` 使用 quickfix 列表执行搜索",
      "",
      "- Neovim",
    },
    {
      "使用 `:lvimgrep` 同时使用位置列表和 quickfix 列表执行搜索",
      "",
      "- Neovim",
    },
    {
      "使用 `:make` 后跟程序名编译程序",
      "",
      "- Neovim",
    },
    {
      "使用 `:make` 后跟命令运行程序",
      "",
      "- Neovim",
    },
    {
      "使用 `:compiler` 后跟编译器名设置编译器",
      "",
      "- Neovim",
    },
    {
      "使用 `:lmake` 运行 make 并用错误填充位置列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:lopen` 打开位置列表窗口",
      "",
      "- Neovim",
    },
    {
      "使用 `:lclose` 关闭位置列表窗口",
      "",
      "- Neovim",
    },
    {
      "使用 `:lfirst` 移动到位置列表中的第一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:llast` 移动到位置列表中的最后一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:lnext` 移动到位置列表中的下一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:lprevious` 移动到位置列表中的上一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:lopen` 后跟数字打开位置列表窗口并跳转到指定错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:ldo` 对位置列表中的每个错误执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:cdo` 对 quickfix 列表中的每个错误执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:Cfilter` 过滤 quickfix 列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:cfdo` 对 quickfix 列表中的每个错误执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:Cfilter!` 清除 quickfix 列表过滤器",
      "",
      "- Neovim",
    },
    {
      "使用 `:sort` 后跟范围对指定范围内的行进行排序",
      "",
      "- Neovim",
    },
    {
      "使用 `:sort u` 后跟范围删除指定范围内的重复行",
      "",
      "- Neovim",
    },
    {
      "使用 `:g` 后跟模式和命令对匹配模式的行执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:g!` 后跟模式和命令对不匹配模式的行执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:g//m$` 将所有匹配模式的行移动到文件末尾",
      "",
      "- Neovim",
    },
    {
      "使用 `:global` 作为 `:g` 的别名",
      "",
      "- Neovim",
    },
    {
      "使用 `:vglobal` 对不匹配模式的行执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:normal` 后跟按键序列执行普通模式命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:helpgrep` 搜索包含特定关键字的帮助主题",
      "",
      "- Neovim",
    },
    {
      "使用 `:set listchars` 配置用于表示不可见字符的字符",
      "",
      "- Neovim",
    },
    {
      "使用 `:echo $VIMRUNTIME` 显示 Vim 运行时目录的位置",
      "",
      "- Neovim",
    },
    {
      "使用 `:echo $VIM` 显示 Vim 配置目录的位置",
      "",
      "- Neovim",
    },
    {
      "使用 `:checkhealth` 诊断 Neovim 设置中的常见问题",
      "",
      "- Neovim",
    },
    {
      "使用 `:terminal` 打开终端窗口",
      "",
      "- Neovim",
    },
    {
      "使用 `:term` 作为 `:terminal` 的别名",
      "",
      "- Neovim",
    },
    {
      "在终端模式下使用 `Ctrl-W` 后跟 `N` 切换到普通模式",
      "",
      "- Neovim",
    },
    {
      "使用 `Ctrl-W` 后跟 `C` 退出终端模式",
      "",
      "- Neovim",
    },
    {
      "使用 `:sp term://$SHELL` 在水平分屏中打开终端",
      "",
      "- Neovim",
    },
    {
      "使用 `:vsp term://$SHELL` 在垂直分屏中打开终端",
      "",
      "- Neovim",
    },
    {
      "使用 `:termedit` 打开包含文件内容的终端缓冲区",
      "",
      "- Neovim",
    },
    {
      "使用 `:termfind` 打开包含文件内容的终端缓冲区，并将光标定位到模式的第一个匹配项",
      "",
      "- Neovim",
    },
    {
      "使用 `:grep` 后跟搜索模式和文件模式在文件中搜索文本",
      "",
      "- Neovim",
    },
    {
      "使用 `:lgrep` 使用位置列表执行搜索",
      "",
      "- Neovim",
    },
    {
      "使用 `:vimgrep` 使用 quickfix 列表执行搜索",
      "",
      "- Neovim",
    },
    {
      "使用 `:lvimgrep` 同时使用位置列表和 quickfix 列表执行搜索",
      "",
      "- Neovim",
    },
    {
      "使用 `:make` 后跟程序名编译程序",
      "",
      "- Neovim",
    },
    {
      "使用 `:make` 后跟命令运行程序",
      "",
      "- Neovim",
    },
    {
      "使用 `:compiler` 后跟编译器名设置编译器",
      "",
      "- Neovim",
    },
    {
      "使用 `:lmake` 运行 make 并用错误填充位置列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:lopen` 打开位置列表窗口",
      "",
      "- Neovim",
    },
    {
      "使用 `:lclose` 关闭位置列表窗口",
      "",
      "- Neovim",
    },
    {
      "使用 `:lfirst` 移动到位置列表中的第一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:llast` 移动到位置列表中的最后一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:lnext` 移动到位置列表中的下一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:lprevious` 移动到位置列表中的上一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:lopen` 后跟数字打开位置列表窗口并跳转到指定错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:ldo` 对位置列表中的每个错误执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:cdo` 对 quickfix 列表中的每个错误执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:Cfilter` 过滤 quickfix 列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:cfdo` 对 quickfix 列表中的每个错误执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:Cfilter!` 清除 quickfix 列表过滤器",
      "",
      "- Neovim",
    },
    {
      "使用 `:sort` 后跟范围对指定范围内的行进行排序",
      "",
      "- Neovim",
    },
    {
      "使用 `:sort u` 后跟范围删除指定范围内的重复行",
      "",
      "- Neovim",
    },
    {
      "使用 `:g` 后跟模式和命令对匹配模式的行执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:g!` 后跟模式和命令对不匹配模式的行执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:g//m$` 将所有匹配模式的行移动到文件末尾",
      "",
      "- Neovim",
    },
    {
      "使用 `:global` 作为 `:g` 的别名",
      "",
      "- Neovim",
    },
    {
      "使用 `:vglobal` 对不匹配模式的行执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:normal` 后跟按键序列执行普通模式命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:helpgrep` 搜索包含特定关键字的帮助主题",
      "",
      "- Neovim",
    },
    {
      "使用 `:set listchars` 配置用于表示不可见字符的字符",
      "",
      "- Neovim",
    },
    {
      "使用 `:echo $VIMRUNTIME` 显示 Vim 运行时目录的位置",
      "",
      "- Neovim",
    },
    {
      "使用 `:echo $VIM` 显示 Vim 配置目录的位置",
      "",
      "- Neovim",
    },
    {
      "使用 `:checkhealth` 诊断 Neovim 设置中的常见问题",
      "",
      "- Neovim",
    },
  },
  long = {
    {
      "将 Caps Lock 映射到 Escape 是 Vim 用户的常见做法",
      "",
      "- Neovim",
    },
    {
      '使用 `"_` 将文本复制到黑洞寄存器',
      "",
      "- Neovim",
    },
    {
      "使用 `:help g` 学习 g 命令的强大用法",
      "",
      "- Neovim",
    },
    {
      "如果文本换行，使用 gk 和 gj 上下移动",
      "",
      "- Neovim",
    },
    {
      "使用 CTRL-A 和 CTRL-X 增加和减少数字",
      "",
      "- Neovim",
    },
    {
      "您可以使用 Vimscript 函数替换文本 `%s/replace/\\=1+1`",
      "",
      "- Neovim",
    },
    {
      "q: 打开最近的命令历史记录",
      "",
      "- Neovim",
    },
    {
      "使用 `:sort` 对缓冲区中的行进行排序",
      "",
      "- Neovim",
    },
    {
      "使用 `:grep` 在多个文件中搜索模式",
      "",
      "- Neovim",
    },
    {
      "使用 `:w !sudo tee %` 保存需要 root 权限的文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:sort u` 删除缓冲区中的重复行",
      "",
      "- Neovim",
    },
    {
      "使用 `:g/pattern/d` 删除包含特定模式的行",
      "",
      "- Neovim",
    },
    {
      "使用 `:%!xxd` 将文件转换为十六进制",
      "",
      "- Neovim",
    },
    {
      "使用 `:g/^/m0` 反转缓冲区中行的顺序",
      "",
      "- Neovim",
    },
    {
      "使用 `:set list` 在缓冲区中显示空白字符",
      "",
      "- Neovim",
    },
    {
      "使用 `:set spell` 启用拼写检查",
      "",
      "- Neovim",
    },
    {
      "使用 `:set number` 显示行号",
      "",
      "- Neovim",
    },
    {
      "使用 `:tabnew` 打开新标签页",
      "",
      "- Neovim",
    },
    {
      "使用 `:tabnext` 或 `gt` 切换到下一个标签页",
      "",
      "- Neovim",
    },
    {
      "使用 `:tabprevious` 或 `gT` 切换到上一个标签页",
      "",
      "- Neovim",
    },
    {
      "使用 `:tabclose` 关闭当前标签页",
      "",
      "- Neovim",
    },
    {
      "使用 `:vsp filename` 在垂直分屏中打开文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:sp filename` 在水平分屏中打开文件",
      "",
      "- Neovim",
    },
    {
      "使用 `Ctrl-W h/j/k/l` 在分屏之间导航",
      "",
      "- Neovim",
    },
    {
      "使用 `:resize +/-n` 调整当前分屏的高度",
      "",
      "- Neovim",
    },
    {
      "使用 `:vertical resize +/-n` 调整当前分屏的宽度",
      "",
      "- Neovim",
    },
    {
      "使用 `:sview` 以只读模式打开文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:setlocal spell` 为当前缓冲区启用拼写检查",
      "",
      "- Neovim",
    },
    {
      "使用 `:make` 运行 make 命令并在 quickfix 列表中显示错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:cnext` 和 `:cprev` 在 quickfix 列表项之间导航",
      "",
      "- Neovim",
    },
    {
      "使用 `:cw` 打开 quickfix 列表窗口",
      "",
      "- Neovim",
    },
    {
      "使用 `:colder` 和 `:cnewer` 导航到更旧和更新的 quickfix 列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:marks` 列出所有当前标记",
      "",
      "- Neovim",
    },
    {
      "使用 `:delmarks a b c` 删除标记 a、b 和 c",
      "",
      "- Neovim",
    },
    {
      "使用 `:make!` 强制执行 make 命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:noautocmd w` 写入文件而不触发 autocmd 事件",
      "",
      "- Neovim",
    },
    {
      "使用 `:checktime` 检查文件是否在 Neovim 外部被修改",
      "",
      "- Neovim",
    },
    {
      "使用 `:e!` 从磁盘重新加载当前文件，放弃更改",
      "",
      "- Neovim",
    },
    {
      "使用 `:registers` 显示所有寄存器的内容",
      "",
      "- Neovim",
    },
    {
      '使用 `"*y` 将文本复制到系统剪贴板',
      "",
      "- Neovim",
    },
    {
      '使用 `"*p` 从系统剪贴板粘贴',
      "",
      "- Neovim",
    },
    {
      "使用 `:TOhtml` 将当前缓冲区转换为 HTML",
      "",
      "- Neovim",
    },
    {
      "使用 `:TOhtml` 后跟文件名将 HTML 输出保存到文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:registers` 后跟寄存器名称显示特定寄存器的内容",
      "",
      "- Neovim",
    },
    {
      '使用 `"+yy` 将一行复制到系统剪贴板',
      "",
      "- Neovim",
    },
    {
      '使用 `"+p` 从系统剪贴板粘贴',
      "",
      "- Neovim",
    },
    {
      "使用 `:write` 或 `:w` 保存更改到文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:edit` 或 `:e` 打开文件进行编辑",
      "",
      "- Neovim",
    },
    {
      "使用 `:q` 退出 Neovim",
      "",
      "- Neovim",
    },
    {
      "使用 `:q!` 强制退出 Neovim 而不保存更改",
      "",
      "- Neovim",
    },
    {
      "使用 `:wq` 保存更改并退出",
      "",
      "- Neovim",
    },
    {
      "使用 `:ls` 列出所有打开的缓冲区",
      "",
      "- Neovim",
    },
    {
      "使用 `:bnext` 或 `:bn` 切换到下一个缓冲区",
      "",
      "- Neovim",
    },
    {
      "使用 `:bprevious` 或 `:bp` 切换到上一个缓冲区",
      "",
      "- Neovim",
    },
    {
      "使用 `:bdelete` 或 `:bd` 删除缓冲区",
      "",
      "- Neovim",
    },
    {
      "使用 `:cd` 后跟目录路径更改当前目录",
      "",
      "- Neovim",
    },
    {
      "使用 `:pwd` 显示当前工作目录",
      "",
      "- Neovim",
    },
    {
      "使用 `:r` 后跟文件名在当前光标位置插入文件内容",
      "",
      "- Neovim",
    },
    {
      "使用 `:read` 后跟 shell 命令在当前光标位置插入命令输出",
      "",
      "- Neovim",
    },
    {
      "使用 `:source` 后跟文件路径执行 Vimscript 文件",
      "",
      "- Neovim",
    },
    {
      "使用 `:history` 显示命令行历史记录",
      "",
      "- Neovim",
    },
    {
      "使用 `:ju` 或 `:jumps` 显示跳转位置列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:changes` 显示最近更改列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:checkhealth` 诊断 Neovim 设置中的常见问题",
      "",
      "- Neovim",
    },
    {
      "使用 `:scriptnames` 显示已加载的脚本列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:set option?` 显示选项的当前值",
      "",
      "- Neovim",
    },
    {
      "使用 `:echo &option` 显示选项的当前值",
      "",
      "- Neovim",
    },
    {
      "使用 `:verbose set option?` 查找选项上次设置的位置",
      "",
      "- Neovim",
    },
    {
      "使用 `:redir @* | silent set option? | redir END` 将 `:set option?` 的输出复制到剪贴板",
      "",
      "- Neovim",
    },
    {
      "使用 `:redir @* | silent echo &option | redir END` 将选项值复制到剪贴板",
      "",
      "- Neovim",
    },
    {
      "使用 `:redir @* | silent verbose set option? | redir END` 将 `:set option?` 的详细输出复制到剪贴板",
      "",
      "- Neovim",
    },
    {
      "使用 `:terminal` 打开终端窗口",
      "",
      "- Neovim",
    },
    {
      "使用 `:term` 作为 `:terminal` 的别名",
      "",
      "- Neovim",
    },
    {
      "在终端模式下使用 `Ctrl-W` 后跟 `N` 切换到普通模式",
      "",
      "- Neovim",
    },
    {
      "使用 `Ctrl-W` 后跟 `C` 退出终端模式",
      "",
      "- Neovim",
    },
    {
      "使用 `:sp term://$SHELL` 在水平分屏中打开终端",
      "",
      "- Neovim",
    },
    {
      "使用 `:vsp term://$SHELL` 在垂直分屏中打开终端",
      "",
      "- Neovim",
    },
    {
      "使用 `:termedit` 打开包含文件内容的终端缓冲区",
      "",
      "- Neovim",
    },
    {
      "使用 `:termfind` 打开包含文件内容的终端缓冲区，并将光标定位到模式的第一个匹配项",
      "",
      "- Neovim",
    },
    {
      "使用 `:grep` 后跟搜索模式和文件模式在文件中搜索文本",
      "",
      "- Neovim",
    },
    {
      "使用 `:lgrep` 使用位置列表执行搜索",
      "",
      "- Neovim",
    },
    {
      "使用 `:vimgrep` 使用 quickfix 列表执行搜索",
      "",
      "- Neovim",
    },
    {
      "使用 `:lvimgrep` 同时使用位置列表和 quickfix 列表执行搜索",
      "",
      "- Neovim",
    },
    {
      "使用 `:make` 后跟程序名编译程序",
      "",
      "- Neovim",
    },
    {
      "使用 `:make` 后跟命令运行程序",
      "",
      "- Neovim",
    },
    {
      "使用 `:compiler` 后跟编译器名设置编译器",
      "",
      "- Neovim",
    },
    {
      "使用 `:lmake` 运行 make 并用错误填充位置列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:lopen` 打开位置列表窗口",
      "",
      "- Neovim",
    },
    {
      "使用 `:lclose` 关闭位置列表窗口",
      "",
      "- Neovim",
    },
    {
      "使用 `:lfirst` 移动到位置列表中的第一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:llast` 移动到位置列表中的最后一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:lnext` 移动到位置列表中的下一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:lprevious` 移动到位置列表中的上一个错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:lopen` 后跟数字打开位置列表窗口并跳转到指定错误",
      "",
      "- Neovim",
    },
    {
      "使用 `:ldo` 对位置列表中的每个错误执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:cdo` 对 quickfix 列表中的每个错误执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:Cfilter` 过滤 quickfix 列表",
      "",
      "- Neovim",
    },
    {
      "使用 `:cfdo` 对 quickfix 列表中的每个错误执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:Cfilter!` 清除 quickfix 列表过滤器",
      "",
      "- Neovim",
    },
    {
      "使用 `:sort` 后跟范围对指定范围内的行进行排序",
      "",
      "- Neovim",
    },
    {
      "使用 `:sort u` 后跟范围删除指定范围内的重复行",
      "",
      "- Neovim",
    },
    {
      "使用 `:g` 后跟模式和命令对匹配模式的行执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:g!` 后跟模式和命令对不匹配模式的行执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:g//m$` 将所有匹配模式的行移动到文件末尾",
      "",
      "- Neovim",
    },
    {
      "使用 `:global` 作为 `:g` 的别名",
      "",
      "- Neovim",
    },
    {
      "使用 `:vglobal` 对不匹配模式的行执行命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:normal` 后跟按键序列执行普通模式命令",
      "",
      "- Neovim",
    },
    {
      "使用 `:helpgrep` 搜索包含特定关键字的帮助主题",
      "",
      "- Neovim",
    },
    {
      "使用 `:set listchars` 配置用于表示不可见字符的字符",
      "",
      "- Neovim",
    },
    {
      "使用 `:echo $VIMRUNTIME` 显示 Vim 运行时目录的位置",
      "",
      "- Neovim",
    },
    {
      "使用 `:echo $VIM` 显示 Vim 配置目录的位置",
      "",
      "- Neovim",
    },
    {
      "使用 `:checkhealth` 诊断 Neovim 设置中的常见问题",
      "",
      "- Neovim",
    },
  },
}
