# NOTE: Derived from /home/bic-mni/src/minc-toolkit/mni-perllib/MNI/MiscUtilities.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package MNI::MiscUtilities;

#line 280 "/home/bic-mni/src/minc-toolkit/mni-perllib/MNI/MiscUtilities.pm (autosplit into /home/bic-mni/build/minc-toolkit/mni-perllib/perl/auto/MNI/MiscUtilities/nlist_equal.al)"
# ------------------------------ MNI Header ----------------------------------
#@NAME       : nlist_equal
#@INPUT      : $alist, $blist - [array refs] the two lists to compare
#@OUTPUT     : 
#@RETURNS    : true if the two lists are numerically identical, false otherwise
#@DESCRIPTION: Compares two lists numerically.  
#@CALLS      : lcompare
#@CREATED    : 1997/04/25, GPW
#@MODIFIED   : 
#-----------------------------------------------------------------------------
sub nlist_equal
{
   my ($alist, $blist) = @_;

   (lcompare (sub { $_[0] <=> $_[1] }, $alist, $blist)) == 0;
}

# end of MNI::MiscUtilities::nlist_equal
1;
