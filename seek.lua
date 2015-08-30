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
	--dlg:add_button("10%", function() seek(10) end, 1, 1, 1, 1)
	--dlg:add_button("20%", function() seek(20) end, 2, 1, 1, 1)
	--dlg:add_button("30%", function() seek(30) end, 3, 1, 1, 1)
	--dlg:add_button("40%", function() seek(40) end, 4, 1, 1, 1)
	--dlg:add_button("50%", function() seek(50) end, 5, 1, 1, 1)
	--dlg:add_button("60%", function() seek(60) end, 6, 1, 1, 1)
	--dlg:add_button("70%", function() seek(70) end, 7, 1, 1, 1)
	--dlg:add_button("80%", function() seek(80) end, 8, 1, 1, 1)
	--dlg:add_button("90%", function() seek(90) end, 9, 1, 1, 1)
end

function seek(n)
	common.seek(n.."%")
end

function close()
	print("Seek closed")
end
