<?php

namespace LicornesBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints\DateTime;

/**
 * Licorne
 */
class Licorne
{
	public function __construct() {
		$this->datePrise = new \DateTime('now');
	}



	/**************************/
	/***** GENERATED CODE *****/
	/**************************/

    /**
     * @var int
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
}
