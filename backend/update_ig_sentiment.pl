#!/usr/bin/perl

my $url = "http://www.dailyfx.com/sentiment-report";

#
# Script for updating IG Sentiment EUR/USD image extracted from $url
#
# Installation:
# 1. Define WEB_DIR in this script
# 2. Put the line "23 * * * * perl /home/alex/esforexco.github.io/backend/update_ig_sentiment.pl" in the www-user's crontab (www-data).
#

use LWP::Simple;
use File::Copy;

chdir("/home/alex/esforexco.github.io/backend");

my $content = `curl --silent -L $url`;

my $start_pos = index($content,"chart-EURUSD");
$start_pos = rindex($content, "\"", $start_pos) + 1;

my $image = substr($content, $start_pos, index($content, "\"", $start_pos)-$start_pos);

print($image."\n");
my $image_name = substr($image, rindex($image,"/")+1);
system("curl --silent -L $image > ../images/ig_sentiment/".$image_name);
copy("../images/ig_sentiment/".$image_name,"../images/ig_sentiment/last.png");

system("cd .. && git pull && git add --all && git commit -m 'ig sentiment' && git push -u origin master");
