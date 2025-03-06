-- to anyone reading this, I only really made this for me, if you really want you can use it but maybe credit me
-- bye bye now :)

local API = {}
local HttpService = game:GetService("HttpService")

local currentFolder = nil

if not isfolder(currentFolder) then
	makefolder(currentFolder)
end

function API.SetFolder(folderName)
	if not isfolder(folderName) then
		makefolder(folderName)
	end
	currentFolder = folderName
end

function API.GetFileAssetID(fileName)
	local filePath = currentFolder .. "\\" .. fileName
	if isfile(filePath) then
		return getcustomasset(filePath)
	else
		return nil, "File does not exist!"
	end
end

function API.WriteFile(fileName, content)
	local filePath = currentFolder .. "\\" .. fileName
	if not isfile(filePath) then
		writefile(filePath, content)
	end
end

function API.DownloadFile(fileName, URL)
	local filePath = currentFolder .. "\\" .. fileName
	if not isfile(filePath) then
		writefile(filePath, game:HttpGet(URL))
	end
end

function API.FileExists(fileName)
	return isfile(currentFolder .. "\\" .. fileName)
end

function API.ReadFile(fileName)
	local filePath = currentFolder .. "\\" .. fileName
	if isfile(filePath) then
		return readfile(filePath)
	else
		return nil, "File does not exist!"
	end
end

return API
