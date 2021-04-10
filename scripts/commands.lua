local function HandleIngameCommandKey(key, ctrl, alt, shift)
	if ((key == "h" and (ctrl or alt)) or key == "f1") then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunHelpMenu()
	elseif (key == "f5") then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunGameOptionsMenu()
	elseif (key == "f7") then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunGameSoundOptionsMenu()
	elseif (key == "f8") then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunPreferencesMenu()
	elseif (key == "f9") then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunDiplomacyMenu()
	elseif ((key == "m" and alt) or key == "f10" or key == "backspace") then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunGameMenu()
	elseif (key == "s" and alt) then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunSaveMenu()
	elseif (key == "l" and alt) then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunGameLoadGameMenu()
	elseif (key == "q" and (ctrl or alt)) then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunQuitToMenuConfirmMenu()
	elseif (key == "r" and (ctrl or alt)) then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunRestartConfirmMenu()
	elseif (key == "x" and (ctrl or alt)) then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunExitConfirmMenu()
	else
		return false
	end
	return true
end

local function HandleIneditorCommandKey(key, ctrl, alt, shift)
  if ((key == "m" and alt) or key == "f10" or key == "backspace") then
    RunInEditorMenu()
  elseif (key == "f5") then -- Map property
    RunEditorMapProperties()
  elseif (key == "f6") then -- Players property
    RunEditorPlayerProperties()
  elseif (key == "s" and alt) then -- Save
    RunEditorSaveMenu()
  elseif (key == "l" and alt) then -- Load
    RunEditorLoadMenu()
  elseif (key == "q" and (ctrl)) then -- Quit to menu
    RunQuitToMenuConfirmMenu()
  elseif (key == "x" and (ctrl or alt)) then -- Exit
    RunExitConfirmMenu()
  else
    return false
  end
  SetGamePaused(true)
  return true

end

function HandlewarCommandKey(key, ctrl, alt, shift)
  if (Editor.Running == EditorNotRunning) then
    return HandleIngameCommandKey(key, ctrl, alt, shift)
  else
    return HandleIneditorCommandKey(key, ctrl, alt, shift)
  end
end

HandleCommandKey = HandlewarCommandKey
