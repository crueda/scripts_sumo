#!/usr/bin/env python
#-*- coding: UTF-8 -*-

# autor: Carlos Rueda
# fecha: 2016-04-03
# mail: carlos.rueda@deimos-space.com

import datetime
import os
import sys
import csv

fichero_end = open('/var/www/statusend.html', 'rb')
fichero_index = open('/var/www/index.html', 'w')