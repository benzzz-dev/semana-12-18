import sys
d=sys.argv[1]
common=open('/home/claude/prod/common.css').read()
css=open('/home/claude/prod/shared/brand.css').read(); chk=open('/home/claude/prod/shared/check.svg').read().strip()
common=common.replace('/*BRAND*/',css)
s=open(f'{d}/src.tpl').read().replace('/*COMMON*/',common).replace('/*CHECK*/',chk)
open(f'{d}/index.html','w').write(s)
