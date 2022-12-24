<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="co"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
	<link  href="<co:url value="css/login.css"/>" rel="stylesheet" type="text/css" media="all"></link>

  </head>
  <body>


<div class="testbox">
  <h1>REGISTRAR</h1>

  <form method="post">
	<input type="hidden" name="opcion" value="insertar">
  <hr>
    <label id="icon" for="name"><i class="icon-user"></i></label>
    <input type="text" name="nombre" id="name" placeholder="Nombres" required />
    
     <label id="icon" for="name"><i class="icon-user"></i></label>
    <input type="text" name="apellido" id="name" placeholder="Apellidos" required />
       
     <label id="icon" for="name"><i class="icon-envelope "></i></label>
    <input type="text" name="correo" placeholder="Correo" required />
    
         <label id="icon" for="name"><i class="icon-user"></i></label>
    <input type="text" name="usuario" placeholder="Usuario" required />
    
    <label id="icon" for="name"><i class="icon-shield"></i></label>
    <input type="password" name="password" placeholder="Password" required />


    <p>Bienvenido mi estimado a la mejor aerolinea de Perú<a href="#"> AirlinesCodePeruvian </a>.</p>
    <input type="submit" value="Insertar">
  </form>
</div>
</body>

</html>