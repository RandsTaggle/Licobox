<?php

namespace LicornesBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Commentaire
 */
class Commentaire
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $contenu;

    /**
     * @var \LicornesBundle\Entity\Licorne
     */
    private $licorne;


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
     * Set contenu
     *
     * @param string $contenu
     * @return Commentaire
     */
    public function setContenu($contenu)
    {
        $this->contenu = $contenu;

        return $this;
    }

    /**
     * Get contenu
     *
     * @return string 
     */
    public function getContenu()
    {
        return $this->contenu;
    }

    /**
     * Set licorne
     *
     * @param \LicornesBundle\Entity\Licorne $licorne
     * @return Commentaire
     */
    public function setLicorne(\LicornesBundle\Entity\Licorne $licorne)
    {
        $this->licorne = $licorne;

        return $this;
    }

    /**
     * Get licorne
     *
     * @return \LicornesBundle\Entity\Licorne 
     */
    public function getLicorne()
    {
        return $this->licorne;
    }
}
