<?php
/**
 * Created by PhpStorm.
 * User: meg4r0m
 * Date: 25/02/18
 * Time: 00:03
 */

namespace HomeBundle\Oauth;

use Exception;

if (!class_exists('OAuthException')) {
    class Oauth extends Exception
    {

    }
}

