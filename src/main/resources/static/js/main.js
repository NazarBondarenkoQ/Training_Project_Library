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

document.getElementById("add_author_form").style.display ="none";

function openTest() {
    document.getElementById("add_author_form").style.display = "block";
}

document.getElementById('btn').addEventListener('click', openTest);