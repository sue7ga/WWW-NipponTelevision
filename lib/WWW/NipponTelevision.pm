package WWW::NipponTelevision;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";

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

