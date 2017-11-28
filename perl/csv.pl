use strict;
use warnings;
use Text::CSV;

my $csv = Text::CSV->new({binary=>1,eol=>$/});
open(my $out, '>', q[test.csv]) || die "$!\n";

$csv->print($out, {
  znacka  => 'skoda',
  model   => 'fabia',
  rada    => 'ambient',
  cena    => 'CZK200k',
});
