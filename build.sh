#!/bin/bash
# A script that packages Facebook Disconnect for distribution.
#
# Copyright 2013 Disconnect, Inc.
#
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later
# version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with
# this program. If not, see <http://www.gnu.org/licenses/>.
#
# Authors (one per line):
#
#   Eason Goodale <eason.goodale@gmail.com>
#   Brian Kennish <byoogle@gmail.com>
cd builds
rm fbdc.xpi fbdc.zip
cd ../firefox
zip -r ../builds/fbdc.xpi * -x \*.DS_Store
cd ../webkit/fbdc.safariextension
zip -r ../../builds/fbdc chrome -x \*.DS_Store
