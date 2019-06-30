function from_hex(nr)
	return tonumber(nr,16)
end

function to_hex(nr)
	return string.format("%02x",nr)
end

function remote_init(manufacturer,model)
	local global_items={}
	local global_auto_inputs={}
	local global_auto_outputs={}

	----------------------------------------------- Button/LED masks ----------------------------------------------

	local function MakeButtonMIDIInputMask(button_id)
		assert(button_id>=0)
		assert(button_id<=from_hex("67"))
		local mask="90"..to_hex(button_id).."<?xxx>x"
		return mask
	end

	local function MakeButtonInputValueFormula()
		return "x/127"
	end

	local function MakeLEDMIDIOutputMask(led_id)
		assert(led_id>=0)
		assert(led_id<=from_hex("73"))
		local mask="90"..to_hex(led_id).."xx"
		return mask
	end

	local function MakeLEDOutputXFormula()
		return "value*(127-(mode-1)*126)*enabled"
	end

	------------------------------------------------- MCU buttons ------------------------------------------------

	local function define_buttons()
		local inputButtonDefs =
		{			
			{ id=from_hex("56"), name="Loop Button", type="inout" },
			{ id=from_hex("5d"), name="Stop Button", type="inout" },
			{ id=from_hex("5e"), name="Play Button", type="inout" },
			{ id=from_hex("5f"), name="Record Button", type="inout" },
			{ id=from_hex("60"), name="Up Button" },
			{ id=from_hex("61"), name="Down Button" },
			{ id=from_hex("62"), name="Left Button" },
			{ id=from_hex("63"), name="Right Button" },
		}
		local port_no=1
		for k,v in pairs(inputButtonDefs) do
			local item_name=v.name
			local button_id=v.id
			if (v.type=="inout") then
				table.insert(global_items,{ name=item_name, input="button", output="value", modes={ "Solid", "Flash" } })
				table.insert(global_auto_inputs,{ name=item_name,pattern=MakeButtonMIDIInputMask(button_id),value=MakeButtonInputValueFormula(),port=port_no })
				table.insert(global_auto_outputs,{ name=item_name,pattern=MakeLEDMIDIOutputMask(button_id),x=MakeLEDOutputXFormula(),port=port_no })
			else
				table.insert(global_items,{ name=item_name, input="button", output="text" })
				table.insert(global_auto_inputs,{ name=item_name,pattern=MakeButtonMIDIInputMask(button_id),value=MakeButtonInputValueFormula(),port=port_no })
			end
		end
	end

	------------------------------------------------- Jog Wheel ------------------------------------------------

	local function MakeJogWheelMIDIInputMask()
		local mask="b03c<?y??>x"
		return mask
	end

	local function MakeJogWheelMIDIInputValueFormula()
		return "x*(1-2*y)"
	end

	local function define_jog_wheel()
		local port_no=1
		local item_name="Jog Wheel"
		table.insert(global_items,{ name=item_name, input="delta" })
		table.insert(global_auto_inputs,{ name=item_name,pattern=MakeJogWheelMIDIInputMask(i),value=MakeJogWheelMIDIInputValueFormula(),port=port_no })
	end

	------------------------------------------------------------

	define_buttons()
	define_jog_wheel()
	
	remote.define_items(global_items)
	remote.define_auto_inputs(global_auto_inputs)
	remote.define_auto_outputs(global_auto_outputs)
end
