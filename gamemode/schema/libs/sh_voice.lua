Schema.voice = { normalVoice = { }, dispatchVoice = { } }

local combine = { "mpf", "ota" }

function Schema.voice.AddVoice( faction, command, output, sound )
	Schema.voice.normalVoice[ #Schema.voice.normalVoice + 1 ] = {
		faction = faction,
		command = command,
		output = output,
		sound = sound
	}
end

Schema.voice.AddVoice( combine, "Copy", "Copy that.", "npc/combine_soldier/vo/copythat.wav" )
Schema.voice.AddVoice( combine, "Ha", "Haha.", "npc/metropolice/vo/chuckle.wav" )