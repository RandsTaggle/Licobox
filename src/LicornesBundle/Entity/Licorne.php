<?php

namespace LicornesBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints\DateTime;

/**
 * Licorne
 */
class Licorne
{
	public function __construct()
	{
		$this->datePrise = new \DateTime('now');
		return $this;
	}

	public function __toString()
	{
		return $this->nom;
	}

	/**************************/
	/***** GENERATED CODE *****/
	/**************************/


    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $nom;

    /**
     * @var string
     */
    private $typePelage;

    /**
     * @var string
     */
    private $couleurYeux;

    /**
     * @var string
     */
    private $typeCorne;

    /**
     * @var string
     */
    private $habitat;

    /**
     * @var \DateTime
     */
    private $datePrise;

    /**
     * @var \Doctrine\Common\Collections\Collection
     */
    private $commentaires;

    /**
     * @var \LicornesBundle\Entity\LicorneCategorie
     */
    private $categorie;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nom
     *
     * @param string $nom
     * @return Licorne
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string 
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set typePelage
     *
     * @param string $typePelage
     * @return Licorne
     */
    public function setTypePelage($typePelage)
    {
        $this->typePelage = $typePelage;

        return $this;
    }

    /**
     * Get typePelage
     *
     * @return string 
     */
    public function getTypePelage()
    {
        return $this->typePelage;
    }

    /**
     * Set couleurYeux
     *
     * @param string $couleurYeux
     * @return Licorne
     */
    public function setCouleurYeux($couleurYeux)
    {
        $this->couleurYeux = $couleurYeux;

        return $this;
    }

    /**
     * Get couleurYeux
     *
     * @return string 
     */
    public function getCouleurYeux()
    {
        return $this->couleurYeux;
    }

    /**
     * Set typeCorne
     *
     * @param string $typeCorne
     * @return Licorne
     */
    public function setTypeCorne($typeCorne)
    {
        $this->typeCorne = $typeCorne;

        return $this;
    }

    /**
     * Get typeCorne
     *
     * @return string 
     */
    public function getTypeCorne()
    {
        return $this->typeCorne;
    }

    /**
     * Set habitat
     *
     * @param string $habitat
     * @return Licorne
     */
    public function setHabitat($habitat)
    {
        $this->habitat = $habitat;

        return $this;
    }

    /**
     * Get habitat
     *
     * @return string 
     */
    public function getHabitat()
    {
        return $this->habitat;
    }

    /**
     * Set datePrise
     *
     * @param \DateTime $datePrise
     * @return Licorne
     */
    public function setDatePrise($datePrise)
    {
        $this->datePrise = $datePrise;

        return $this;
    }

    /**
     * Get datePrise
     *
     * @return \DateTime 
     */
    public function getDatePrise()
    {
        return $this->datePrise;
    }

    /**
     * Add commentaires
     *
     * @param \LicornesBundle\Entity\Commentaire $commentaires
     * @return Licorne
     */
    public function addCommentaire(\LicornesBundle\Entity\Commentaire $commentaires)
    {
        $this->commentaires[] = $commentaires;

        return $this;
    }

    /**
     * Remove commentaires
     *
     * @param \LicornesBundle\Entity\Commentaire $commentaires
     */
    public function removeCommentaire(\LicornesBundle\Entity\Commentaire $commentaires)
    {
        $this->commentaires->removeElement($commentaires);
    }

    /**
     * Get commentaires
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getCommentaires()
    {
        return $this->commentaires;
    }

    /**
     * Set categorie
     *
     * @param \LicornesBundle\Entity\LicorneCategorie $categorie
     * @return Licorne
     */
    public function setCategorie(\LicornesBundle\Entity\LicorneCategorie $categorie)
    {
        $this->categorie = $categorie;

        return $this;
    }

    /**
     * Get categorie
     *
     * @return \LicornesBundle\Entity\LicorneCategorie 
     */
    public function getCategorie()
    {
        return $this->categorie;
    }
}
