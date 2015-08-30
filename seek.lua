require 'common'

function descriptor()
	return {title = "Seek"; version = "0.1"; author = "DasEarl"; capabilities = {}}
end

function activate()
	print("Seek started")
	dlg = vlc.dialog("Seeker")
	for i=0,100,5 do
		dlg:add_button(i.."%", function() seek(i) end, i, 1, 1, 1)
	end
end

function seek(n)
	common.seek(n.."%")
end

function close()
	print("Seek closed")
end
