/// @author Alejandro Hitti
/// @description Guarantees there is only one instance of this object. Place this Script call at the top of the create event.
function MakeUnique() {

	if (instance_number(object_index) > 1)
	    instance_destroy();



}
