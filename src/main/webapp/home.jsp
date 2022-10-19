<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit&family=Mukta:wght@500;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dela+Gothic+One&display=swap" rel="stylesheet">
    <link rel="icon" href="img/unnamed.png">
    
    <title>GESTIONE CANDIDATURE - Home Page</title>

</head>

<body style="background: url('img/bg.png'); background-size: cover; background-repeat:no-repeat; background-position:center; height:100%">

    <style>
        body,
        html {
            height: 100%;
        }
        
        .nav-link {
            color: white;
            font-weight: bold;
            margin-right: 15px;
        }
        
        .nav-link:hover {
            color: rgba(40, 142, 226, 0.952);
        }
        
        .act {
            color: rgb(145, 197, 236);
            ;
        }
        
        .iconcina {
            color: white;
        }
        
        .tracking-in-contract {
            -webkit-animation: tracking-in-contract 3s cubic-bezier(0.215, 0.610, 0.355, 1.000) both;
            animation: tracking-in-contract 3s cubic-bezier(0.215, 0.610, 0.355, 1.000) both;
        }
        
        @-webkit-keyframes tracking-in-contract {
            0% {
                letter-spacing: 1em;
                opacity: 0;
            }
            40% {
                opacity: 0.6;
            }
            100% {
                letter-spacing: normal;
                opacity: 1;
            }
        }
        
        @keyframes tracking-in-contract {
            0% {
                letter-spacing: 1em;
                opacity: 0;
            }
            40% {
                opacity: 0.6;
            }
            100% {
                letter-spacing: normal;
                opacity: 1;
            }
        }
    </style>

    <nav class="navbar navbar-expand-lg" style="background-color: rgba(0, 101, 184, 0.952); color: white; height:65px;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"> </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fa-solid fa-bars iconcina"></i>
          </button>



            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link act" aria-current="page" href="#">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">INSERISCI</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Select">VISUALIZZA</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <div class="position-relative" style="margin-top: 220px;">
        <div class="position-absolute top-50 start-50 translate-middle">
            <div class="tracking-in-contract">
                <h1 style="font-family: 'Dela Gothic One', cursive; color: rgb(255, 255, 255); filter: drop-shadow(5px 7px 2px #6f99f5) ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GESTIONE </h1>
                <h1 style="font-family: 'Dela Gothic One', cursive; color: rgb(255, 255, 255); filter: drop-shadow(5px 7px 2px #6f99f5)"> CANDIDATURE</h1>
            </div>
            <img src="img/unnamed.png " class="rounded mx-auto d-block" style="width: 200px; margin-top: 10px; filter: drop-shadow(10px 15px 4px #00000046); ">
        </div>
    </div>


    <footer style="background-color: rgb(0, 101, 184); bottom: 0; width: 100%;  height: 75px; position:absolute;">

        <p class="text-center " style="font-family: Mukta, sans-serif; color: white; position:center; margin-top: 25px">© 2022 3EM Engineering</p>

    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js " integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk " crossorigin="anonymous "></script>
    <script src="https://kit.fontawesome.com/c2b8bef5f3.js " crossorigin="anonymous "></script>
</body>

</html>