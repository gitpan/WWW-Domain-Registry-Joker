# $CNsys: WWW-Domain-Registry-Joker-podcheck.t 403 2007-11-21 15:06:27Z roam $

# Copyright (C) 2007 by Peter Pentchev
#
# This library is free software; you can redistribute it and/or modify
# it under the same terms as Perl itself, either Perl version 5.8.8 or,
# at your option, any later version of Perl 5 you may have available.

# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as
# `perl WWW-Domain-Registry-Joker-podcheck.t'

#########################

use Pod::Checker;
use Test;
plan tests => 18;

my $file;

foreach $file (qw(Joker.pm Joker/Loggish.pm Joker/Response.pm)) {
	my ($mod, $c, $res);

	$mod = $file;
	$mod =~ s,/,::,g;
	$mod =~ s/\.pm$//g;

	$c = new Pod::Checker '-warnings' => 1;
	ok($c);
	$res = $c->parse_from_file("lib/WWW/Domain/Registry/$file", \*STDERR);
	if ($res == -1) {
	        warn "No POD data found in WWW::Domain::Registry::$mod\n";
	}
	ok(!$res);
	ok($c->num_errors() == 0 && $c->num_warnings() == 0);
	
	$c = new Pod::Checker '-warnings' => 5;
	ok($c);
	$res = $c->parse_from_file("lib/WWW/Domain/Registry/$file", \*STDERR);
	if ($res == -1) {
	        warn "No POD data found in WWW::Domain::Registry::$mod\n";
	}
	ok(!$res);
	ok($c->num_errors() == 0 && $c->num_warnings() == 0);
}
