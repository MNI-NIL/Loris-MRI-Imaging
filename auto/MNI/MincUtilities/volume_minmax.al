# NOTE: Derived from /home/bic-mni/src/minc-toolkit/mni-perllib/MNI/MincUtilities.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package MNI::MincUtilities;

#line 301 "/home/bic-mni/src/minc-toolkit/mni-perllib/MNI/MincUtilities.pm (autosplit into /home/bic-mni/build/minc-toolkit/mni-perllib/perl/auto/MNI/MincUtilities/volume_minmax.al)"
sub volume_minmax
{
   my ($volume) = @_;
   my ($status, $volmax, $volmin);

   (volume_min ($volume), volume_max ($volume));
}

# end of MNI::MincUtilities::volume_minmax
1;
