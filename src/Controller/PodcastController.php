<?php

namespace App\Controller;

use App\Entity\Podcast;
use App\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PodcastController extends AbstractController
{
    public function index()
    {
        // Prueba de entidades y relaciones
        $em = $this->getDoctrine()->getManager();

        // Traerme todos los títulos de los podcast
        /*
        $podcast_repo = $this->getDoctrine()->getRepository(Podcast::class);
        $podcasts = $podcast_repo->findAll();

        foreach ($podcasts as $podcast){
            echo $podcast->getTitle()."<br/>";
        }
        */

        // Traerme todos los Usuarios y sus podcast

        $user_repo = $this->getDoctrine()->getRepository(User::class);
        $users = $user_repo->findAll();


        foreach ($users as $user){
            echo "<h1>{$user->getName()} - {$user->getEmail()}</h1>";

            foreach ($user->getPodcasts() as $podcast){
                echo $podcast->getTitle()."<br/>";
            }

        }


        return $this->render('podcast/index.html.twig', [
            'controller_name' => 'PodcastController',
        ]);
    }
}
