use strict;
use warnings;
use utf8;

use WWW::NipponTelevision;

use Test::More;
use Data::Dumper;

my $nippon = WWW::NipponTelevision->new(apikey => 'zZ0RVSjjVVmlkaHiIZDW1nTF1WKKOBHojS8Ptg57J34v2mbKPr3vvVfmfuY7');

my $response = $nippon->response;

is($response,'suesue','response');

done_testing;



