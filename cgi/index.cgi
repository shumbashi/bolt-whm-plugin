#!/usr/local/cpanel/3rdparty/bin/perl
#WHMADDON:bolt:Bolt Website Locker:bolt-64x64.png
#ACLS:all

use strict;
 package cgi::bolt;
 use warnings;
 use Cpanel::Template                  ();

 # Make the script into a modulino, to facilitate testing.
 run() unless caller();

 sub run {
     print "Content-type: text/html\r\n\r\n";
     Cpanel::Template::process_template(
         'whostmgr',
         {
             'template_file' => 'bolt/bolt.tmpl',
             'print'         => 1,
         }
     );
     exit;
 }