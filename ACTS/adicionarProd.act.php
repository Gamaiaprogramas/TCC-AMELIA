<?php
extract($_POST);
extract($_FILES);
require('../ACTS/connect.php');

@session_start();
$msg = "";
$destino = "location:../PAGES/pageAdm.php";
$busca = mysqli_query($con,"Select `codProduto` from `produtos` where `codProduto` = '$cod'");
// $buscaArray = mysqli_fetch_assoc($busca);

if($busca->num_rows == 0){ 
    $dirPath = "fotosProdutos/" .$timeProduto;
    if (!file_exists($dirPath)) {
        mkdir($dirPath, 0777, true);
    }
    $path = $dirPath . "../PICS/fotosProdutos/". md5(time()). ".jpg";
    move_uploaded_file($foto['tmp_name'], $path);
 

if (mysqli_query($con, "INSERT INTO `produtos` (`nomeCamisa`, `infoProduto`, `precoProduto`,`timeProduto`, `codProduto`,`fotoProduto`,`generoPro`) VALUES 
        ('$nomeCamisa' , '$infoProduto' , '$precoProduto', '$timeProduto',NULL,'$path','$generoPro');")) {
            $msg = "<p class=\"alerta green\">Registro Criado com sucesso!</p>";
            $destino = "location:addCamisa.php";
        } else {
            $msg = "<p class=\"alerta red\">Erro ao gravar registro: " . $con->error . "</p>";
            $destino = "location:addCamisa.php";
        }
    } 
else{
    $msg = "<p class=\"alerta red\">Codigo já ultilizado!</p>";
    $destino = "location:addCamisa.php";
}

$_SESSION['msg'] = $msg;
header($destino);
?>