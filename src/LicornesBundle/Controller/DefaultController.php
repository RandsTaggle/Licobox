<?php

namespace LicornesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('LicornesBundle:Default:index.html.twig');
    }
}
