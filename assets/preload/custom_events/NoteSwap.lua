function onEvent(name)
	if name == 'NoteSwap' then
		if not middlescroll then
			noteTweenX('dadNote0', 0, 732, 0.01, 'linear')
			noteTweenX('dadNote1', 1, 844, 0.01, 'linear')
			noteTweenX('dadNote2', 2, 956, 0.01, 'linear')
			noteTweenX('dadNote3', 3, 1068, 0.01, 'linear')	
			
			noteTweenX('BFNote4', 4, 92, 0.01, 'linear')
			noteTweenX('BFNote5', 5, 204, 0.01, 'linear')
			noteTweenX('BFNote6', 6, 316, 0.01, 'linear')
			noteTweenX('BFNote7', 7, 428, 0.01, 'linear')	
		end
	end
end
