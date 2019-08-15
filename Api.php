<?php
require_once 'db.php';


class Api {
    private $requestUri;

    public function __construct() {
        header("Access-Control-Allow-Orgin: *");
        header("Access-Control-Allow-Methods: *");
        header("Content-Type: application/json");
        $this->requestUri = $_SERVER['REQUEST_URI'];
    }


    public function run() {
        return $this->getAction();
    }


    protected function getAction() {
        $uriArr = explode('/', $this->requestUri);      //Разбираем URL в массив для удобства

        if ($uriArr[2] == 'retrieve' && (int)$uriArr[3]) {
            return $this->retrieve((int)$uriArr[3]);
        }
        if ($uriArr[2] == 'generate') {
            return $this->generate();
        }
        // Если запрошено что-то отличное от условий - возвращаем Error
        return $this->response('Error', 405);

    }


    private function generate(){
        $randVal = md5(rand());             // Генерируем случайный токен
        $db = db_connect();

        $sql = "INSERT INTO tokens(token) VALUES('{$randVal}')";
        $db->query($sql);
        $id = mysqli_insert_id($db);
        return $this->retrieve($id);        //возвращаем сгенерированный токен из базы
    }


    private function retrieve($id){
        $db = db_connect();
        $sql = "SELECT id, token FROM tokens WHERE id = $id";
        $token = $db->query($sql)->fetch_assoc();
        return $this->response($token);
    }


    protected function response($data, $status = 200) {
        header("HTTP/1.1 " . $status . " " . $this->requestStatus($status));
        return json_encode($data);
    }


    private function requestStatus($code) {
        $status = array(
            200 => 'OK',
            404 => 'Not Found',
        );
        return ($status[$code])?$status[$code]:$status[500];
    }
}