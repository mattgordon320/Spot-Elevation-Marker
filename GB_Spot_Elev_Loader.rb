=begin
(C) Copyright 2013, Matthew Michael Gordon/Graphic Bridge
All Rights Reserved
THIS SOFTWARE IS PROVIDED "AS IS" WITHOUT ANY EXPRESS OF IMPLIED WARRANTIES, INCLUDING BUT
NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR ANY PARTICULAR PURPOSE.
#--------------------------------------------------------------------
License		: Author License Statement
Author		: Matthew Michael Gordon
Organization: Graphic Bridge
Name		: Spot_Elevation_Marker
Version		: 0.1 ALPHA
SU Version	: SketchUp 8
Date		: 2013-03-27
Description	:
	This plugin's current purpose is to allow the user to click on any given object in SketchUp (point, line, face) and the script will automatically create a text object that references the z-height of the object at the selected point. 
Usage		: 
	This section is reserved for the breakdown of instructions on how the plugin is used.
Change Log	:
	0.0.1 - (2013-03-27) Template/Description/Method References Set Up & Ready for Review
#--------------------------------------------------------------------
=end
require "sketchup.rb"
require "extensions.rb"

#Load plugin as extension so that it may be disabled via Preferences > Extension Panel

GB_Spot_Elev_Loader = Sketchup.extension.new "Spot_Elevation_Marker", "Graphic_Bridge_Tools/Spot_Elev_Marker.rb"
Spot_Elevation_Marker.copyright = "Copyright 2013 Graphic Bridge/Matthew Michael Gordon"
Spot_Elevation_Marker.creator = "Matthew Michael Gordon"
Spot_Elevation_Marker.version = "0.0.1"
Spot_Elevation_Marker.description = "Description Here"
Sketchup.register_extension GB_Spot_Elev_Loader, true

end