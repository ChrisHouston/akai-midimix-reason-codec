-- Developed by The Sighs of Monsters 
-- If you find this code useful, say thanks by buying on of our albums!
-- http://thesighsofmonsters.com/

function remote_init()
	local items={
		{name="Fader 1", input="value", min=0, max=127},
		{name="Fader 2", input="value", min=0, max=127},
		{name="Fader 3", input="value", min=0, max=127},
		{name="Fader 4", input="value", min=0, max=127},
		{name="Fader 5", input="value", min=0, max=127},
		{name="Fader 6", input="value", min=0, max=127},
		{name="Fader 7", input="value", min=0, max=127},
		{name="Fader 8", input="value", min=0, max=127},
		{name="Fader 9", input="value", min=0, max=127},
		
		{name="Knob 1 Top", input="value", min=0, max=127},
		{name="Knob 2 Top", input="value", min=0, max=127},
		{name="Knob 3 Top", input="value", min=0, max=127},
		{name="Knob 4 Top", input="value", min=0, max=127},
		{name="Knob 5 Top", input="value", min=0, max=127},
		{name="Knob 6 Top", input="value", min=0, max=127},
		{name="Knob 7 Top", input="value", min=0, max=127},
		{name="Knob 8 Top", input="value", min=0, max=127},

		{name="Knob 1 Middle", input="value", min=0, max=127},
		{name="Knob 2 Middle", input="value", min=0, max=127},
		{name="Knob 3 Middle", input="value", min=0, max=127},
		{name="Knob 4 Middle", input="value", min=0, max=127},
		{name="Knob 5 Middle", input="value", min=0, max=127},
		{name="Knob 6 Middle", input="value", min=0, max=127},
		{name="Knob 7 Middle", input="value", min=0, max=127},
		{name="Knob 8 Middle", input="value", min=0, max=127},

		{name="Knob 1 Bottom", input="value", min=0, max=127},
		{name="Knob 2 Bottom", input="value", min=0, max=127},
		{name="Knob 3 Bottom", input="value", min=0, max=127},
		{name="Knob 4 Bottom", input="value", min=0, max=127},
		{name="Knob 5 Bottom", input="value", min=0, max=127},
		{name="Knob 6 Bottom", input="value", min=0, max=127},
		{name="Knob 7 Bottom", input="value", min=0, max=127},
		{name="Knob 8 Bottom", input="value", min=0, max=127},
		
		{name="Mute 1", input="button", output="value"},
		{name="Mute 2", input="button", output="value"},
		{name="Mute 3", input="button", output="value"},
		{name="Mute 4", input="button", output="value"},
		{name="Mute 5", input="button", output="value"},
		{name="Mute 6", input="button", output="value"},
		{name="Mute 7", input="button", output="value"},
		{name="Mute 8", input="button", output="value"},

		{name="Solo 1", input="button", output="value"},
		{name="Solo 2", input="button", output="value"},
		{name="Solo 3", input="button", output="value"},
		{name="Solo 4", input="button", output="value"},
		{name="Solo 5", input="button", output="value"},
		{name="Solo 6", input="button", output="value"},
		{name="Solo 7", input="button", output="value"},
		{name="Solo 8", input="button", output="value"},

		{name="Rec 1", input="button", output="value"},
		{name="Rec 2", input="button", output="value"},
		{name="Rec 3", input="button", output="value"},
		{name="Rec 4", input="button", output="value"},
		{name="Rec 5", input="button", output="value"},
		{name="Rec 6", input="button", output="value"},
		{name="Rec 7", input="button", output="value"},
		{name="Rec 8", input="button", output="value"},

		{name="Bank Left", input="button", output="value"},
		{name="Bank Right", input="button", output="value"},
		{name="Solo Select", input="button", output="value"},

	}
	remote.define_items(items)

	local inputs={
		{pattern="b? 13 xx", name="Fader 1"},
		{pattern="b? 17 xx", name="Fader 2"},
		{pattern="b? 1B xx", name="Fader 3"},
		{pattern="b? 1F xx", name="Fader 4"},
		{pattern="b? 31 xx", name="Fader 5"},
		{pattern="b? 35 xx", name="Fader 6"},
		{pattern="b? 39 xx", name="Fader 7"},
		{pattern="b? 3D xx", name="Fader 8"},
		{pattern="b? 3E xx", name="Fader 9"},
		
		{pattern="b? 10 xx", name="Knob 1 Top"},
		{pattern="b? 14 xx", name="Knob 2 Top"},
		{pattern="b? 18 xx", name="Knob 3 Top"},
		{pattern="b? 1C xx", name="Knob 4 Top"},
		{pattern="b? 2E xx", name="Knob 5 Top"},
		{pattern="b? 32 xx", name="Knob 6 Top"},
		{pattern="b? 36 xx", name="Knob 7 Top"},
		{pattern="b? 3A xx", name="Knob 8 Top"},

		{pattern="b? 11 xx", name="Knob 1 Middle"},
		{pattern="b? 15 xx", name="Knob 2 Middle"},
		{pattern="b? 19 xx", name="Knob 3 Middle"},
		{pattern="b? 1D xx", name="Knob 4 Middle"},
		{pattern="b? 2F xx", name="Knob 5 Middle"},
		{pattern="b? 33 xx", name="Knob 6 Middle"},
		{pattern="b? 37 xx", name="Knob 7 Middle"},
		{pattern="b? 3B xx", name="Knob 8 Middle"},

		{pattern="b? 12 xx", name="Knob 1 Bottom"},
		{pattern="b? 16 xx", name="Knob 2 Bottom"},
		{pattern="b? 1A xx", name="Knob 3 Bottom"},
		{pattern="b? 1E xx", name="Knob 4 Bottom"},
		{pattern="b? 30 xx", name="Knob 5 Bottom"},
		{pattern="b? 34 xx", name="Knob 6 Bottom"},
		{pattern="b? 38 xx", name="Knob 7 Bottom"},
		{pattern="b? 3C xx", name="Knob 8 Bottom"},

		{pattern="90 01", name="Mute 1", value="1"},
		{pattern="90 04", name="Mute 2", value="1"},
		{pattern="90 07", name="Mute 3", value="1"},
		{pattern="90 0A", name="Mute 4", value="1"},
		{pattern="90 0D", name="Mute 5", value="1"},
		{pattern="90 10", name="Mute 6", value="1"},
		{pattern="90 13", name="Mute 7", value="1"},
		{pattern="90 16", name="Mute 8", value="1"},

		{pattern="90 02", name="Solo 1", value="1"},
		{pattern="90 05", name="Solo 2", value="1"},
		{pattern="90 08", name="Solo 3", value="1"},
		{pattern="90 0b", name="Solo 4", value="1"},
		{pattern="90 0e", name="Solo 5", value="1"},
		{pattern="90 11", name="Solo 6", value="1"},
		{pattern="90 14", name="Solo 7", value="1"},
		{pattern="90 17", name="Solo 8", value="1"},

		{pattern="90 03", name="Rec 1", value="1"},
		{pattern="90 06", name="Rec 2", value="1"}, 
		{pattern="90 09", name="Rec 3", value="1"}, 
		{pattern="90 0C", name="Rec 4", value="1"}, 
		{pattern="90 0F", name="Rec 5", value="1"},
		{pattern="90 12", name="Rec 6", value="1"},
		{pattern="90 15", name="Rec 7", value="1"}, 
		{pattern="90 18", name="Rec 8", value="1"},

		{pattern="90 19", name="Bank Left", value="1"},
		{pattern="90 1a", name="Bank Right", value="1"},
		{pattern="90 0f", name="Solo Select", value="1"},

	}
	remote.define_auto_inputs(inputs)

	local outputs={

		{name="Mute 1", pattern="90 01 0x", x="value*3"},
		{name="Mute 2", pattern="90 04 0x", x="value*3"},
		{name="Mute 3", pattern="90 07 0x", x="value*3"},
		{name="Mute 4", pattern="90 0a 0x", x="value*3"},
		{name="Mute 5", pattern="90 0d 0x", x="value*3"},
		{name="Mute 6", pattern="90 10 0x", x="value*3"},
		{name="Mute 7", pattern="90 13 0x", x="value*3"},
		{name="Mute 8", pattern="90 16 0x", x="value*3"},

		{name="Solo 1", pattern="90 02 0x", x="value*3"},
		{name="Solo 2", pattern="90 05 0x", x="value*3"},
		{name="Solo 3", pattern="90 08 0x", x="value*3"},
		{name="Solo 4", pattern="90 0b 0x", x="value*3"},
		{name="Solo 5", pattern="90 0e 0x", x="value*3"},
		{name="Solo 6", pattern="90 11 0x", x="value*3"},
		{name="Solo 7", pattern="90 14 0x", x="value*3"},
		{name="Solo 8", pattern="90 17 0x", x="value*3"},

		{name="Rec 1", pattern="90 03 0x", x="value*3"},
		{name="Rec 2", pattern="90 06 0x", x="value*3"},
		{name="Rec 3", pattern="90 09 0x", x="value*3"},
		{name="Rec 4", pattern="90 0c 0x", x="value*3"},
		{name="Rec 5", pattern="90 0f 0x", x="value*3"},
		{name="Rec 6", pattern="90 12 0x", x="value*3"},
		{name="Rec 7", pattern="90 15 0x", x="value*3"},
		{name="Rec 8", pattern="90 18 0x", x="value*3"},

		{name="Bank Left", pattern="90 19 0x", x="value*3"},
		{name="Bank Right", pattern="90 1a 0x", x="value*3"},

	}
	remote.define_auto_outputs(outputs)
end


function remote_probe()
	local controlRequest="F0 7E 7F 06 01 F7"
	local controlResponse="F0 7E 00 06 02 47 68 ?? ?? ?? ?? ?? ?? ?? ?? ?? F7"
	return {
		request=controlRequest,
		response=controlResponse
	}
end
