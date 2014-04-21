use strict;
use Test::More;
use WWW::NipponTelevision;

my $nippon = WWW::NipponTelevision->new(apikey => 'zZ0RVSjjVVmlkaHiIZDW1nTF1WKKOBHojS8Ptg57J34v2mbKPr3vvVfmfuY7');

is($nippon->apikey,'zZ0RVSjjVVmlkaHiIZDW1nTF1WKKOBHojS8Ptg57J34v2mbKPr3vvVfmfuY7','apikey is ok');

done_testing;