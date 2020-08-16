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

   public function listarCatalogosxproducto($id_cat)
   {
      $catalogos = Catalogo::ListarCatalogoxproducto($id_cat);

      if (!empty($catalogos)) {
         return $catalogos;
      } else {
         return false;
      }
   }

   public function EditarCatalogos()
   {
      if(isset($_POST['enviar'])){
         $nombre=$_POST['nombre'];
         $descripcion=$_POST['descripcion'];
         $id=$_POST['id'];
       echo $_POST['id'];
   
      $catalogos = Catalogo::actualizarCatalogo($nombre,$descripcion,$id);
      header("location:index.php?p=adminCatalogo");
      if (!empty($catalogos)) {
         return $catalogos;
      } else {
         return false;
      }
   }

   


   }
   public function agregarCatalogo()
   {
   }

   public function  eliminarCatalogo()
   {
   }
}
