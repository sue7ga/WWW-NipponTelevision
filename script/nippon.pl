use strict;
use warnings;
use utf8;
use Encode;
use Carp;
use FindBin;
use lib "$FindBin::Bin/../lib";
use WWW::NipponTelevision;

my $nippon = WWW::NipponTelevision->new(apikey => 'zZ0RVSjjVVmlkaHiIZDW1nTF1WKKOBHojS8Ptg57J34v2mbKPr3vvVfmfuY7');

use Data::Dumper;

my $response = $nippon->response;

print Dumper $response;
