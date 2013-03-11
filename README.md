
现在的

	➜  shell-command-record git:(master) cat ~/.zsh_history

TODO：

	。。。
	: 1361949250:0;COMMAND_RECORD_START
	: 1361949034:0;mkdir shell-command-record
	: 1361949037:0;cd shell-command-record
	: 1361949043:0;touch README.md
	: 1361949043:0;git init
	: 1361949043:0;git add README.md
	: 1361949043:0;git commit -m "first commit"
	: 1361949043:0;git remote add origin https://github.com/i5ting/shell-command-record.git
	: 1361949043:0;git push -u origin master
	: 1361949281:0;COMMAND_RECORD_SHOW


feathur：

- COMMAND_RECORD_START 设置开始录制命令点
- COMMAND_RECORD_SHOW显示录制内容

options：

- 指定shell类型（bash|zsh|ksh）等
- 支持ignoreList  比如ls，cd之类的如果不需要就不要


## usage:

>    cr start 
>    cr show

	


