#use strict;
#use warnings;
#use Data::Dump qw/pp/;

# pp(build_hash(400));

#sub build_hash {

#    # @TODO HASH keys
#    # => a, az, ..zz, aba, azz .. zzz <=
#    my %h;
#    my $prefix = "";
#    my $chr = 0;
#
#    for my $i (1..shift) {
#        my $key = $prefix.chr(97+$chr);
#        $h{$key} = int(rand(100));
#
#        # ASCII table
#        # z~122 - a~97 = 25
#        $chr++;
#        if ($chr==26) {
#            # eventually out-of-scope
#            $prefix .= chr(97+($i % $chr));
#            $chr = 0;
#        }
#    }
#
#    return \%h;
#}
