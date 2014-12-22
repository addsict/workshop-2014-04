use strict;
use warnings;
use Data::Dumper;

my @supporters = qw(papix ytnobody xtetsuji);
my %hash = (
    name => 'Sherlock Shellingford',
    age  => 15,
);

sub output_array_and_hash {
    my ($array_ref, $hash_ref) = @_;
    for my $item ( @{ $array_ref } ) {
        print "$item\n";
    }
    print "--------------\n";
    for my $key ( keys %{ $hash_ref } ) {
        print "$key => $hash_ref->{$key}\n";
    }
}

output_array_and_hash(\@supporters, \%hash);
