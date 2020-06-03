
use CGI qw( :standard );
 
my $q = new CGI;
 
# READ the LogIn Data from the ENVIRONMENT VARIABLES
# ......................................................................
my $answer = $q->param("answer") ||error($q, "No value entered.");
my $answer2 = $q->param("answer2") ||error($q, "No value entered.");
my $answer3 = $q->param("answer3") ||error($q, "No value entered.");
my $fname = $q->param("FirstName") ||error($q, "No FirstName entered.");
my $lname =$q->param("LastName") ||error($q, "No LastName entered.");
my $nick = $q->param("Nickname") ||error($q, "No Nickname entered.");
my $color = $q->param("color") ||error($q, "No color entered.");
my $icon = $q->param("icon") ||error($q, "No icon selected.");
 
# PRODUCE a Reply HTM file
#....................................
 
print $q->header("text/html");
if ($answer3 eq "V 1.1")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="There is a lot to know about in Kotlin.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What $answer topics interest you the most">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="You are interested in $answer2 I see.">
<PARAM name="Line10" value="Question: Which version of Kotlin would you like to take a closer look at?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="$answer3 added JVM and Javascript backend support and functions to its Standard library">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "V 1.2")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="There is a lot to know about in Kotlin.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What $answer topics interest you the most">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="You are interested in $answer2 I see.">
<PARAM name="Line10" value="Question: Which version of Kotlin would you like to take a closer look at?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="$answer3 added Multiplatform support and improved Smart Casting">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "V 1.3")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="There is a lot to know about in Kotlin.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What $answer topics interest you the most">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="You are interested in $answer2 I see.">
<PARAM name="Line10" value="Question: Which version of Kotlin would you like to take a closer look at?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="$answer3 saw the release of Coroutines and Contracts to deal with compilation problems">
</APPLET>
</HTML>
End_Success
}

if ($answer3 eq "IDE")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="There is a lot to know about in Kotlin.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What $answer topics interest you the most">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="So you want to know, $answer2?">
<PARAM name="Line10" value="Question: What is your preferred place to code?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Kotlin is supported in Eclipse, Android Studio, and JetBrains own Intellij IDEA">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Command Line")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="There is a lot to know about in Kotlin.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What $answer topics interest you the most">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="So you want to know, $answer2?">
<PARAM name="Line10" value="Question: What is your preferred place to code?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="You can download the command line compiler on the Kotlin website www.kotlinlang.org">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Online Application")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="There is a lot to know about in Kotlin.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What $answer topics interest you the most">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="So you want to know, $answer2?">
<PARAM name="Line10" value="Question: What is your preferred place to code?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="You can write and run programs on an application on the Kotlin website play.kotlinlang.org">
</APPLET>
</HTML>
End_Success
}

if ($answer3 eq "General-Purpose")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="There is a lot to know about in Kotlin.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What $answer topics interest you the most">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="You can use Kotlin for a variety of $answer2!">
<PARAM name="Line10" value="Question: What $answer2 will you be using Kotlin for?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Kotlin is used from server side management to Web Development and many inbetween.">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Web Development")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="There is a lot to know about in Kotlin.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What $answer topics interest you the most">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="You can use Kotlin for a variety of $answer2!">
<PARAM name="Line10" value="Question: What $answer2 will you be using Kotlin for?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Kotlin is an official language of the Android platform. It can be transpiled to JavaScript.">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Science and Business")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="There is a lot to know about in Kotlin.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What $answer topics interest you the most">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="You can use Kotlin for a variety of $answer2!">
<PARAM name="Line10" value="Question: What $answer2 will you be using Kotlin for?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Functional features and floating point calculations make Kotlin good for this domain type.">
</APPLET>
</HTML>
End_Success
}

if ($answer3 eq "Constructors")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="The structure of a program in Kotlin can cover a few topics.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What about $answer do you want to know about?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="$answer2 in Kotlin are easy to create.">
<PARAM name="Line10" value="Question: What do you want to know about $answer2 in Kotlin?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Constructors are defined in the heading. class Contact(val id: Int, var email: String)">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Instance Creation")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="The structure of a program in Kotlin can cover a few topics.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What about $answer do you want to know about?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="$answer2 in Kotlin are easy to create.">
<PARAM name="Line10" value="Question: What do you want to know about $answer2 in Kotlin?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Instance creation does not require the new keyword: val customer = Customer()">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Subclasses")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="The structure of a program in Kotlin can cover a few topics.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What about $answer do you want to know about?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="$answer2 in Kotlin are easy to create.">
<PARAM name="Line10" value="Question: What do you want to know about $answer2 in Kotlin?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Subclasses are available, inheriting all functions from superclass, overriding possible.">
</APPLET>
</HTML>
End_Success
}

if ($answer3 eq "User-defined Functions")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="The structure of a program in Kotlin can cover a few topics.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What about $answer do you want to know about?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Using $answer2 in Kotlin has been made simpler compared to Java.">
<PARAM name="Line10" value="Question: What area relating to $answer2 would you like to continue with?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Functions are defined with a name, parameters in parentheses and a return type following the parameters">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Scope Functions")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="The structure of a program in Kotlin can cover a few topics.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What about $answer do you want to know about?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Using $answer2 in Kotlin has been made simpler compared to Java.">
<PARAM name="Line10" value="Question: What area relating to $answer2 would you like to continue with?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="These standard functions create a block of code where an object can be called it or this">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Inputs and Outputs")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="The structure of a program in Kotlin can cover a few topics.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What about $answer do you want to know about?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Using $answer2 in Kotlin has been made simpler compared to Java.">
<PARAM name="Line10" value="Question: What area relating to $answer2 would you like to continue with?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Inputs and Outputs in Kotlin are handled by the scanner class in the Java Standard Library">
</APPLET>
</HTML>
End_Success
}

if ($answer3 eq "Val or Var")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="The structure of a program in Kotlin can cover a few topics.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What about $answer do you want to know about?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Declaring $answer2 in Kotlin looks a bit different than in Java.">
<PARAM name="Line10" value="Question: What aspect of $answer2 do you want to get further knowledge on?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Values are declarations that can't be reassigned, Variables can be reassigned.">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Syntax")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="The structure of a program in Kotlin can cover a few topics.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What about $answer do you want to know about?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Declaring $answer2 in Kotlin looks a bit different than in Java.">
<PARAM name="Line10" value="Question: What aspect of $answer2 do you want to get further knowledge on?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Val or var required then name, a colon, the data type and then the assignment: val a: Int = 1 ">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "References")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="The structure of a program in Kotlin can cover a few topics.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What about $answer do you want to know about?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Declaring $answer2 in Kotlin looks a bit different than in Java.">
<PARAM name="Line10" value="Question: What aspect of $answer2 do you want to get further knowledge on?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Reference variables work the same as in Java, but nullability is restricted">
</APPLET>
</HTML>
End_Success
}

if ($answer3 eq "Primitive Data Types")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Kotlin is contains some unique features in this area.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do you want to cover relating to $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="There are plenty of $answer2 to use for any circumstance in Kotlin.">
<PARAM name="Line10" value="Question: Which $answer2 topic would like to dive into?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="8 Primitive Data Types are available short, long, double, float, int, byte, boolean, char ">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Unsigned Number Data Types")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Kotlin is contains some unique features in this area.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do you want to cover relating to $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="There are plenty of $answer2 to use for any circumstance in Kotlin.">
<PARAM name="Line10" value="Question: Which $answer2 topic would like to dive into?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="V 1.3 introduced unsigned number data types allowing for a different range of accessible numbers.">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Generic Types")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Kotlin is contains some unique features in this area.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do you want to cover relating to $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="There are plenty of $answer2 to use for any circumstance in Kotlin.~">
<PARAM name="Line10" value="Question: Which $answer2 topic would like to dive into?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Generic types can be used just as in Java, to create classes that work with any Data Type">
</APPLET>
</HTML>
End_Success
}

if ($answer3 eq "if")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Kotlin is contains some unique features in this area.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do you want to cover relating to $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="There are three distinct $answer2 in Kotlin.">
<PARAM name="Line10" value="Question: Which $answer2 do you need to know about?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="if's require an else when the expression 'returns a value or assigns a variable'">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "when")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Kotlin is contains some unique features in this area.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do you want to cover relating to $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="There are three distinct $answer2 in Kotlin.">
<PARAM name="Line10" value="Question: Which $answer2 do you need to know about?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="The Java switch statement is replaced with the when expression which works very similarly.">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "for")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Kotlin is contains some unique features in this area.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do you want to cover relating to $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="There are three distinct $answer2 in Kotlin.">
<PARAM name="Line10" value="Question: Which $answer2 do you need to know about?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="For loops iterate through a collection of data and react based upon a condition: for(i in 1..3)">
</APPLET>
</HTML>
End_Success
}

if ($answer3 eq "Syntax and Structure")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Kotlin is contains some unique features in this area.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do you want to cover relating to $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="$answer2 officially were added to Kotlin in V 1.3">
<PARAM name="Line10" value="Question: What further details about $answer2 do you want to know?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Coroutines are required to be wrapped in a special function such as launch.">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Uses")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Kotlin is contains some unique features in this area.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do you want to cover relating to $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="$answer2 officially were added to Kotlin in V 1.3">
<PARAM name="Line10" value="Question: What further details about $answer2 do you want to know?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="Used for Aysyncronous programming. Useful in web development, among others.">
</APPLET>
</HTML>
End_Success
}
 
if ($answer3 eq "Delay Function")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hello, <font color=$color>$nick ($fname $lname) </font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: What area of Kotlin would you like to learn about?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Kotlin is contains some unique features in this area.">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do you want to cover relating to $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="$answer2 officially were added to Kotlin in V 1.3">
<PARAM name="Line10" value="Question: What further details about $answer2 do you want to know?">
<PARAM name="Line11" value="Answer: $answer3">
<PARAM name="Line12" value="">
<PARAM name="Line13" value="The delay function in coroutines is used to start and stop functions at allocated times.">
</APPLET>
</HTML>
End_Success
}
