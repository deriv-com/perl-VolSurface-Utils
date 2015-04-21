use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'VolSurface::Utils',
    AUTHOR           => q{Binary.com <support@binary.com>},
    VERSION_FROM     => 'lib/VolSurface/Utils.pm',
    ABSTRACT_FROM    => 'lib/VolSurface/Utils.pm',
    LICENSE          => 'apache',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More'       => 0,
        'Test::NoWarnings' => 0,
        'Test::Exception'  => 0,
        'Test::MockTime'   => 0,
    },
    PREREQ_PM => {
        'base'                                                       => 0,
        'Carp'                                                       => 0,
        'List::MoreUtils'                                            => 0,
        'Math::CDF'                                                  => 0,
        'Math::Business::BlackScholes::Binaries'                     => 0,
        'Math::Business::BlackScholes::Binaries::Greeks::Delta'      => 0,
        'POSIX'                                                      => 0,
        'File::Spec'                                                 => 0,
        'JSON'                                                       => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Date-Utility-*' },
    (
        eval { ExtUtils::MakeMaker->VERSION(6.46) }
        ? (
            META_MERGE => {
                'meta-spec' => { version => 2 },
                resources   => {
                    repository => {
                        type => 'git',
                        url => 'https://github.com/binary-com/perl-VolSurface-Utils.git',
                        web => 'https://github.com/binary-com/perl-VolSurface-Utils',
                    },
                }
            }
          )
        : ()
      ),
);
