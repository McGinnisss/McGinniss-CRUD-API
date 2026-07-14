<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Character Details - Frieren Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/styles.css">
</head>

<body>
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
    <!-- Indepth Character Card --> 
    <div class="card mb-3">
        <div class="row g-0">
            <div class="col-md-4">
                <#if character.base64Image??>
                    <img src="data:image/png;base64,${character.base64Image}" class="card-img-top" alt="${character.name}">
                <#else>
                    <img src="https://via.placeholder.com/400?text=No+Image+Available" class="card-img-top" alt="Placeholder">
                </#if>
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">${character.name}</h5>
                    <p class="card-text">${character.description}</p>
                    <p class="card-text">${character.race}</p>
                    <p class="card-text">${character.chClass}</p>
                    <div class="mt-3">
                        <a href="/characters/edit/${character.characterId}" class="btn btn-warning">Edit Character Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>