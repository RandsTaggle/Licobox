<?php

namespace LicornesBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use LicornesBundle\Entity\LicorneCategorie;
use LicornesBundle\Form\LicorneCategorieType;

/**
 * LicorneCategorie controller.
 *
 */
class LicorneCategorieController extends Controller
{
    /**
     * Lists all LicorneCategorie entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $licorneCategories = $em->getRepository('LicornesBundle:LicorneCategorie')->findAll();

        return $this->render('LicornesBundle:licorneCategorie:index.html.twig', array(
            'licorneCategories' => $licorneCategories,
        ));
    }

    /**
     * Creates a new LicorneCategorie entity.
     *
     */
    public function newAction(Request $request)
    {
        $licorneCategorie = new LicorneCategorie();
        $form = $this->createForm('LicornesBundle\Form\LicorneCategorieType', $licorneCategorie);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($licorneCategorie);
            $em->flush();

            return $this->redirectToRoute('licornecategorie_show', array('id' => $licorneCategorie->getId()));
        }

        return $this->render('LicornesBundle:licorneCategorie:new.html.twig', array(
            'licorneCategorie' => $licorneCategorie,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a LicorneCategorie entity.
     *
     */
    public function showAction(LicorneCategorie $licorneCategorie)
    {
        $deleteForm = $this->createDeleteForm($licorneCategorie);

        return $this->render('LicornesBundle:licorneCategorie:show.html.twig', array(
            'licorneCategorie' => $licorneCategorie,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing LicorneCategorie entity.
     *
     */
    public function editAction(Request $request, LicorneCategorie $licorneCategorie)
    {
        $deleteForm = $this->createDeleteForm($licorneCategorie);
        $editForm = $this->createForm('LicornesBundle\Form\LicorneCategorieType', $licorneCategorie);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($licorneCategorie);
            $em->flush();

            return $this->redirectToRoute('licornecategorie_edit', array('id' => $licorneCategorie->getId()));
        }

        return $this->render('LicornesBundle:licorneCategorie:edit.html.twig', array(
            'licorneCategorie' => $licorneCategorie,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a LicorneCategorie entity.
     *
     */
    public function deleteAction(Request $request, LicorneCategorie $licorneCategorie)
    {
        $form = $this->createDeleteForm($licorneCategorie);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($licorneCategorie);
            $em->flush();
        }

        return $this->redirectToRoute('licornecategorie_index');
    }

    /**
     * Creates a form to delete a LicorneCategorie entity.
     *
     * @param LicorneCategorie $licorneCategorie The LicorneCategorie entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(LicorneCategorie $licorneCategorie)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('licornecategorie_delete', array('id' => $licorneCategorie->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
