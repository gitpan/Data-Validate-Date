use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Data::Validate::Date',
    AUTHOR              => q{Peng Yong Hua <pyh@mail.nsbeta.info>},
    VERSION_FROM        => 'lib/Data/Validate/Date.pm',
    ABSTRACT_FROM       => 'lib/Data/Validate/Date.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Data-Validate-Date-*' },
);
