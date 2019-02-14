<%sub b2(v)
select case v
case "A"
t="Undergraduate academic pathway:ASU-USA Patyways"
case "B"
t="Bachelor's degree"
case "C"
t="Complete a Bachelor's degree:transfer admission"
case "D"
t="master's degree"
end select
Response.Write t
End sub

sub b3(v)
select case v
case "A"
t="Spring 2019(January)"
case "B"
t="Summer 2019(May)"
case "C"
t="Fall 2019(Auguest)"
case "D"
t="Spring 2020(January)"
end select
Response.Write t
End sub

sub b5(v)
select case v
case "A"
t="Tempe"
case "B"
t="Downtown Phoenix"
case "C"
t="Polytechnic"
case "D"
t="West"
case "E"
t="Lake Havasu City"
end select
Response.Write t
End sub

sub b25(v)
select case v
case "A"
t="I currently am or have attended college or university"
case "B"
t="I have completely withdrawn from a college or university"
case "C"
t="I have only receieved non-passing grades"
case "D"
t="I am a high school student currently attentiong or have attended college"
case "E"
t="I have never attended a college or university"
end select
Response.Write t
End sub

sub b23(v)
select case v
case "A"
t="I will attend the Intensive English Program at ASU"
case "B"
t="I have an English proficiency exam score"
case "C"
t="I do not have an English proficiency score, but I intend on taking an English proficiency exam."
end select
Response.Write t
End sub

sub d9(v)
select case v
case "A"
t="No, I have never attended or been affiliated with Arizona State University"
case "B"
t="Yes, I previously attended ASU as an undergraduate degree-seeking student"
case "C"
t="Yes, I previously attended ASU as a graduate or non-degree student"
case "D"
t="Yes, I attended ASU's Global Launch"
case "E"
t="Yes, I attended Global Freshman Academy or any transfer pathway program"
case "F"
t="Yes, I attended ASU as part of a summer program in high school"
case "G"
t="Yes, I am currently or previously was an ASU employee"
case "H"
t="Other (e.g. applied but never enrolled, season ticket holder, etc.)"
end select
Response.Write t
End sub

%>