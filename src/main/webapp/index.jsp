<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.ltp.nexus.model.dao.AlunoDAO"%>
<!DOCTYPE html>
<html class="custom-html">

   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Nexus</title>

      <!-- Bootstrap 4 -->

      <link rel="icon" href="img/dumbbell.svg">
      <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
      
      <!-- Argon Design System - Bootstrap 4 Theme -->
      
      <!-- Argon Design System * Vendor -->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
      <link href="node_modules/argon-design-system-free/assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
      <link href="node_modules/argon-design-system-free/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
      <!-- Argon Design System * Theme -->
      <link type="text/css" href="node_modules/argon-design-system-free/assets/css/argon.min.css" rel="stylesheet">
      
      <link rel="stylesheet" href="css/main.css?v=1">
   </head>

   <body class="custom-body">
      <div class="hero-background">

         <div class="login-form">
            <form class="login-form__form">
               <div class="input-box">
                  <label for="" class="input-box__label">Nome de Usuário</label>
                  <input type="text" class="input-box__input">
               </div>
               <div class="input-box">
                  <label for="" class="input-box__label">Senha</label>
                  <input type="password" class="input-box__input">
               </div>

               <div class="button-group">
                  <button type="submit" class="button button--opaque">Entrar</button>
                  <a href="" class="button button--bordered">Criar Conta</a>
               </div>
            </form>
         </div>
         
         <div class="hero-background__barras">
            <div class="hero-background__barra hero-background__barra--1"></div>
            <div class="hero-background__barra hero-background__barra--2"></div>
            <div class="hero-background__barra hero-background__barra--3"></div>
         </div>

         <footer class="hero-background__footer">
            <p class="system-version">Nexus ◉ v.1.43.5.Beta</p>
         </footer>
      </div>

      <!-- Scripts de terceiros (Bibliotecas, Frameworks, etc...)-->
      <script src="node_modules/jquery/jquery.min.js"></script>
      <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
      <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
      <script src="node_modules/argon-design-system-free/assets/js/argon.min.js"></script>

      <!-- Scripts do Projeto -->
      <script src="js/index.js"></script>
   </body>

</html>