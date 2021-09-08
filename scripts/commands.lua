local function HandleIngameCommandKey(key, ctrl, alt, shift)
	if (key == "f9") then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunDiplomacyMenu()
	else
		return false
	end
	return true
end

local function HandleIneditorCommandKey(key, ctrl, alt, shift)
  if (key == "f5") then -- Map property
    RunEditorMapProperties()
  elseif (key == "f6") then -- Players property
    RunEditorPlayerProperties()
  elseif (key == "s" and alt) then -- Save
    RunEditorSaveMenu()
  else
    return false
  end
  SetGamePaused(true)
  return true

end

function HandlewarCommandKey(key, ctrl, alt, shift)
  if (CEditor:get():is_running() == false) then
    return HandleIngameCommandKey(key, ctrl, alt, shift)
  else
    return HandleIneditorCommandKey(key, ctrl, alt, shift)
  end
end

HandleCommandKey = HandlewarCommandKey
