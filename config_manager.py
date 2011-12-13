#!/usr/bin/python
"""Configuration files manager hand made by cylixstar
./config_manager.py copy
	Copy all the preset configuration file to the config_backup directory
./config_manager.py edit config_name
	Open vim and edit the config of config_name
"""
import sys
import shutil
import os
from datetime import datetime

config_table = {
	"win.vim":"/media/Soft/Program Files/Vim/_vimrc",
	"vim":"/home/cylixstar/.vimrc",
	"vimperator":"/home/cylixstar/.vimperatorrc",
	"awesome":"/home/cylixstar/.config/awesome/rc.lua"
}

def cmd_copy():
	for name in config_table:
		print "Checking configuration file of " + name + ":",
		src_file_path = config_table[name]
		file_name = os.path.split(src_file_path)[1]
		dst_file_path = os.path.abspath("./" + file_name)
		print file_name + '.' * 6,

		src_date = datetime.fromtimestamp(os.path.getmtime(src_file_path))

		about_to_copy = True
		if os.path.exists(dst_file_path):
			dst_date = datetime.fromtimestamp(os.path.getmtime(dst_file_path))
			about_to_copy = dst_date < src_date
		
		if not about_to_copy:
			print "Updated"
			continue
		print "Modified"
		print "Copying from " + src_file_path + " to " + dst_file_path + '.' * 6
		try:
			shutil.copyfile(src_file_path, dst_file_path)
		except e:
			print "Something wrong"
			print trace_back()
			continue
		print "Succeess!"

def cmd_edit():
	if len(sys.argv) < 3:
		print "config_name must be offered"
		return
	name = sys.argv[2]
	if not name in config_table:
		print "config_name not fount in config_table"
		return
	os.system("vim \"" + config_table[name] + "\"")

def main():
	if len(sys.argv) < 2:
		return
	cmd = sys.argv[1]
	if not cmd in ("copy", "edit"): 
		return
	eval("cmd_" + cmd + "()")

if __name__=="__main__":
	main()
