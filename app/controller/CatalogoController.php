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

   public function EditarCatalogos($nom,$des,$id)
   {
      $catalogos = Catalogo::actualizarCatalogo($nom,$des,$id);

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
