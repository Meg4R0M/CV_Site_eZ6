<?php
/**
 * Created by PhpStorm.
 * User: meg4r0m
 * Date: 24/02/18
 * Time: 23:07
 */

namespace HomeBundle\Controller;


use Symfony\Component\HttpFoundation\Response;

class ContactController
{
    public function sendAction(){
        if(isset($_REQUEST["isvalid"])){

            $youremail = "psykoterro@gmail.com";
            $name = $_POST["username"];
            $email = $_POST["useremail"];
            $mailsubject = $_POST["usersubject"];
            $subject = $_POST["usersubject"];
            $usermessage = $_POST["usermessage"];
            $message =

                "You have been contacted by $name with regards to $subject and the Message as follows:

$usermessage

...............................................

Contact details:

Email Address: $email";

            $headers = 'From:' . $email . "\r\n";
            mail($youremail, $mailsubject, $message, $headers);

            $status = "success";

        } else {

            $status = "failed";

        }
        return new Response($status, 200);
    }
}