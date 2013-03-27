=begin
Copyright 2013, Graphic Bridge/Matthew Michael Gordon
All Rights Reserved
THIS SOFTWARE IS PROVIDED "AS IS" WITHOUT ANY EXPRESS OF IMPLIED WARRANTIES, INCLUDING,
WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
#-------------------------------------------------------------------------
License		: Author License Statement
Author		: Matthew Michael Gordon
Organization: Organization Name
Name 		: Script Name
Version		: Script Version
SU Version	: Minimum Required SketchuUp Version
Date		: Date (yyyy-mm-dd)
Description	: Description
Usage 		: 
	This section is reserved for the breakdown of instructions on how the plugin is used.
Change Log	:
	0.0.1 - (2013/01/01) Template Started - Not Ready for Testing
	1.0.0 - (2013/xx/xx) Initial Release
#--------------------------------------------------------------------------
=end

require "sketchup.rb"

module Spot_Elevation_Marker
	def self.my_method
		#perform operations I have yet to figure out
	end

	def self.my_second_method
		#perform more operations I have yet to figure out
	end
end

#Create Menu Items

unless file_loaded? (__file__)
	graphic_bridge_tools = UI.menu("Plugins").add_submenu("Spot Elevation Marker")
	graphic_bridge_tools.add_item("Set Datum Plane") {Spot_Elevation_Marker::my_method}
	graphic_bridge_tools.add_item("Set Projection Plane") {Spot_Elevation_Marker::my_method}
	graphic_bridge_tools.add_item("Spot Elevation Marker") {Spot_Elevation_Marker::my_method}
	graphic_bridge_tools.add_item("")