---懒导入，暂时不支持"xxxx.*"形式
---作者: 杰西205
---Gitee: https://gitee.com/AideLua/AndroLuaLazyImport
---GitHub: https://github.com/AideLua/AndroLuaLazyImport
---更多请见 README.md
require "import"
import"lazyimport"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"

activity.getActionBar().setSubtitle("v"..lazyimportCfg._VERSION)

lazyimport "testFile"
lazyimport "java.io.File"
print("已懒加载testFile")
print("testFile.hello:",testFile.hello)
print("File:",File)

local t=System.currentTimeMillis()
for index=1,100000 do
  lazyimport "java.io.File"
end
print("懒导入 100000 次耗时:",System.currentTimeMillis()-t)

local t=System.currentTimeMillis()
for index=1,100000 do
  lazyimport("java.io.File",nil,"File")
end
print("懒导入（指定类名） 100000 次耗时:",System.currentTimeMillis()-t)