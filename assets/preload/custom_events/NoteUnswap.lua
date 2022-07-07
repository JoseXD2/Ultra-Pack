function onEvent(name)
	if name == 'NoteUnswap' then
		if not middlescroll then
			noteTweenX('dadNote0', 0, 92, 0.01, 'linear')
			noteTweenX('dadNote1', 1, 204, 0.01, 'linear')
			noteTweenX('dadNote2', 2, 316, 0.01, 'linear')
			noteTweenX('dadNote3', 3, 428, 0.01, 'linear')	
			
			noteTweenX('BFNote4', 4, 732, 0.01, 'linear')
			noteTweenX('BFNote5', 5, 844, 0.01, 'linear')
			noteTweenX('BFNote6', 6, 956, 0.01, 'linear')
			noteTweenX('BFNote7', 7, 1068, 0.01, 'linear')
		end
	end
end
