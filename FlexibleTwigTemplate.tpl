{# 
   This is a note on how to use/edit this template:
   1. Anything enclosed within { followed by # and # followed by } is a comment. For example this entire paragraph is a comment. And is ignored from the template and the email that would be sent. 
   2. Please donot modify anything inside the blocks that start with {% and end with %}. But the blocks can be  moved around as a whole.
   3. The words which look like {{word}} are variables (they are placeholders for the actual values) and these can be moved around, pretty much anywhere inside template.
   4. Only the variables found inside the template can be used in the template. No new variables can be introduced.   
#}

{#
  Specified below is the list of email-addresses to send the test-emails to.
  Emails wouldn't be sent to actual Mollom-users if this line is present in the template, instead all the emails would be directed to these emailaddress. 
  Remove this line to actually send the emails to actual users.
  Each email-address is comma separated from other emails, hence comma is the delimter here.  
#}

chandankmit@gmail.com,kumar.chandan@acquia.com
*^separator^*

{# specfied below is the subject of the email, terminated by the symbol *^separator^*  #}
Mollom Monthly Update Demo Time!: we blocked {{spam_auto}} posts for you this month 
*^separator^* 

{# The Email message starts below this line. This section should always follow the subject of the email #}
<html>
  <body>
    <p> 
      Hello {{sub_name}}, <br><br>
      This month's Mollom update contains the latest stats and information about how Mollom 
      is protecting your sites and safeguarding your business. Over the last month, 
      Mollom protected {{site_count}} {% if site_count == 1 %} site {% else %} sites {% endif %} for you.
      <br><br>
      Here are this month's key stats across all sites that Mollom is protecting for you:
      <ul>
        <li> <b> {{spam_auto}} </b> spam posts were blocked automatically.  
            Of all posts checked, <b> {{spam_percent}} % </b> were identified as spam. 
        </li>
        <li> Mollom saved you <b> {{moderation_time}} </b> of manual moderation work. (Assumes 10 seconds per moderated post) </li>
        <li> <b> {{legit_posts}} </b> legitimate posts were made by users of your site 
            who didn't have to solve a CAPTCHA thanks to Mollom's Artificial Intelligence.
        </li>
      </ul>     
    </p>
    <p> 
      Additional stats based on your site activity that may be meaningful for your business include:
      <ul>
        <li> Day with most Spam Posts: [{{day_year_date_spam}} - {{spammiest_day_count}} spam posts] </li>
        <li> Day with most Legitimate Posts: [{{day_year_date_ham}} - {{hammiest_day_count}} leigitimate posts] </li>
      </ul>     
    </p>
    <p>Here's your per-site breakdown:</p>
    <p>
      <table border='1'>
        <tr>
          <th> <b>Site</b> </th>
          <th> <b>Legitimate Posts</b> </th>
          <th> <b>Spam</b> </th>
          <th> <b>Spam %</b> </th>
        </tr>
        {# 
         The line below this comment is a tag-line. All tag-lines start with {% 
         and end with  %}, but the tag-block which starts with this line would still be active.
         The tag-block ends with the tag-line that looks like {% end-tagname %} . 
         HTML content with placeholders can go inside the tag block (between the start and end tag-lines)
        #}
        {% for site_stats in all_site_stats %}
          <tr>
            <td> {{ site_stats['url'] }} </td> 
            <td> {{ site_stats['legit_posts']|number_format }} </td> 
            <td> {{ site_stats['spam_total']|number_format }} </td>
            <td> {{ site_stats['spam_percent']|number_format(2, '.', ',') }} </td>
          </tr>
        {% endfor %}
      </table>
    </p>
    <p>
      Every day Mollom helps businesses protect over fifty thousand websites from harmful spam and unwanted 
      content that can cause headaches and hurt business.  We thank you for your business and look forward to 
      providing you with continued support. If you have any questions or are interested in additional product 
      information please contact support@mollom.com .
    </p>
    <p>
      Thanks for using Mollom,<br>
        The Mollom Team
    </p>
    <p>
      <a href="*|UNSUB:http://mollom.com|*"> {# This is code for Madrill. Please do not edit this #}
        Click here to unsubscribe from the mailing list {# This text can be edited #}
      </a>
    </p>
  </body>
</html>

*^separator^*
 
{#below is the Text version of the email and should always follow the html version #}
Hello {{sub_name}},
Welcome! This month's Mollom update contains the latest stats and information about how Mollom is protecting your sites and safeguarding your business. Over the last month, Mollom protected {{site_count}} sites for you.

Here are this month's key stats across all sites that Mollom is protecting for you:
    - {{spam_auto}} spam posts were blocked automatically. Of all posts checked, {{spam_percent}} % were identified as spam. 
    - Mollom saved you {{moderation_time}} of manual moderation work. (Assumes 10 seconds per moderated post)
    - {{legit_posts}} legitimate posts were made by users of your site who didn't have to solve a CAPTCHA thanks to Mollom's Artificial Intelligence.
      
    Additional stats based on your site activity that may be meaningful for your business include:
        - Day with most Spam Posts: [{{day_year_date_spam}} - {{spammiest_day_count}} spam posts] 
        - Day with most Legitimate Posts: [{{day_year_date_ham}} - {{hammiest_day_count}} ham posts]
        
Every day Mollom helps businesses protect over fifty thousand websites from harmful spam and unwanted content that can cause headaches and hurt business. We thank you for your business and look forward to providing you with continued support. 
If you have any questions or are interested in additional product information please contact support@mollom.com .

Thanks for using Mollom,
  The Mollom Team

Please use the link below to unsubscribe:
*|UNSUB:http://mollom.com|*
