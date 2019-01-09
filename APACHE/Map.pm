
 
package Apache::Ocsinventory::Plugins::Customapp::Map;
 
use strict;
 
use Apache::Ocsinventory::Map;

$DATA_MAP{customapp} = {
		mask => 0,
		multi => 1,
		auto => 1,
		delOnReplace => 1,
		sortBy => 'PATH',
		writeDiff => 0,
		cache => 0,
		fields => {
                PATH => {},
                TEXT => {}
	}
};
1;