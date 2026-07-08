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
            <a class="navbar-brand fw-bold" href="index.html"> Frieren Gallery</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link active" href="index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="details.html">Details</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="new-character-form.html">Add a Character</a></li>
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
            <div class="col-12 col-md-6 col-lg-4 mb-4 d-flex justify-content-center">
                <div class="card" style="width: 18rem;">
                    <img src="Frieren_anime_profile.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Frieren</h5>
                        <p class="card-text">Elf, Mage, formerly a part of the Hero’s party, is now a part of Frieren’s party.</p>
                        <a href="details.html" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4 mb-4 d-flex justify-content-center">
                <div class="card" style="width: 18rem;">
                    <img src="Himmel_anime_profile.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Himmel</h5>
                        <p class="card-text">Human, Hero, the Hero of the Hero’s party.</p>
                        <a href="details.html" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4 mb-4 d-flex justify-content-center">
                <div class="card" style="width: 18rem;">
                    <img src="Heiter_anime_profile.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Heiter</h5>
                        <p class="card-text">Human, Priest, a part of the Hero’s party. </p>
                        <a href="details.html" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4 mb-4 d-flex justify-content-center">
                <div class="card" style="width: 18rem;">
                    <img src="Eisen_anime_profile.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Eisen</h5>
                        <p class="card-text">Dwarf, Warrior, a part of the Hero’s party. </p>
                        <a href="details.html" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4 mb-4 d-flex justify-content-center">
                <div class="card" style="width: 18rem;">
                    <img src="Fern_anime_profile.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Fern</h5>
                        <p class="card-text">Human, Mage, a part of the Hero’s party. </p>
                        <a href="details.html" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4 mb-4 d-flex justify-content-center">
                <div class="card" style="width: 18rem;">
                    <img src="Stark_anime_profile.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Stark</h5>
                        <p class="card-text">Human, Warrior, a part of Frieren’s party.</p>
                        <a href="details.html" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>