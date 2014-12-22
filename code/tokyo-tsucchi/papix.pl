my %hash = ( papix => 'dame' );
print $hash{papix} . "\n"; # => dame
fix(\%hash);
#fix2(%hash);
print $hash{papix} . "\n"; # => perfect


sub fix {
    my $hash = shift;
    $hash->{papix} = 'perfect';
}

sub fix2 {
    my %hash = @_;
    $hash{papix} = 'perfect';
}
