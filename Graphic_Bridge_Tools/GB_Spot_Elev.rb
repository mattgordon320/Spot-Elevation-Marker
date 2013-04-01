=begin
Copyright 2013, Graphic Bridge/Matthew Michael Gordon
All Rights Reserved
THIS SOFTWARE IS PROVIDED "AS IS" WITHOUT ANY EXPRESS OF IMPLIED WARRANTIES, INCLUDING,
WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
THIS PLUGIN IS UNDER ACTIVE DEVELOPMENT AND IS RELEASED FOR PEER REVIEW/IMPROVEMENT ONLY - PLEASE DO NOT USE 
#-------------------------------------------------------------------------
License		: Author License Statement
Author		: Matthew Michael Gordon
Organization: Organization Name
Name 		: Script Name
Version		: 0.0.1
SU Version	: Minimum Required SketchuUp Version
Date		: 2013-03-27
Description	: 
	This plugin's current purpose is to allow the user to click on any given object in SketchUp (point, line, face) and the script will automatically create a Spot Elevation Marker that references the z-height of the object at the selected point, and will update based on changes made to the terrain (likely a manual refresh to prevent lagging/crashes).
Menu Items  : 
		Datums (Data)- 	Category that organizes all differnt types of Datum that can be utilized.
							* Set Zero Datum:
								Allows User to define where in the model the ZERO Datum is set. All spot elevations are measured in reference to this plane.
							* Show/Hide Datums:
								Allows User to Toggle Visibility of Datum Planes.
		Spot Elevs- 	Category that organizes all different options for Spot Elevation Markers.
							* Create Spot Elevation marker: 
								Creates a Spot Elevation marker [Text] item that references the z-height of an object/location with respect to the previously set Zero Datum. [Else references Model Origin]
							* Create Grid Based marker Set:
								Creates multiple markers in a User-defined grid (w/ Options) on terrain.
							* Show/Hide Elev marker Symbols:
								Toggles visibility of elevation marker symbols
							* Show/Hide Elev markers:
								Toggle visibility of elevation marker txt
							* Set Min/Max marker Parameters:
								 *Might someday* allow Users to change color of marker based on min/max values of z-height. IE: Green = within/Red = Too High/Too Low (Possbile Future Feature/Complex Implementation Likely)
		Preferences- 	Plugin Specific Preferences Pane - *See attached Adobe Bridge reference*
							* Layer Naming Options: 
								Allows User to control the naming conventions of Layers created by the plugin. This is done to allow the plugin to work without changing or impeding office/personal workflows.	
							* Layer Lock Option:
								Allows User to decide if layers created by script are locked after creation by the plugin.
							* Spot Elevation Tag Options:
								Allows Users to select from a list of pre-defined Spot Elevation Markers, or (eventually maybe) create their own.
							* Group/Component Naming Options:
								Allows User to control the naming conventions of groups and components created by the plugin. This is done to allow the plugin to work without changing or impeding office/personal workflows.	
Usage 		: 
	This section is reserved for the breakdown of instructions on how the plugin is used.
Change Log	:
	0.0.1 - (2013/01/01) Template Started - Not Ready for Testing
	1.0.0 - (2013/xx/xx) Initial Release
#--------------------------------------------------------------------------
=end

require "sketchup.rb"

# I'm guessing that the entirity of my plugin needs to be wrapped in at least a module. Not sure if this is the best/quickest/most stable way to do it.

module GB_Spot_Elevation
	
	unless file_loaded? (__file__)
		menu = UI.menu('Plugins')
		menu.additem =  ('Spot Elevation Marker') {self.spot_elevation_marker}

# Note to self from Thomthom's Blog:
# Use instance variable inside modules instead of glabal variables

	class Create_Elevation_Marker
		#I'm unsure that this is the proper way of setting up this script, but it's what makes sense to me at the moment with my limited understanding. I'd like to create a link here to a separate ruby file nested in my plugin directory ("Graphic_Bridge_Tools/Library/Spot_Elev_Marker_Creator"). This is so I can eliminate as many chances of me forgetting to update one code block and having to pour through the code to find it. 
		def self.create_elevation_marker
		end

	def self.my_method
		#perform operations I have yet to figure out
	end

	def self.my_second_method
		#perform more operations I have yet to figure out
	end

	class Place_Spot_Elevation_Marker
		def self.place_spot_elevation_marker
		end

end #module

#Create Menu Items

unless file_loaded? (__file__)
	graphic_bridge_tools = UI.menu("Plugins").add_submenu("Graphic Bridge Tools")
	graphic_bridge_tools.add_item("Set Datum Plane") {Spot_Elevation_Marker::my_method}
	graphic_bridge_tools.add_item("Set Projection Plane") {Spot_Elevation_Marker::my_method}
	graphic_bridge_tools.add_item("Spot Elevation Marker") {Spot_Elevation_Marker::my_method}
	graphic_bridge_tools.add_item("Show/Hide Elevation Markers") {Spot_Elevation_Marker::my_mthod}

end


=begin
#Methods_Required_Based_On_API_Research
#--------------------------------------------------------------------------------

#Point Category#
	Point3d.new
	# No Arguments, creates a point at the origin [0,0,0]
	pt1 = Geom::Point3d.new

	# Creates a point at x of 100, y of 200, z of 300
	pt2 = Geom::Point3d.new(100,200,300)

	# You can also create a point directly by simply assigning the x, y, and z values to a variable as an array:
	pt3 = [100,200,300]



	Point3d.z
		point = Geom::Point3d.new 1,2,3
		#retrieves the z value of 3
		z = point.z = 3


	Point3d.inspect
		point = Geom::Point3d.new 10,10,10
		string - point.inspect


	Point3d.distance_to_plane
		distance = point.distance_to_plane plane


	Point3d.project_to_plane
	 plane = [Geom::Point3d.new(0,0,0), Geom::Vector3d.new(0,0,1)]
	 point = Geom::Point3d.new 10,10,10
	 projected_point = point.project_to_plane plane

#Entities Category#
	Entities.add_line
		model = Sketchup.active_model
		entities = model.active_entities
		point1 = Geom::Point3d.new (0,0,0)
		point2 = Geom:Point3d.new (20,20,20)
		line = entities.addd_line (point1,point2)
		if (line)
			UI.messagebox line
		else
			UI.messagebox "Failure"
		end

	Entities.add_text
		coordinates = [10,10,10]
		model = Sketchup.active_model
		entities = model.entities
		point = Geom::Point3d.new coordinates
		text = entities.add_text "This is a test", point

	Entities.add_circle
		centerpoint = Geom::Point3d.new
		# Create a circle perpendicular to the normal or Z axis
		vector = Geom::Vector3d.new 0,0,1
		vector2 = vector.normalize!
		model = Sketchup.active_model
		entities = model.active_entities
		edges = entities.add_circle centerpoint, vector 2, 10

	Entities.add_group
		model = Sketchup.active_model
		entities = model.active_entities
		group = entities.add_group
		if (group)
			UI.messagebox group
		else
			UI.messagebox "Failure"
		end=end


