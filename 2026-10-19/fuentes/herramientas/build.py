import sys,re
d=sys.argv[1]
css=open('/home/claude/prod/shared/brand.css').read(); chk=open('/home/claude/prod/shared/check.svg').read().strip()
s=open(f'{d}/src.tpl').read().replace('/*BRAND*/',css).replace('/*CHECK*/',chk)
open(f'{d}/index.html','w').write(s)
