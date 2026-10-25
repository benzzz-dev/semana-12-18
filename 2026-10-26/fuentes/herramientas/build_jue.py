import sys
d=sys.argv[1]
common=open('/home/claude/prod/common.css').read()
css=open('/home/claude/prod/shared/brand.css').read(); chk=open('/home/claude/prod/shared/check.svg').read().strip()
common=common.replace('/*BRAND*/',css)
s=open(f'{d}/src.tpl').read().replace('/*COMMON*/',common)
s=s.replace('/*DOTS_NO*/',''.join('<i class="ok"></i>' if i in (2,9,17,25) else '<i></i>' for i in range(31)))
s=s.replace('/*DOTS_SI*/',''.join(f'<i>{chk}</i>' for i in range(31)))
s=s.replace('/*CHECK*/',chk)
open(f'{d}/index.html','w').write(s)
