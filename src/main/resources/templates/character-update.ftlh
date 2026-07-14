<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${pageTitle}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
            <h2 class="mb-4">Update ${character.name}</h2>
            <form class="row g-3" action="/characters/edit/${character.characterId}" method="POST" enctype="multipart/form-data">
                <div class="col-md-6">
                    <label class="form-label">Character Name</label>
                    <input type="text" name="name" class="form-control" value="${character.name}" required>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Race</label>
                    <input type="text" name="race" class="form-control" value="${character.race}" required>
                </div>
                <div class="col-md-12">
                    <label class="form-label">Class</label>
                    <input type="text" name="chClass" class="form-control" value="${character.chClass}" required>
                </div>               
                <div class="mb-3">
                    <label class="form-label">Character Description</label>
                    <textarea name="description" class="form-control" rows="3" required>${character.description}</textarea>
                </div>                
                <div class="mb-3">
                    <label class="form-label fw-bold">Update Character Image (Optional)</label>
                    <input type="file" name="imageFile" class="form-control" accept="image/*">
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-success">Save Changes</button>
                    <a href="/characters/delete/${character.characterId}" class="btn btn-danger">Delete Character</a>
                    <a href="/characters/${character.characterId}" class="btn btn-secondary">Cancel</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>