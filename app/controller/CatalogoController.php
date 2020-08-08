<?php

namespace app\controller;

use app\Catalogo;

class CatalogoController
{

   public function listarCatalogos()
   {
      $catalogos = Catalogo::ListarCatalogo();

      if (!empty($catalogos)) {
         return $catalogos;
      } else {
         return false;
      }
   }

   public function agregarCatalogo()
   {
   }

   public function  eliminarCatalogo()
   {
   }
}
