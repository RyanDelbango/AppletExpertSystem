
use CGI qw( :standard );
 
my $q = new CGI;
 
# READ the LogIn Data from the ENVIRONMENT VARIABLES
# ......................................................................
my $answer = $q->param("answer") ||error($q, "No value entered.");
my $fname = $q->param("FirstName") ||error($q, "No FirstName entered.");
my $lname =$q->param("LastName") ||error($q, "No LastName entered.");
my $nick = $q->param("Nickname") ||error($q, "No Nickname entered.");
my $color = $q->param("color") ||error($q, "No Color Selected.");
my $icon = $q->param("icon") ||error($q, "No Icon Selected.");
 
# PRODUCE a Reply HTM file
#....................................
print $q->header("text/html");
if ($answer eq "General Information")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>Question: What area of Kotlin would you like to learn about?
<p>Answer: $answer 
<hr>
<p>There is a lot to know about in Kotlin.
<p>Question: What $answer topics interest you the most?
<p><form action="p3.pl" method="post">
<input type="radio" value="Version History" name="answer2">Version History
<p><input type="radio" value="Where to practice?" name="answer2">Where to practice?
<p><input type="radio" value="Application Domains" name="answer2">Application Domains
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}
 
if ($answer eq "Program Structure")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
 
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>Question: What area of Kotlin would you like to learn about?
<p>Answer: $answer
<hr>
<p>The structure of a program in Kotlin can cover a few topics.
<p>Question: What about $answer do you want to know about?
<p><form action="p3.pl" method="post">
<input type="radio" value="Classes" name="answer2">Classes
<p><input type="radio" value="Functions" name="answer2">Functions
<p><input type="radio" value="Variables" name="answer2">Variables
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}
 
if ($answer eq "Data Types and Sequence Control")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>Question: What area of Kotlin would you like to learn about?
<p>Answer: $answer
<hr>
<p> Kotlin is contains some unique features in this area.
<p>Question: What do you want to cover relating to $answer?
<p><form action="p3.pl" method="post">
<input type="radio" value="Data Types" name="answer2">Data Types
<p><input type="radio" value="Conditional Statements" name="answer2"> Conditional Statements
<p><input type="radio" value="Coroutines" name="answer2"> Coroutines
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}