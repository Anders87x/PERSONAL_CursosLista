<?php
    class Curso extends Conectar{

        public function get_curso_destacado(){
            $conectar=parent::conexion();
            parent::set_names();
            $sql="SELECT * FROM tm_curso WHERE cur_desta=1 and est=1";
            $sql=$conectar->prepare($sql);
            $sql->execute();
            return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
        }
    }
?>