<?php
    class Conectar {
        protected $dbh;
        protected function conexion(){
            try{
                $conectar= $this->dbh = new PDO("mysql:local=localhost;dbname=paginawebphp","root","");
                return $conectar;
            }catch(Exception $e){
                print "Error :".$e->getMessage();
                die();
            }
        }

        public function set_names(){
            return $this->dbh->query("SET NAMES 'utf8'");
        }
    }
?>