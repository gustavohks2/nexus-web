<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.ltp.nexus.model.dao.AlunoDAO"%>
<!DOCTYPE html>
<html class="custom-html">
   <head>
      <meta name="viewport" content="width=device-with">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Nexus</title>
      <link rel="icon" href="img/coach.png">
      <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
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

      <script src="node_modules/jquery/jquery.min.js"></script>
      <script src="node_modules/popper.js/dist/popper.min.js"></script>
      <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
   </body>
</html>