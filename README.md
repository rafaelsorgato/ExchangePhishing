# ExchangePhishing
Auto download / unlock images in phishing campaign 


Are you trying to send a phishing campaign to your organization but the images won't download in the employee email? The solution for this issue will be made for environments that use Microsoft 365.



Error example:

<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhnfNG3BQdexgp6dbtItKvU3mTqQQfRuGGs7UKP6wUdxMFcJh6JHcrtYfz2y8dUkUI8m165F6mcMYYQzS8-Lw0vn3dNfi65Sva925tj2-jtd0GYhNbTSy2IN96C-HzEW3PaT0ZB05quqpz-ApAbXQEvadlYZlCpPSnvAjq_Fr2B-IVcs9ye0L5rav_3/w547-h367/imagem_2022-12-29_125246245.png">

<br>

Common error message for this problem:" click here to download pictures to help protect your privacy, outlook prevented automatic download of some pictures in this message "

This example works for Microsoft 365 / Exchange Server

First off all, download this powershell code (if you don't trust, only edit the file and read the code, it's not complex):
https://drive.google.com/file/d/1piGxZpCEHIY4ZVEuTEH8XUFQK8_snU2d/view?usp=sharing


After downloading, right-click on the file and select "run with powershell"

<br>

<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi7MY6YLSwVm3-EiYoKh33aHpY-q9_A4KDhLSsoU4BedXvusf0Q1PNKRTyeHq3WxnP277POBtmktgWY05CkuUjlukUOA1JacN-IpkGaDvrLTzFL15UIxmz9JC9p55PUciL4paQrypq_G3_aDC6eXlqIL2olLrKzzZYQPxX3yo-33VUocSrdOFvs4zra/s320/imagem_2022-12-29_130045141.png">

<br>

Now press "install dependencies" to install the modules that grant access to Exchange commands (Detail: keep eye's on the powershell, it might ask you to confirm the installation)

<br>

<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgDMndk8KloCWJTqras4yJ0fJtn_BNS0k8Y2H7vfQfOD9r1SR1wBdE1sF8qCj-s7xbyLLY1tvdIoOTatYxC_nEtunGk2bD-re3GzE3t7Fu7FmQkFxohJbsHXw1sso7db9f8MdM-KhSjJHxu9vMuyr_QOV3qwtn-7fUqTZoI-hsqZKoOp6F_-hyIs_Sr/w451-h271/imagem_2022-12-29_130338971.png">
     
<br>

After installation is complete, powershell will close automatically, just open it again. You will now need to log in with an admin/global account from your organization and wait to open a new screen.

<br>

<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg-r3tuA0-ayV_PjzKthpwSKlGp7VPvSarHCsJxvfz9XZ3KezDw39upNOTPPQrb7aJs-v_Xi5iXKn8dHMYrL8uiMnDQ-JDGs7Y-2YJxalaQpKXdegPBkFp8vcYGP9OJ93d02Bbb7cOoq3mwWDwwjM057z8bNYyAkpgvMYHna3hWjLISU6DbY4Fn0GeL/w452-h359/imagem_2022-12-29_131030959.png">

<br>

The last step is to choose a domain to unlock, in this example i will use "linkein.com", now only press run and wait

<br>

<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjhdc-2Tom3rw1nFvPKLwqoDuvminVeDViE4T4DnWlRQCOLdTH_sK7jPLUDSukQwgh3C_mK2FOlEI-Fb1nDyP3E1HECM7FyeDK0K6JlWLfrLZ4PPx8o3pK30PR3VmPeYFoDWQVSDkSFo4W4HjaDuFGIkoV0S2GbF1KMQg_w3kfVJ72s5zdyqet94AII/w462-h365/imagem_2022-12-29_131622439.png">

<br>

While the process is not finished, the label will remain as "loading", just wait for the "loading" to disappear and that's it, it's ready for phishing. Details, the powershell can show some warnings (like something went wrong, but it's normal)

<br>
Loading screen
<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFNaLV3fumjXwx7WkZJgAjM0aL7oR7P7wrCR7ge6TyhHj2al5WEA-fY2uJ5RMjYv4SlYN27BVM1Ag5qYpekUPL9HM_IrqKFyupbnPWqcjR7ELGEOVA0XtLBHpdtCecKj8-P5GjoOAxWCAgYqedHgO-ch6xMJMM-hUzKV6HDRqJUqVG8_cHx1iHNuqJ/s320/imagem_2022-12-29_131741612.png">


<br>
Finished screen
<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjkKoQwD82Nziq1Pu8iePR5bAZr0YV2n0t1SwE56oQlyIrDdxMfuGrG25LbwfPqLWS5M0PVpHYtjB9FAlF_q5XydRBInCFZpcz9hpt5GLWHI3wCX5KHv01RvsRwJzgtwJ0wldwWCTcpVmO0TTeNHK96TjQe7poKVQTPu-XnwrUjFYx009RUU3wvePw0/s320/imagem_2022-12-29_132659627.png">

     
 <br>
 
 now just send your phishing and test
 
 <br>
 
 <img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLQCS2QyqusrWZsDX8vNxauqGvrBfoHWmjobev9ZDZTAv_C7aYn9pU2jETYDE9L9ptUtRf1ih5uXX5SqE6qFOSupPX7MiXHdV6mOobzrT2nNtZKHkm9nK_H53SZ15Q55JXiL-ZsX6TEIgJ6cAQQ5AafvGUaX4C-Aa4PMzx99aW7fOxu-qK9mh6CdHP/w413-h323/imagem_2022-12-29_133134982.png">
