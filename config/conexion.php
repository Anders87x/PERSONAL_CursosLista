<?php
    class Conectar {
        protected $dbh;
        protected function conexion(){
            try{
                //QA
                $conectar= $this->dbh = new PDO("mysql:local=localhost;dbname=paginawebphp","root","");
                //PRODUCCION
                //$conectar= $this->dbh = new PDO("mysql:local=localhost;dbname=andercodetemplate","webtemplate","@ndercode");
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