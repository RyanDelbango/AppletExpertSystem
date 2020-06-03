
use CGI qw( :standard );
 
my $q = new CGI;
 
# READ the LogIn Data from the ENVIRONMENT VARIABLES
# ......................................................................
my $answer = $q->param("answer") ||error($q, "No value entered.");
my $answer2 = $q->param("answer2") ||error($q, "No value entered.");
my $fname = $q->param("FirstName") ||error($q, "No FirstName entered.");
my $lname =$q->param("LastName") ||error($q, "No LastName entered.");
my $nick = $q->param("Nickname") ||error($q, "No Nickname entered.");
my $color = $q->param("color") ||error($q, "No color entered.");
my $icon = $q->param("icon") ||error($q, "No icon selected.");
 
# PRODUCE a Reply HTM file
#....................................
 
print $q->header("text/html");
if ($answer2 eq "Version History")
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
<p>Question: What $answer topics interest you the most?
<p>Answer: $answer2
<hr>
<p>You are interested in $answer2 I see.
<p>Question: Which version of Kotlin would you like to take a closer look at?
<p><form action="p4.pl" method="post">
<p><input type="radio" value="V 1.1" name="answer3">V 1.1
<p><input type="radio" value="V 1.2" name="answer3">V 1.2
<p><input type="radio" value="V 1.3" name="answer3">V 1.3
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}
 
if ($answer2 eq "Where to practice?")
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
<p>Question: What $answer topics interest you the most?
<p>Answer: $answer2
<hr>
<p>So you want to know, $answer2?
<p>Question: What is your preferred place to code?
<p><form action="p4.pl" method="post">
<p><input type="radio" value="IDE" name="answer3">IDE
<p><input type="radio" value="Command Line" name="answer3">Command Line
<p><input type="radio" value="Online Application" name="answer3">Online Application
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}
 
if ($answer2 eq "Application Domains")
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
<p>Question: What $answer topics interest you the most?
<p>Answer: $answer2
<hr>
<p>You can use Kotlin for a variety of $answer2!
<p>Question: What $answer2 will you be using Kotlin for?
<p><form action="p4.pl" method="post">
<p><input type="radio" value="General-Purpose" name="answer3">General-Purpose
<p><input type="radio" value="Web Development" name="answer3">Web Development
<p><input type="radio" value="Science and Business" name="answer3">Science and Business
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}
if ($answer2 eq "Classes")
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
<p>Question: What about $answer do you want to know about?
<p>Answer: $answer2
<hr>
<p>$answer2 in Kotlin are easy to create.
<p>Question: What do you want to know about $answer2 in Kotlin?
<p><form action="p4.pl" method="post">
<p><input type="radio" value="Constructors" name="answer3">Constructors
<p><input type="radio" value="Instance Creation" name="answer3">Instance Creation
<p><input type="radio" value="Subclasses" name="answer3">Subclasses
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}
 
if ($answer2 eq "Functions")
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
<p>Question: What about $answer do you want to know about?
<p>Answer: $answer2
<hr>
<p>Using $answer2 in Kotlin has been made simpler compared to Java.
<p>Question: What area relating to $answer2 would you like to continue with?
<p><form action="p4.pl" method="post">
<p><input type="radio" value="User-defined Functions" name="answer3">User-defined Functions
<p><input type="radio" value="Scope Functions" name="answer3">Scope Functions
<p><input type="radio" value="Inputs and Outputs" name="answer3">Inputs and Outputs
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}
 
if ($answer2 eq "Variables")
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
<p>Question: What about $answer do you want to know about?
<p>Answer: $answer2
<hr>
<p>Declaring $answer2 in Kotlin looks a bit different than in Java.
<p>Question: What aspect of $answer2 do you want to get further knowledge on?
<p><form action="p4.pl" method="post">
<p><input type="radio" value="Val or Var" name="answer3">Val or Var
<p><input type="radio" value="Syntax" name="answer3">Syntax
<p><input type="radio" value="References" name="answer3">References
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}

if ($answer2 eq "Data Types")
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
<p>Question: What do you want to cover relating to $answer?
<p>Answer: $answer2
<hr>
<p>There are plenty of $answer2 to use for any circumstance in Kotlin.
<p>Question: Which $answer2 topic would like to dive into?
<p><form action="p4.pl" method="post">
<p><input type="radio" value="Primitive Data Types" name="answer3">Primitive Data Types
<p><input type="radio" value="Unsigned Number Data Types" name="answer3">Unsigned Number Data Types
<p><input type="radio" value="Generic Types" name="answer3">Generic Types
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}
 
if ($answer2 eq "Conditional Statements")
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
<p>Question: What do you want to cover relating to $answer?
<p>Answer: $answer2
<hr>
<p>There are three distinct $answer2 in Kotlin.
<p>Question: Which $answer2 do you need to know about?
<p><form action="p4.pl" method="post">
<p><input type="radio" value="if" name="answer3">if
<p><input type="radio" value="when" name="answer3">when
<p><input type="radio" value="for" name="answer3">for
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}
 
if ($answer2 eq "Coroutines")
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
<p>Question: What do you want to cover relating to $answer?
<p>Answer: $answer2
<hr>
<p>$answer2 officially were added to Kotlin in V 1.3
<p>Question: What further details about $answer2 do you want to know?
<p><form action="p4.pl" method="post">
<p><input type="radio" value="Syntax and Structure" name="answer3">Syntax and Structure
<p><input type="radio" value="Uses" name="answer3">Uses
<p><input type="radio" value="Delay Function" name="answer3">Delay Function
<input type="hidden" name="FirstName" value="$fname">
<input type="hidden" name="LastName" value="$lname">
<input type="hidden" name="Nickname" value="$nick">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}
