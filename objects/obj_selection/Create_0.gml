randomise();
chooses = -1;
if(!global.passed[that]){
var _redo = true;
	while(_redo){
		chooses = irandom_range(0,array_length(global.rooms)-1);
		_redo = false;
		with(obj_selection){
			if(id != other.id){
				if(chooses == other.chooses){
					_redo = true;
					break;
				}
			}
		}
	}
}