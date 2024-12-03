<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../STYLES/adm.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=search" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
</head>
<body>
    <nav>
        <ul>
            <li><a href="../ACTS/logoff.act.php">Sair</a></li>
            <li><h1>Bem vindo Adm!</h1></li>
            <li><a href="../PAGES/adicionarProduto.php">Adicionar produto</a></li>
      </ul>
    </nav>
    <main>
    <?php 
    require('../ACTS/connect.php');
    $produtos = mysqli_query($con, "SELECT * FROM `produtos`");
    @session_start();

    while($produto = mysqli_fetch_assoc($produtos)) {
     
            echo "<div class='cardUnico'>";
            echo  "  <div class='imageCard'>";
            echo          "<img src='{$produto['fotoProduto']}'>";
            echo    "</div>";
              
            echo    "<div class='direita'>";
            echo        "<div class='infoProd'>";
            echo            "<h1>{$produto['nomeCamisa']} - {$produto['timeProduto']}</h1>";

            echo "<h1>R$: {$produto['precoProduto']},00<h1>";
            $descricao_previa = strlen($produto['infoProduto']) > 10 ? substr($produto['infoProduto'], 0, 10) . '...' : $produto['infoProduto'];
        
            echo            "<p>descricao: 
                           {$descricao_previa}
                        </p>";

                
            echo            "<h2>Codigo : {$produto['codProduto']}</h2>";
            echo        "</div>";

            echo        "<div class='Acao'>";
            echo            "<a href=''>";
            echo            "<img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAABsElEQVR4nO2ZO0oEQRCGf1MfkegiXb2KGmriBUw0NZNlqwbfLoh6gM0UD2K4YKihiYtnMPGB4BFEjdwZ6dlxnzMgRtXQH3TSU0H//VdVQw0QCPyPyb0JzNRG4S1WNkD8ACsJLLdgpYmyrMAbaMuA5BRW4raI3sUfIF6Gemz1KLv9pHCR3EC/CMlxYciVT+gXwS1YroPk1T8hXSdikByke7OVuUIxJNdQLaLMtb5vuWJcsUdLUFwTjdyYITHROpQXdpzu5cZyPYv5RimahhoMHxa02BgUnfTFEu9nsTGIj+GBiGRIjCt8lSL+/E6Ii2l0mkBRyil1Isl3R5MTQYQWghNaCE5oITihBRMeOyWY4IQSTHBCCSY4oQQTnFCCCU4owUj0x2nHwORD07QDGAHJs9/TDgdVV7PDvcHyuY9OtCG5zA54gV68ccJRisZg+T0bWy6iF29EOCzvZIdsYpD+NFOaTr9YuWv/EYp2u3uVhTTN0prxQUSZ5zstl+Q+FeOc6W3DJC9pa1aNlbOCgv4CyRXKvJa2ZvVYfhoY67s028bU5ji8guQWVh5TZ1yaBQKBH9uN6j2hRR/NAAAAAElFTkSuQmCC'></a>";
            echo            "<a href=''>";
            echo            "<img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwYAAAA00lEQVR4nOXUMQ5BQRAG4Cm0KhXZWWegJXEEOu/NPIm8mkbBGWi5A+fwuAgliZKEhORJtDszosCfbLLNzpf5iwX4jyCPwNEJkO/5ed5H+kGOs9cQ63GcfRigNfx4kBf2imgeBjxN3uh/HAYcx3YgjgQVxU0z4KkRBso9bwYqXQwD0CoA8tUA3PK3oiDtDcAOxHG0NXwRGwXAK8MGSzmANDMAU80GQ31FyUABJB39BtSWA57raqAa1eRAKS2Co4u8Hjrnb1RxnALSUQAcAKmvG/5NeQDf7GrUA152fwAAAABJRU5ErkJggg=='></a>";
            echo        "</div>";

            echo    "</div>";

            echo "</div>";}
        ?>
    </main>

</body>
</html>