<?php

namespace LicornesBundle\Controller;

use LicornesBundle\Entity\Commentaire;
use LicornesBundle\LicornesBundle;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use LicornesBundle\Controller\CommentaireController;
use LicornesBundle\Entity\Licorne;

/**
 * Licorne controller.
 *
 */
class LicorneController extends Controller
{
    /**
     * Lists all Licorne entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $licornes = $em->getRepository('LicornesBundle:Licorne')->findAll();

        return $this->render('LicornesBundle:licorne:index.html.twig', array(
            'licornes' => $licornes,
        ));
    }

    /**
     * Creates a new Licorne entity.
     *
     */
    public function newAction(Request $request)
    {
		$em = $this->getDoctrine()->getManager();
        $licorne = new Licorne();

        $form = $this->createForm('LicornesBundle\Form\LicorneType', $licorne);
        $form->handleRequest($request);
		$categories = $em->getRepository('LicornesBundle:LicorneCategorie')->findAll();
		$maCategorie = $categories[rand(0, count($categories) - 1)];
		$licorne->setCategorie($maCategorie);
		$licorne->setTypePelage($maCategorie->getTypePelage());
		$licorne->setCouleurYeux($maCategorie->getCouleurYeux());
		$licorne->setTypeCorne($maCategorie->getTypeCorne());
		$licorne->setHabitat($maCategorie->getHabitat());

		echo '<h3> Felicitation ! vous avez attrape une nouvelle licorne !</h3>';
		if ($form->isSubmitted() && $licorne->getNom()) {
            $em = $this->getDoctrine()->getManager();

            $em->persist($licorne);
            $em->flush();
			return $this->redirectToRoute('licorne_show', array('id' => $licorne->getId()));
        }

        return $this->render('LicornesBundle:licorne:new.html.twig', array(
				'licorne' => $licorne,
				'form' => $form->createView(),
			)
		);
    }

    /**
     * Finds and displays a Licorne entity.
     *
     */
    public function showAction(Licorne $licorne)
    {
		$em = $this->getDoctrine()->getManager();
		$deleteForm = $this->createDeleteForm($licorne);
		$commentaires = $em->getRepository('LicornesBundle:Commentaire')->findAll(array('licorne' => $licorne));
		$commentaire = new Commentaire();

		if (isset($_POST['contenu']) && !empty($_POST['contenu'])) {
			$commentaire->setLicorne($licorne);
			$commentaire->setContenu($_POST['contenu']);
			$licorne->addCommentaire($commentaire);
			$em->persist($commentaire);
			$em->flush();

			return $this->redirectToRoute('licorne_show', array('id' => $licorne->getId()));
		}

        return $this->render('LicornesBundle:licorne:show.html.twig', array(
            'licorne' => $licorne,
			'commentaires' => $commentaires,
			'commentaire' => $commentaire,
            'delete_form' => $deleteForm->createView()
        ));
    }

    /**
     * Displays a form to edit an existing Licorne entity.
     *
     */
    public function editAction(Request $request, Licorne $licorne)
    {
        $deleteForm = $this->createDeleteForm($licorne);
        $editForm = $this->createForm('LicornesBundle\Form\LicorneType', $licorne);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($licorne);
            $em->flush();

            return $this->redirectToRoute('licorne_edit', array('id' => $licorne->getId()));
        }

        return $this->render('LicornesBundle:licorne:edit.html.twig', array(
            'licorne' => $licorne,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Licorne entity.
     *
     */
    public function deleteAction(Request $request, Licorne $licorne)
    {
        $form = $this->createDeleteForm($licorne);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($licorne);
            $em->flush();
        }

        return $this->redirectToRoute('licorne_index');
    }

    /**
     * Creates a form to delete a Licorne entity.
     *
     * @param Licorne $licorne The Licorne entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Licorne $licorne)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('licorne_delete', array('id' => $licorne->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
