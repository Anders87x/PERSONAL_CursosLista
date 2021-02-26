<?php
    class Socialmedia extends Conectar{

        public function get_socialmedia(){
            $conectar=parent::conexion();
            parent::set_names();
            $sql="SELECT * FROM tm_socialmedia WHERE est=1";
            $sql=$conectar->prepare($sql);
            $sql->execute();
            return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
        }
    }
?>