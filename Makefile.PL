use 5.006;

# $CNsys: Makefile.PL 403 2007-11-21 15:06:27Z roam $

# Copyright (C) 2007 by Peter Pentchev
#
# This library is free software; you can redistribute it and/or modify
# it under the same terms as Perl itself, either Perl version 5.8.8 or,
# at your option, any later version of Perl 5 you may have available.

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'WWW::Domain::Registry::Joker',
    VERSION_FROM      => 'lib/WWW/Domain/Registry/Joker.pm',
    PREREQ_PM         => {
	'Log::Dispatch'	=> 2,
	'LWP'		=> 5,
	'Test::More'	=> 0,
       	},
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/WWW/Domain/Registry/Joker.pm',
       AUTHOR         => 'Peter Pentchev <roam@ringlet.net>') : ()),
);
