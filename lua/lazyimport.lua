local lazyimportCfg={}
lazyimportCfg._VERSION="1.1"
lazyimportCfg._VERSION_CODE=1199
rawset(_G,"lazyimportCfg",lazyimportCfg)
require "import"
local _import=_G["import"]
local lazyImportMap={}
local oldGlobalMetatable=getmetatable(_G)
local metatable={
  __index=function(self,key)

    if oldGlobalMetatable and oldGlobalMetatable.__index then
      local value=oldGlobalMetatable.__index(self,key)
      if value then
        return value
      end
    end
    local lazyImportCfg=lazyImportMap[key]
    _import(lazyImportCfg[1],lazyImportCfg[2])
    return rawget(_G,key)
  end
}
setmetatable(_G,metatable)

local function lazyimport(package,env,callName)
  callName = callName or package:match('([^%.$]+)$')
  if not lazyImportMap[callName] then
  lazyImportMap[callName]={package,env}
  end
end

return lazyimport