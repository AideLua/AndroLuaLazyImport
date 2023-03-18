local lazyimportCfg={}
lazyimportCfg._VERSION="1.0"
lazyimportCfg._VERSION_CODE=1
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
    local lazyImportPackage=lazyImportMap[key]
    _import(lazyImportPackage)
    return rawget(_G,key)
  end
}
setmetatable(_G,metatable)

local function lazyimport(package)
  local className = package:match('([^%.$]+)$')
  lazyImportMap[className]=package
end

return lazyimport