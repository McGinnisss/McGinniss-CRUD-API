<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Character - Frieren Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
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
    <div class="card mx-auto" style="width: 100rem; max-width: 100%;">
        <div class="card-body">
        <h5 class="card-title text-center">Add a New Character</h5>
     
        <form class="row g-3" action="/characters/add/new" method="POST" enctype="multipart/form-data">
            <div class="col-md-6">
                <label class="form-label">Character Name</label>
                <input type="text" name="name" class="form-control" placeholder="Name" required>
            </div>
            <div class="col-md-6">
                <label class="form-label">Race</label>
                <input type="text" name="race" class="form-control" placeholder="Human, Elf, etc." required>
            </div>
            <div class="col-md-12">
                <label class="form-label">Class</label>
                <input type="text" name="chClass" class="form-control" placeholder="Mage, Warrior, Priest, etc." required>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Character Description</label>
                <textarea name="description" class="form-control" id="description" rows="3" required></textarea>
            </div>
            <div class="mb-3">
                <label for="imageFile" class="form-label fw-bold">Character Image</label>
                <input type="file" name="imageFile" class="form-control rounded-0" id="imageFile" accept="image/*" required>
                <div class="form-text">Upload a character image file (PNG, JPG, WebP).</div>
            </div>

            <div class="col-12">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    <!--    <form class="row g-3">
        <div class="col-md-6">
            <label class="form-label">Character Name</label>
            <input type="text" class="form-control" placeholder="Name" aria-label="Name">
        </div>
        <div class="col-md-6">
            <label class="form-label">Race</label>
            <input type="text" class="form-control" placeholder="Human, elf, etc." aria-label="Race">
        </div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Character Description</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
        <div class="mb-3">
            <label for="imageUrl" class="form-label fw-bold">Character Image URL</label>
            <input type="url" class="form-control rounded-0" id="imageUrl" placeholder="https://example.com/character-image.png" required>
            <div class="form-text">Paste a direct link to an image file (PNG, JPG, WebP).</div>
        </div>

        <div class="col-12">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form> -->
    </div>
</body>
</html>