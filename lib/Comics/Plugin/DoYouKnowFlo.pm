#! perl

use strict;
use warnings;

package Comics::Plugin::DoYouKnowFlo;

use parent qw(Comics::Fetcher::Single);

our $VERSION = "1.01";

our $name    = "Do you know Flo?";
our $url     = "http://www.doyouknowflo.nl/";
our $pattern =
	    qr{ <img \s+
		 class="alignright .*? size-full .*?" \s+
		 src="(?<url>http://doyouknowflo.nl/
		        uploads/\d+/\d+/
			(?<image>.*?\.\w+))" \s+
	      }sx;

# Important: Return the package name!
__PACKAGE__;
