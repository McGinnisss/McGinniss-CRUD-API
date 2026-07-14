<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Frieren: Beyond Journey's End Character Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>


    <body class="p-0 m-0 d-flex flex-column min-vh-100 w-100">
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="/"> Frieren Gallery</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="/characters/add/new">Add a Character</a></li>
                </ul>
            </div>
        </div>
    </nav>


    <!-- Main Content -->
    <!-- Introduction Text -->    
    <div style="background-color:black;color:white;padding:20px;">
        <h2 class="text-center">Character Gallery</h2>
        <p class="text-center">This is a gallery of characters from the anime Frieren: Beyond Journey's End. Click on a character to learn more about them.
        </p>
    </div>
    <!-- Search Bar -->    
    <div class="card rounded-0 bg-dark mb-4">
        <div class="card-body">
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search Characters" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>

    <!-- Character Cards --> 
    <div class="container-fluid px-4 text-center">
        <div class="row justify-content-center align-items-start g-4">
            <#list characterList as character>
                <div class="col-12 col-md-6 col-lg-4 mb-4 d-flex justify-content-center">
                    <div class="card" style="width: 18rem;">
                            <#if character.base64Image??>
                                <img src="data:image/png;base64,${character.base64Image}" class="card-img-top" alt="${character.name}">
                            <#else>
                                <img src="https://via.placeholder.com/400?text=No+Image+Available" class="card-img-top" alt="Placeholder">
                            </#if>
                        <div class="card-body">
                            <h5 class="card-title">${character.name}</h5>
                            <p class="card-text">${character.description}</p>
                            <a href="/characters/${character.characterId}" class="btn btn-primary">Learn More</a>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</body>
</html>