package fruitarian::wolfram-fruit::index;
use strict;
use warnings;
use base qw(HTML::Seamstress);

my $tree;

#my ();
sub new {
$tree = __PACKAGE__->new_from_file('/home/terry/domains/org/livingcosmos/www/fruitarian/wolfram-fruit/index.html');

# content_accessors
;

# highlander_accessors
;

# iter_accessors
;

# dual_iter_accessors
;

$tree;
}

# content subs

# highlander subs

# iter subs


# dual_iter subs


sub tree {
  $tree
}


1;

