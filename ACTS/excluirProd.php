<?php 
    require('../ACTS/connect.php');
    
    $codigo = $_GET['codigo'];
    mysqli_query($con, "DELETE FROM `produtos` WHERE `codProduto` = '$codigo'");

    header('location:')
?>