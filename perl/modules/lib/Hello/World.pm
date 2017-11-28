package Hello::World;

use strict;
use warnings;
use 5.010_001;

use Exporter 'import';

our @EXPORT_OK = qw/ hello /;

## export by default
## better don't use that
#our @EXPORT = qw/ hello /;

sub hello {say 'hello world!'}

1;
