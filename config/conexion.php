<?php
    class Conectar {
        protected $dbh;
        protected function conexion(){
            try{
                //QA
                //$conectar= $this->dbh = new PDO("mysql:local=localhost;dbname=paginawebphp","root","");
                //PRODUCCION
                //$conectar= $this->dbh = new PDO("mysql:local=localhost;dbname=andercodetemplate","webtemplate","@ndercode");
                //HEROKU
                $conectar= $this->dbh = new PDO("mysql:host=us-cdbr-east-04.cleardb.com;dbname=heroku_06839d9db1accbb","b3960015be2661","c8fb7929");
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