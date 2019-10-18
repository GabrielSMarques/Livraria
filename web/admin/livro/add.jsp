<%@include file="../cabecalho.jsp" %>
<div class="card">
    <div class="card-header">
        <h5 class="title">Adiciona Livro</h5>
    </div>
    <div class="card-body">
        <!--MODIFICAR PARA ADD-->
        <form action="UploadWS" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="urldestino" value="LivroWS">
            <div class="row">
                <div class="col-md-12 pr-md-1">
                    <div class="form-group">
                        <label>Nome</label>
                        <input type="text" name="txtNome" required class="form-control" placeholder="Titulo" >
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 pr-md-1">
                    <div class="form-group">
                        <label>Editora</label>
                        <select class="form-control" >
                            <c:forEach items="${editoras}" var="obj">
                            <option value="${obj.id}">${obj.nome}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 pr-md-1">
                    <div class="form-group">
                        <label>Genero</label>
                        <select class="form-control" name="txtGenero" multiple>
                            <c:forEach items="${generos}" var="obj">
                            <option value="${obj.id}">${obj.nome}</option>
                            </c:forEach>
                            </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 pr-md-1">
                    <div class="form-group">
                        <label>Autores</label>
                        <div class="row">
                            <c:forEach items="${autores}" var="obj">
                            <div class="col-md-3">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" value="${obj.id}" id="u${obj.id}" class="custom-control-input" name="txtAutores">
                                    <label class="custom-control-label" for="u${obj.id}">${obj.nome}</label>
                                </div> 
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12 pr-md-1">
                    <div class="form-group">
                        <label>Páginas</label>
                        <input type="number" name="txtPagina" required class="form-control" placeholder="Número de Páginas" >
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12 pr-md-1">
                    <div class="form-group">
                        <label>ISBN</label>
                        <input type="number" name="txtIsbn" required class="form-control" placeholder="ISBN" >
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12 pr-md-1">
                    <div class="form-group">
                        <label>Idioma</label>
                        <select name="txtIdioma" required class="form-control"> 
                            <option>        </option>>
                            <option>Português</option>
                            <option>Espanhol</option>
                            <option>Inglês</option>
                            <option>Chinês</option>
                            <option>Japônes</option>
                        </select>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12 pr-md-1">
                    <div class="form-group">
                        <label>Data de Publicação</label>
                        <input type="Date" name="txtLancamento" required class="form-control" placeholder="Data de Publicação">
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12 pr-md-1">
                    <div class="form-group">
                        <label>Sinopse</label>
                        <textarea  name="txtSinopse" rows="3" cols="5" class="form-control" placeholder="Sinopse"></textarea>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group-file">
                        <label for="file">Capa</label>
                        <input type="file" name="txtFoto1" required class="form-control form-control-file">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group-file">
                        <label for="file">Foto</label>
                        <input type="file" name="txtFoto2" required class="form-control form-control-file">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group-file">
                        <label for="file">Foto</label>
                        <input type="file" name="txtFoto3" required class="form-control form-control-file">
                    </div>
                </div>
            </div>

            <button class="btn btn-primary btn-round text-center" type="submit">
                <i class="tim-icons icon-cloud-upload-94"></i> Salvar
            </button>
            <a class="btn btn-primary btn-round text-center" href="EditoraWS?acao=list">
                <i class="tim-icons icon-bullet-list-67"></i> Listar
            </a>
        </form>
    </div>

    <div class="card-footer">
        <c:if test="${msg != null}">
            <div class="alert alert-primary alert-dismissible fade show" role="alert">
                ${msg}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                </button>
            </div>
        </c:if>
    </div>
</div>
</div>
<%@include file="../rodape.jsp" %>
