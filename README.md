# JavaProject
Demo15-User Login Page
{
Signup-Redirect to first_page
{
upon submit redirect to Registration.jsp
upon submit redirect to test2.jsp "data insertion successfull"
}
Login-Redirect to Demo17.jsp
}
Demo17.jsp
{
User Details-(Pdetails.jsp)
{
when clicking on submit redirect to Update_Pdetails.jsp
upon successful redirect to test7.jsp(backend) "Data insertion suceessful"
}
Caretaker Details-(Cdetails.jsp)
{
when clicking on submit redirect to Update_Cdetails.jsp
upon successful redirect to test8.jsp(backend) "Data insertion suceessful"
}
Scholarship Details-Scholarship2.jsp
{
when clicked asked to select some things upon submit redirect to scholarship.jsp
if elgible redirect to Study.jsp
else You're not elgible for Scholarship
}
Job Quota Details-job1.jsp
{
when clicked asked to select some things upon submit redirect to Quota.jsp
if elgible redirect to Job.jsp
else You're not elgible for Job
}
Logout in Demo17.jsp-Redirect to Home Page(Demo15.jsp)
}
}
admin_login.jsp
{
add schemes-Update_schemes.jsp upon submit test4.jsp "successfull"
update_schemes-Delete_schemes.jsp  upon submit test5.jsp "display schemes" upon submit test6.jsp
after that 
if(modify)-"Modify_Schemes.jsp"
{
then Modifying.jsp
}
else(delete)-deleting.jsp
"deletion successful"
