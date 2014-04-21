package WWW::NipponTelevision;
use 5.008005;
use strict;
use warnings;
use utf8;
use URI;
use LWP::UserAgent;
use XML::Simple;
use Encode;

our $VERSION = "0.01";

use constant URL => 'http://appli.ntv.co.jp/ntv_WebAPI/news/';

sub new{
 my($class,%opt) = @_;
 my $self = {
   apikey => $opt{apikey},
 };
 bless $self,$class;
 return $self;
}

sub apikey{
 my $self = shift;
 return $self->{apikey};
}

sub response{
 my $self = shift;
 my $url = URI->new(URL);
 my $apikey = $self->apikey;
 my $word = 'しゃべくり';
 $url->query_form(
    key => $apikey,
    word => $word,
    period_start => 20140410,
    period_end =>  20140430,
 ); 
 my $ua = LWP::UserAgent->new();
 my $res = $ua->get($url);
 my $xml = $res->content;
 my $data = XMLin($xml);
 return $data;
}

1;
__END__

=encoding utf-8

=head1 NAME

WWW::NipponTelevision - It's new $module

=head1 SYNOPSIS

    use WWW::NipponTelevision;

=head1 DESCRIPTION

WWW::NipponTelevision is ...

=head1 LICENSE

Copyright (C) sue7ga.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

sue7ga E<lt>sue77ga@gmail.comE<gt>

=cut

