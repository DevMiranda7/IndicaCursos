let debounceTimeout;

function buscarCursosComDebounce() {
    clearTimeout(debounceTimeout);
    debounceTimeout = setTimeout(buscarCursos, 300); // 300ms é o tempo ideal
}

function buscarCursos() {
    const termo = document.getElementById("Pesquisar").value;
    const lista = document.getElementById("sugestoes");

    if (termo.length === 0) {
        lista.innerHTML = "";
        lista.style.display = "none";
        return;
    }

    fetch(`buscar-cursos?termo=${encodeURIComponent(termo)}`)
        .then(response => response.json())
        .then(data => {
            lista.innerHTML = "";

            if (data.length === 0) {
                lista.style.display = "none";
                return;
            }

            data.forEach(curso => {
                const item = document.createElement("li");
                item.textContent = curso.nomeDoCurso;
                item.addEventListener("click", () => {
                    window.open(curso.urlDoCurso, "_blank");
                });
                lista.appendChild(item);
            });

            lista.style.display = "block";
        })
        .catch(error => {
            console.error("Erro ao buscar cursos:", error);
        });
}
