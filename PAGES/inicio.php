<?php 
@session_start();
include("../PARTIALS/header.php");

?>
<link rel="stylesheet" href="../STYLES/inicio.css">

<main>
        <div class="primeiroBanner">
            <div class="divConteudo">
                <div>
                </div>
                <div class="divConteudoConteudo">
                    <h1>A MELHOR LOJA DE CAMISAS DE TIME!</h1>
                    <h2>Aqui na Mantos F.C presamos por qualidade, rapidez e excelência em nossos serviços. Venha fazer parte do time!</h2>
                    <button>Compre Camisas</button>
                    <section></section>
                </div>
            </div>
            <div>

            </div>
        </div>

        <div class="Camisa">
            <div class="Titulo1">
                <h1>Camisas dos pricipais clubes do Brasil!</h1>
            </div>
            <div class="espacoCamisa">
                <div class="espacoBtnEsquerda">
                    <button class="btnEsquerda" onclick="direcao(1)"><i class="fa-solid fa-arrow-left fa-2xl"></i></button>
                </div>

                <div class="containerCamisa">
                <?php 
  $produtos = mysqli_query($con, "SELECT * FROM `produtos` WHERE regiao = 'brasil' ");

  while($produto = mysqli_fetch_assoc($produtos)) {


                   echo "<a href='../PAGES/mostrarProd.php?cod={$produto['codProduto']}'><div class='containerCamisaUnico'>";
                    echo "<div class='camisaDivimg'>";
                       echo " <img src='{$produto['fotoProduto']}' alt=''>";
                       echo " <h1>{$produto['precoProduto']}</h1>";
                   echo " </div>";
                   echo " <div class = 'camisaTexto'>";
                   echo " <h1>{$produto['nomeCamisa']} - {$produto['timeProduto']}</h1>";
                   echo " <button>Adicionar ao carrinho</button> ";
                   echo " </div> ";
                echo " </div></a>";


                }

            ?>
                </div>

                <div class="espacoBtnDireita">
                    <button class="btnDireita" onclick="direcao(2)"><i class="fa-solid fa-arrow-right fa-2xl"></i></button>
                </div>
            </div>
            <script>
                function direcao(e){
                    var direcao = document.querySelector(".containerCamisa");
                    if(e == 1){
                        direcao.scrollLeft = direcao.scrollLeft - 1650;
                    }else if (e == 2){
                        direcao.scrollLeft = direcao.scrollLeft + 1650;
                    }
                }
                </script>
        </div>

        <script src="../JS/inicio.js"></script>

        <div class="carousel">
            
            <div class="carousel-content">
                <div class="slide active">

                    <div class="imgCarrosel1">

                        <div></div>
                        <div class="Top">
                            <div></div>
                            <div class="car1">
                                <h1>Camisas do Brasileirão?</h1>
                                <h2>Temos todas as camisas
                                    dos principais clubes
                                    brasileiros, desde seria A
                                    até B,aqui na Mantos,
                                    variedade e qualidade sobra
                                    em campo</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slide">

                    <div class="imgCarrosel2">

                        <div class="Top">
                            <div></div>
                            <div class="car2">
                                <h1>Seleções do mundo!
                                </h1>
                                <h2>A Mantos F.C oferece uma
                                    cobertura completa das
                                    camisas de seleções, afinal
                                    aqui nos vestimos os
                                    melhores do mundo.</h2>
                            </div>
                        </div>
        
                    </div>

                </div>
                <div class="slide">

                    <div class="imgCarrosel3">
                        <h1>Ligas Europeias!</h1>
                        <h2>Você gosta de times Europeus? se a resposta for sim,hoje é seu dia de sorte,em nossa loja temos as camisas de times das principais ligas do continente europeu.</h2>
                    </div>

                </div>
                <div class="slide">

                    <div class="imgCarrosel4">
                
                        <div class="Top">
                            <div></div>
                            <div class="car2">
                                <h1>Bola de Ouro!</h1>
                                <h2>Melhor preço, qualidade e
                                    procedência, fazemos de
                                    tudo para entregar a
                                    melhor experiência para o
                                    nosso cliente, afinal nossa
                                    meta é conquistar a bola de
                                    ouro das camisas
                                    esportivas.</h2>
                            </div>
                        </div>
                        <div></div>
                    </div>

                </div>
            </div>
        </div>
       
        <div class="Camisa">
            <div class="Titulo2">
                <h1>Camisas Masculinas!</h1>
            </div>
            <div class="espacoCamisa">
                <div class="espacoBtnEsquerda">
                    <button class="btnEsquerda" onclick="direcao2(1)"><i class="fa-solid fa-arrow-left fa-2xl"></i></button>
                </div>

                <div class="containerCamisa" id="container2">

                <?php 
  $produtos = mysqli_query($con, "SELECT * FROM `produtos` WHERE generoPro = 'Masculina' ");

  while($produto = mysqli_fetch_assoc($produtos)) {


                   echo "<div class='containerCamisaUnico'>";
                    echo "<div class='camisaDivimg'>";
                       echo " <img src='{$produto['fotoProduto']}' alt=''>";
                       echo " <h1>{$produto['precoProduto']}</h1>";
                   echo " </div>";
                   echo " <div class = 'camisaTexto'>";
                   echo " <h1>{$produto['nomeCamisa']} - {$produto['timeProduto']}</h1>";
                   echo " <button>Adicionar ao carrinho</button> ";
                   echo " </div> ";
                echo " </div>";


                }

            ?>
            </div>

                <div class="espacoBtnDireita">
                    <button class="btnDireita" onclick="direcao2(2)"><i class="fa-solid fa-arrow-right fa-2xl"></i></button>
                </div>
            </div>
           
        </div>
      
        <div class="Camisa">
            <div class="Titulo1">
                <h1>Camisas Femininas!</h1>
            </div>
            <div class="espacoCamisa">
                <div class="espacoBtnEsquerda">
                    <button class="btnEsquerda" onclick="direcao(1)"><i class="fa-solid fa-arrow-left fa-2xl"></i></button>
                </div>

                <div class="containerCamisa">

                <?php 
  $produtos = mysqli_query($con, "SELECT * FROM `produtos` WHERE generoPro = 'Feminina' ");

  while($produto = mysqli_fetch_assoc($produtos)) {


                   echo "<div class='containerCamisaUnico'>";
                    echo "<div class='camisaDivimg'>";
                       echo " <img src='{$produto['fotoProduto']}' alt=''>";
                       echo " <h1>{$produto['precoProduto']}</h1>";
                   echo " </div>";
                   echo " <div class = 'camisaTexto'>";
                   echo " <h1>{$produto['nomeCamisa']} - {$produto['timeProduto']}</h1>";
                   echo " <button>Adicionar ao carrinho</button> ";
                   echo " </div> ";
                echo " </div>";


                }

            ?>
                </div>

                <div class="espacoBtnDireita">
                    <button class="btnDireita" onclick="direcao(2)"><i class="fa-solid fa-arrow-right fa-2xl"></i></button>
                </div>
            </div>
           
        </div>

    </main>
    <?php
    
    include("../PARTIALS/footer.php")
    
    ?>