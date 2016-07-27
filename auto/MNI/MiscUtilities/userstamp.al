# NOTE: Derived from /home/bic-mni/src/minc-toolkit/mni-perllib/MNI/MiscUtilities.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package MNI::MiscUtilities;

#line 142 "/home/bic-mni/src/minc-toolkit/mni-perllib/MNI/MiscUtilities.pm (autosplit into /home/bic-mni/build/minc-toolkit/mni-perllib/perl/auto/MNI/MiscUtilities/userstamp.al)"
# ------------------------------ MNI Header ----------------------------------
#@NAME       : userstamp
#@INPUT      : $user - [optional] username; defaults to looking up 
#                      login name of $< (real uid) in password file
#              $host - [optional]; defaults to hostname from Sys::Hostname
#              $dir  - [optional]; defaults to current directory, from 
#                      Cwd::getcwd
#@OUTPUT     : 
#@RETURNS    : 
#@DESCRIPTION: Generates and returns a "userstamp" of the form 
#              "greg@bottom:/data/scratch1/greg".
#@METHOD     : 
#@GLOBALS    : 
#@CALLS      : 
#@CREATED    : 1995/05/16, GW
#@MODIFIED   : 1996/05/29, GW: added directory
#              1997/04/24, GW: copied from misc_utilities.pl, removed brackets
#-----------------------------------------------------------------------------
sub userstamp #(;$$$)
{
   my ($user, $host, $dir) = @_;

   $user = getpwuid ($<) unless defined $user;
   $host = hostname() unless defined $host;
   $dir = getcwd unless defined $dir;
   sprintf ("%s@%s:%s", $user, $host, $dir);
}

# end of MNI::MiscUtilities::userstamp
1;
