use Test::More tests => 12;

BEGIN {
    use_ok 'Graphics::Raylib::Color';
}

my $color = Graphics::Raylib::Color::DARKPURPL;
is "$color", '(r: 112, g: 31, b: 126, a: 255)';
ok not eval { DARKPURPL->isa("Color") };


use Graphics::Raylib::Color qw(:all);
ok DARKPURPL->isa("Color");
is DARKPURPL->stringify, $color;

$color = Graphics::Raylib::Color::color(0xDEADBEEF);
is ref($color), 'Color';
is $color->color, 0xDEADBEEF;
is "$color", sprintf('(r: %u, g: %u, b: %u, a: %u)', 0xDE,0xAD,0xBE,0xEF);
is $color->r, 0xDE;
is $color->g, 0xAD;
is $color->b, 0xBE;
is $color->a, 0xEF;
