# NOTE: Derived from /home/bic-mni/src/minc-toolkit/mni-perllib/MNI/MincUtilities.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package MNI::MincUtilities;

#line 329 "/home/bic-mni/src/minc-toolkit/mni-perllib/MNI/MincUtilities.pm (autosplit into /home/bic-mni/build/minc-toolkit/mni-perllib/perl/auto/MNI/MincUtilities/percent_threshold.al)"
sub percent_threshold
{
   my ($volmin, $volmax, $percent) = @_;
   ($volmax - $volmin) * $percent + $volmin;
}

# end of MNI::MincUtilities::percent_threshold
1;
