--hi
local function startmain()
wait(0.1)
  getgenv().main = true
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DiscIssues/corzn/main/main.lua', true))()
end
local function startenchanced()
wait(0.1)
  getgenv().enchanced = true
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DiscIssues/corzn/main/enchanced.lua', true))()
end
local function startlegacy()
wait(0.1)
  getgenv().legacy = true
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DiscIssues/corzn/main/legacy.lua', true))()
end
local function startbeta()
wait(0.1)
  getgenv().beta = true
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DiscIssues/corzn/main/enchanced.lua', true))()
end
if not getgenv().beta or not getgenv().legacy or not getgenv().enchanced or not getgenv().main then
  if getgenv().key then
    if available.cwm.ver == "main" then
       startmain(1) 
    elseif available.cwm.ver == "beta" then
       startbeta(1)
    elseif available.cwm.ver == "enchanced" then
       startenchanced(1)
    elseif available.cwm.ver == "legacy" then
       startlegacy(1)
      end
   end
end
