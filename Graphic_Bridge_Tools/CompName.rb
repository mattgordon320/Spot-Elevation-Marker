def = 
	compname = 'ElevationMarker'
	model = Sketchup.active_model
	list = model.definitions
	found = list.find {|d| d.name == compname }
	# found will be nil (& eval as false) if not found
	if found
 	 found.instances.each {|i|
    # update the instance i here
  	}
	else
  		# do something else here, if needed
end