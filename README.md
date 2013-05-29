Spot-Elevation-Marker
===========

Table of Contents
-----------
*Script Intentions

*Development Team Members

*List of programming goals

####Script Intentions

This plugin's current purpose is to allow the user to click on any given object in SketchUp (point, line, face) and the script will automatically create a Spot Elevation Marker that references the z-height of the object at the selected point, and will update based on changes made to the terrain (likely a manual refresh to prevent lagging/crashes).

####Development Team Members

Matt Gordon (Primary Developer) - matt.gordon320@gmail.com

####Outline of Intended Menu Items: 

#####Datums (Data)
	*   Set Zero Datum - Allows users to define where in the model the Zero Datum is set. All spot elevations are measured in reference to this plane.
	*   Show/Hide Datums - Allows user to toggle visibility of Datum Planes.
	+Spot Elevation Markers
		*   Create Spot Elevation Marker - Creates a single Spot Elevation Marker dynamic component that references the Z-height of an object/location with respect to the previously set Zero Datum.
		*   Create Grid-based Marker Set - Creates multiple markers in a user-defined grid (w/ options) on a model surface (terrain, etc.)
		*Show/Hide Elevation Marker Symbols - Toggles visibility of elevation marker symbols.
		*Show/Hide Elevation Marker Text - Toggles visibility of elevation marker text callouts.
		*Set Marker Min/Max Parameters (In the far distance of development) - Allows users to set minimum/maximum z-height values for specific elevation markers, giving visual feedback to the user about when part of a given terrain is too high/too low by changing color of the marker.
	+Preferences
		*Layer Naming Options - Allows users control over the naming conventions of layers created by this plugin. This feature is meant to allow users to customize the plugin around their workflow or standards (if already established).
		*Layer Lock Option - Allows User to decide if layers created by script are locked after creation by the plugin.
		*Spot Elevation Tag Options - Allows users to customize spot elevation markers, via web dialog perhaps?
		*Component Naming Options - Allows User to control the naming conventions of groups and components created by the plugin. This is done to allow the plugin to work without changing or impeding office/personal workflows.

#####Plugin Usage
	This section reserved for the breakdown of instructions on how the plugin is used, as well as downloadable documentation.

