<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Maer</title>
</head>
<body>
	<p>{{ $mensaje }}</p>
    <ul>
    	<br>
        <li>Nombre: {{ $nombre }}</li>
        <br>
        <li>Apellido: {{ $apellido }}</li>
        <br>
        <li>Empresa: {{ $empresa }}</li>
        <br>
        <li>Email: {{ $email }}</li>
        <br>
        <a href="mailto:{{ $email }}">
        <button style="    background-color: white;
    height: 39px;
    width: 183px;
    color: #3F3F3F;
    border: 2px solid;
    font-weight: 500;
    font-family: 'Montserrat', sans-serif;
    border-radius: 6px;">
        Responder a cliente     
        </button>
        </a>
    </ul>
</body>
</html>
