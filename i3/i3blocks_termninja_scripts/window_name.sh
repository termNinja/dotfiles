#! /bin/sh
#
# window_name.sh
# Copyright (C) 2016 Nemanja Mićović <nmicovic@outlook.com>
#
# Distributed under terms of the MIT license.
output=$(xdotool getactivewindow getwindowname | cut -c -50)
echo $output


