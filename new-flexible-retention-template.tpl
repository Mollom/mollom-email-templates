Mollom Monthly Update: we blocked $spam_auto spam posts for you this month;

<html>
  <body>
    <p> 
      Hello $sub_name, <br><br>
      Welcome!  This month's Mollom update contains the latest stats and information about how Mollom 
      is protecting your sites and safeguarding your business. Over the last month, 
      <font color='green'><b>Mollom</b></font> protected $site_count sites for you.
      <br><br>
      Here are this month's key stats across all sites that Mollom is protecting for you:
      <ul>
        <li> <b> $spam_auto </b> spam posts were blocked automatically.  
            Of all posts checked, <b> $spam_percent % </b> were identified as spam. 
        </li>
        <li> Mollom saved you <b> $moderation_time </b> of manual moderation work.* </li>
        <li> <b> $legit_posts </b> legitimate posts were made by users of your site 
            who didn't have to solve a CAPTCHA thanks to Mollom's Artificial Intelligence.
        </li>
      </ul>     
    </p>
    <p> 
      Additional stats based on your site activity that may be meaningful for your business include:
      <ul>
        <li> Day with most Spam Posts: [$day_year_date_spam - $spammiest_day_count spam posts] </li>
        <li> Day with most Legitimate Posts: [$day_year_date_ham - $hammiest_day_count ham posts] </li>
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
        *template: *foreach $all_site_stats
          <tr>
            <td> $site_stats_url </td> 
            <td> $site_stats_legit_posts </td> 
            <td> $site_stats_spam_total </td>
            <td> $site_stats_spam_percent </td>
          </tr>
        *template:
      </table>
    </p>
    <p>Did you know ? <br> 
      You could be saving even more time by using Mollom's <b> Content Moderation Platform (CMP)? </b>   
      The CMP collects all of the posts needing moderation in one, convenient dashboard (no matter which site they were posted on!) 
      so you can quickly approve or flag them as spam and move on to other things. It's included as part of your
      Mollom subscription, and hey, who doesn't want some extra time back in their day! Check out all the time-saving tools 
      in the CMP at my.mollom.com.
    </p>
    <p>
      Thanks for using Mollom,<br>
        The Mollom Team <br><br>
      * Assumes 10 seconds per moderated post
    </p>
    <p>
      <a href="*|UNSUB:http://mollom.com|*">
        Click here to unsubscribe from the mailing list
      </a>
    </p>
  </body>
</html>