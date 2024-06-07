<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="WebApplication1.Gallery" %>

<!DOCTYPE html>

<html>
<head>
    <title>Gallery</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /* Style the grid */
        .gallery {
          display: grid;
          grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
          grid-gap: 10px;
          margin-top: 50px;
        }
        
        /* Style the images */
        .gallery img {
          max-width: 100%;
          height: auto;
          cursor: pointer;
        }
        
        /* Style the modal */
        .modal {
          display: none;
          position: fixed;
          z-index: 1;
          left: 0;
          top: 0;
          width: 100%;
          height: 100%;
          overflow: auto;
          background-color: rgba(0,0,0,0.9);
        }
        
        /* Style the modal content */
        .modal-content {
          margin: auto;
          display: block;
          width: 80%;
          max-width: 700px;
        }
        
        /* Style the close button */
        .close {
          color: white;
          position: absolute;
          top: 10px;
          right: 25px;
          font-size: 35px;
          font-weight: bold;
          transition: 0.3s;
        }
        
        .close:hover,
        .close:focus {
          color: #bbb;
          text-decoration: none;
          cursor: pointer;
        }
        
        /* Style the caption */
        .caption {
          margin: auto;
          display: block;
          width: 80%;
          max-width: 700px;
          text-align: center;
          color: #ccc;
          padding: 10px 0;
          height: 150px;
        }
        
        /* Add Animation */
        .modal-content, .caption {
          animation-name: zoom;
          animation-duration: 0.6s;
        }
        
        @keyframes zoom {
          from {transform:scale(0)}
          to {transform:scale(1)}
        }
    </style>
</head>
<body>
    <div class="gallery">
        <%-- Image 1 --%>
        <div class="image-container">
            <img class="myImg" src="cl3.jpg" alt="Image 1">
        </div>
        
        <%-- Image 2 --%>
        <div class="image-container">
            <img class="myImg" src="cl2.jpg" alt="Image 2">
        </div>
        
        <%-- Image 3 --%>
        <div class="image-container">
            <img class="myImg" src="clg.jpg" alt="Image 3">
        </div>
        
        <%-- Add more images here --%>
    </div>

    <%-- The Modal --%>
    <div id="myModal" class="modal">
        <span class="close">&times;</span>
        <img class="modal-content" id="img01">
        <div id="caption" class="caption"></div>
    </div>

    <script>
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the image and insert it inside the modal