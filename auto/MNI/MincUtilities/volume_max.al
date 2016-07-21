# NOTE: Derived from /home/bic-mni/src/minc-toolkit/mni-perllib/MNI/MincUtilities.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package MNI::MincUtilities;

#line 276 "/home/bic-mni/src/minc-toolkit/mni-perllib/MNI/MincUtilities.pm (autosplit into /home/bic-mni/build/minc-toolkit/mni-perllib/perl/auto/MNI/MincUtilities/volume_max.al)"
sub volume_max
{
   my ($volume) = @_;

   my ($status, @image_max, $volmax);
   
   if ($Execute)
   {
      $Spawner->spawn (['mincinfo', '-varvalue', 'image-max', $volume],
                       stdout => \@image_max);
      $volmax = (sort { $a <=> $b } @image_max)[-1];
   }
   else { $volmax = 0; }

   $volmax;
}

# end of MNI::MincUtilities::volume_max
1;
