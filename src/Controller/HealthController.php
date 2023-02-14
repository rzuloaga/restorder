<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;

class HealthController
{
    public function check(): Response
    {
        return new Response('It works!');
    }
}
