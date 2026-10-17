import sys, asyncio
from playwright.async_api import async_playwright
# usage: snap.py file.html out.jpg W H
async def main(f,o,w,h):
    async with async_playwright() as p:
        b=await p.chromium.launch(executable_path="/opt/pw-browsers/chromium_headless_shell-1194/chrome-linux/headless_shell")
        pg=await b.new_page(viewport={"width":w,"height":h})
        await pg.goto("file://"+f); await pg.evaluate("document.fonts.ready"); await pg.wait_for_timeout(300)
        await pg.screenshot(path=o,type="jpeg",quality=92,full_page=False)
        await b.close()
asyncio.run(main(sys.argv[1],sys.argv[2],int(sys.argv[3]),int(sys.argv[4])))
