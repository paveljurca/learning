#!/usr/bin/perl -w
use strict;
use CGI qw(:all);

my($day,$file,@hall,@speaker,@photo,@topic,@time,%talk,$room,@chosen,@values,$c);
if (defined(param("day")) && param("day") =~ /\b(friday|saturday)\b/i) {
	$day = "\L" . param("day");
} else {
	if (`date +%d` <= 21) {$day = "friday"} else {$day = "saturday"}
}
@ARGV = ();
push @ARGV, "../htdocs/webexpo/2012/$day";
while(<>) {
	chomp;
	s/^\s+|\s+$//s;	
	$file.=$_;
}
@hall = split /<section class="hall /, $file;
shift @hall;pop @hall;
&talk;
&bugfix($day);
&html($day);
sub talk {
	foreach (@hall) {
		m/^([^"]+)/;$room = $1;
		next if (!($room =~ /^(dev|des|bus)/i));
		@speaker = m#class="bd"[^>]+>\s*<h3>([^<]+)#sg;
		@photo = m#<span class="item">\s*<img src="([^"]+)#sg;
		#system "wget -P /srv/www/htdocs/webexpo/2012/img/$day http://www.webexpo.cz$_" foreach(@photo);
		@topic = m#class="title"[^>]+>([^<]+)#g;
		@time = m#class="l">([^<]+)#g;
		s#[^/]*/##g foreach (@photo);
		foreach my $i (0..$#time) {
			$talk{$time[$i]."**".$topic[$i]} = "$speaker[$i]**$room**";
			foreach (1..scalar(split /,/, $speaker[$i])) {
				$talk{$time[$i]."**".$topic[$i]} .= shift(@photo) . "/";
			}
		}
	}
	"done";
}
sub bugfix {
	if ($_[0] eq "saturday") {
		delete $talk{'15:00 (90 min)**'};
		$talk{'15:00 (90 min)**Finále Startup Show 2012'} = "who knows?**business**speaker-default.png/";
		delete $talk{'18:00 (30 min)**'};
		$talk{'18:00 (30 min)**Produktový vývoj v Socialbakers'} = "Jan Řežáb, Martin Homolka**development**speaker-default.png/speaker2-default.png/";
	} else {
		return 1;
	}
}
sub html {
	unless ($_[0] eq "saturday") {
		@chosen = qw% shipito.com anděl asimilováni. nezměníš! závislosti, a/b return metro bojovat typos vektorový api crap me %;
	} else {
		@chosen = qw% git ekosystém. psychologie souboj začátek ameriky dart fronty startup bear critical responsiveness rozloučení %;
	}
	print "Content-type: text/html\n\n";
	print "\t\t<!DOCTYPE html>
		<html>
		\t<head>
		\t\t<meta charset='utf-8' />
		\t\t<base href='http://localhost/webexpo/2012/' />
		\t\t<link rel='stylesheet' type='text/css' href='style.css' />
		\t</head>
		<body>
		\t<div id='container'>
		\t\t<div id='header'>\n";
	print &tab(5) . "<p class='$day'>\U$day\E<span>Konference WebExpo Prague 2012</span></p>\n";
	print &tab(4) . "</div>
		\t\t<div id='program'>\n";
	foreach my $key (sort keys %talk) {
		@values = ();$c = -1;
		$values[++$c] = $_ foreach (split /\*\*/, $key);
		$values[++$c] = $_ foreach (split /\*\*/, $talk{$key});
		$values[-1] =~ s/\/$//;
		@photo = split /\//, $values[-1];
		$_ = "<img src='img/$day/$_' class='$values[3]' />" foreach (@photo);
		foreach my $choice (@chosen) {
			if ($values[1] =~ /\b$choice/i) {
				print &tab(5) . "<div id='talk' class='$values[3]'>";
				print "<div id='photo'>@photo</div><div id='info'>";
				print "<p class='time'>$values[0]</p><p class='speaker'>$values[2]</p>";
				print "<p><span class='lecture'>$values[1]</spann></p><p class='$values[3]'>#$values[3]</p>";
				print "</div></div>\n";
				last;
			}
		}
	}
	print &tab(4) . "</div>\n". &tab(3) . "</div>\n" . "\t\t</body>\n\t\t</html>\n";
}
sub tab {
	"\t" x $_[0];
}
