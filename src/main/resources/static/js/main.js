function openLink() {
    window.location.replace("/authors/all");
}

function previousLink() {
    window.location.replace("/authors");
}

function openLinkBooks() {
    window.location.replace("/books/all");
}

function previousLinkBooks() {
    window.location.replace("/books");
}

function goToAddAuthorPage() {
    window.location.replace("/authors/add")
}

function goToAddBookPage() {
    window.location.replace("/books/add")
}

function goToEditBookPage(id) {
    window.location="/books/edit/" + id;
}

function goToEditAuthorPage(id) {
    window.location="/authors/edit/" + id;
}