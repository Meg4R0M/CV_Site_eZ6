<?php
/**
 * Created by PhpStorm.
 * User: meg4r0m
 * Date: 25/02/18
 * Time: 01:09
 */

namespace HomeBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use HomeBundle\Oauth\TwitterOauth;
use Symfony\Component\Config\Definition\Exception\Exception;
use Symfony\Component\HttpFoundation\JsonResponse;

class TwitterController extends Controller
{

    public function twitterAction(){
        // Consumer Key
        $CONSUMER_KEY = $this->container->getParameter('twitter_consumer_key');
        $CONSUMER_SECRET = $this->container->getParameter('twitter_consumer_secret');
        define('CONSUMER_KEY', $CONSUMER_KEY);
        define('CONSUMER_SECRET', $CONSUMER_SECRET);

        // User Access Token
        $ACCESS_TOKEN = $this->container->getParameter('twitter_access_token');
        $ACCESS_SECRET = $this->container->getParameter('twitter_access_secret');
        define('ACCESS_TOKEN', $ACCESS_TOKEN);
        define('ACCESS_SECRET', $ACCESS_SECRET);

        // Check if keys are in place
        if (CONSUMER_KEY === '' || CONSUMER_SECRET === '' || CONSUMER_KEY === 'CONSUMER_KEY_HERE' || CONSUMER_SECRET === 'CONSUMER_SECRET_HERE') {
            throw new Exception('You need a consumer key and secret keys. Get one from <a href="https://dev.twitter.com/apps">dev.twitter.com/apps</a>');
        }

        // If count of tweets is not fall back to default setting
        $number = $_GET['count'];
        $exclude_replies = $_GET['exclude_replies'];

        /**
         * Gets connection with user Twitter account
         * @param  String $cons_key     Consumer Key
         * @param  String $cons_secret  Consumer Secret Key
         * @param  String $oauth_token  Access Token
         * @param  String $oauth_secret Access Secrete Token
         * @return Object               Twitter Session
         */
        function getConnectionWithToken($cons_key, $cons_secret, $oauth_token, $oauth_secret) {
            $connection = new TwitterOauth($cons_key, $cons_secret, $oauth_token, $oauth_secret);

            return $connection;
        }

        // Connect
        $connection = getConnectionWithToken(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_SECRET);

        // Get Tweets
        $tweets = $connection->get("https://api.twitter.com/1.1/statuses/user_timeline.json?count=".$number."&exclude_replies=".$exclude_replies);

        // Return JSON Object
        header('Content-Type: application/json');

        //return json_encode($tweets);
        return new JsonResponse($tweets);
    }
}