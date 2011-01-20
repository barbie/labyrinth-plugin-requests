use 5.006;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME            => 'Labyrinth::Plugin::Requests',
    VERSION_FROM    => 'lib/Labyrinth/Plugin/Requests.pm',
    PREREQ_PM       => {
        'Labyrinth'         => '5.03'
    },
    NO_META     => 1,
    ABSTRACT    => 'Requests plugin for the Labyrinth framework',
    AUTHOR      => 'Barbie <barbie@cpan.org>',
);
