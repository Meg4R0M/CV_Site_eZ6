<?php
/**
 * Created by PhpStorm.
 * User: meg4r0m
 * Date: 25/02/18
 * Time: 11:52
 */

namespace HomeBundle\Oauth;

class OAuthConsumer {
    public $key;
    public $secret;

    function __construct($key, $secret, $callback_url=NULL) {
        $this->key = $key;
        $this->secret = $secret;
        $this->callback_url = $callback_url;
    }

    function __toString() {
        return "OAuthConsumer[key=$this->key,secret=$this->secret]";
    }
}