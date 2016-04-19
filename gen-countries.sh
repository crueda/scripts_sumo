#!/usr/bin/env python
#-*- coding: UTF-8 -*-

# autor: Carlos Rueda
# fecha: 2016-04-03
# mail: carlos.rueda@deimos-space.com

import datetime
import os
import sys
import csv


file_in = csv.reader(open('./countries.txt','rb'))

file_out = open('./out.txt', 'w')

for index,row in enumerate(file_in):
	try:
		country = row[0]
		code = row [1]

		file_out.writelines('languageEntry.put("' + str(code) + '",new LanguageEntryDto("' + str(code) + '",Arrays.asList(\n')
		file_out.writelines('new LanguageValueDto("' + str(code) + '","' + str(country) + '","ru"),\n')
		file_out.writelines('new LanguageValueDto("' + str(code) + '","' + str(country) + '","pt"),\n')
		file_out.writelines('new LanguageValueDto("' + str(code) + '","' + str(country) + '","en"),\n')
		file_out.writelines('new LanguageValueDto("' + str(code) + '","' + str(country) + '","es"),\n')
		file_out.writelines('new LanguageValueDto("' + str(code) + '","' + str(country) + '","fr"),\n')
		file_out.writelines('new LanguageValueDto("' + str(code) + '","' + str(country) + '","de"))));\n')
		file_out.writelines('\n')



	except:
		pass

file_out.close()
