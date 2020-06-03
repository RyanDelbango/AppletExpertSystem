
#use diagnostics;
use CGI qw( :standard );
 
my $q = new CGI;
 
# READ the LogIn Data from the ENVIRONMENT VARIABLES
# ......................................................................
my $fname = $q->param("FirstName") ||error($q, "No FirstName entered.");
my $lname =$q->param("LastName") ||error($q, "No LastName entered.");
my $nick = $q->param("Nickname") ||error($q, "No Nickname entered.");
my $color = $q->param("color") ||error($q, "No Color Selected.");
my $icon = $q->param("icon") ||error($q, "No Icon Selected.");
 
#Define the File Name to write the LogIn Data
#...............................................
my $u_filename = "u-".$fname;
 
# write the LogIn Data into the that file in directory "d"
# ........................................................
open(F, ">>d/$u_filename"); # should create a NEW FILE based on the UserName 
print F "$fname", " ", "$lname", " ", "$nick", " ", "$color", " ","$icon", "\n";
close(F);
 
# PRODUCE a Reply HTM file
#....................................
print $q->header("text/html");
 
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
<p>Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>What area of Kotlin would you like to learn about?
<p><form action="p2.pl" method="post">
<input type="radio" value="General Information" name="answer">General Information
<p><input type="radio" value="Program Structure" name="answer">Program Structure
<p><input type="radio" value="Data Types and Sequence Control" name="answer">Data Types and Sequence Control
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
</form>
</HTML>
End_Success
