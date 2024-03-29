
<%@include file="../cabecalho.jsp" %>

<div class="card ">
    <div class="card-header">
<<<<<<< HEAD
        <h4 class="card-title">Editora</h4>
    </div>
    <div class="card-body">
        <a class="btn btn-primary btn-round text-center" href="add.jsp">
            <i class="tim-icons icon-simple-add"></i> Adiciona
        </a>
        <div class="table-responsive">
            <table class="table tablesorter " id="">
                <thead class=" text-primary">
                    <tr>
                        <th>
                            ID
                        </th>
                        <th>
                            Nome
                        </th>
                        <th>
                            Endere�o
                        </th>
                        <th>
                            Telefone
                        </th>
                        <th>
                            Funda��o
                        </th>
                        <th>
                            Logo
                        </th>
                        <th>
                            Edita
                        </th>
                        <th>
                            Deleta
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${lista}" var="obj">
                    <tr>
                        <td>${obj.id}</td>
                        <td>${obj.nome}</td>
                        <td>${obj.endereco}</td>
                        <td>${obj.telefone}</td>
                        <td><fmt:formatDate pattern="dd/MM/yyyy" value="${obj.fundacao}"></fmt:formatDate></td>
                        <td><img src="../../arquivos/${obj.logo}" style="height: 40px;"></td>
                        <td>
                            <a class="btn btn-info btn-fab btn-icon btn-round" href="EditoraWS?txtAcao=edit&txtId=${obj.id}">
                                <i class="tim-icons icon-pencil"></i>
                            </a>
                        </td>
                        <td>
                            <a class="btn btn-primary btn-fab btn-icon btn-round" href="EditoraWS?txtAcao=del&txtId=${obj.id}">
=======
        <h4 class="card-title">Autor</h4>
    </div>
    <div class="card-body">
        <a class="btn btn-primary btn-round text-center" href="add.jsp">
            <i class="tim-icons icon-simple-add"></i> Adiciona
        </a>
        <div class="table-responsive">
            <table class="table tablesorter " id="">
                <thead class=" text-primary">
                    <tr>
                        <th>
                            ID
                        </th>
                        <th>
                            Nome
                        </th>
                        <th>
                            Nacionalidade
                        </th>
                        <th>
                            Data Nascimento
                        </th>
                        <th>
                            Foto
                        </th>
                        <th>
                            Edita
                        </th>
                        <th>
                            Deleta
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${lista}" var="obj">
                    <tr>
                        <td>${obj.id}</td>
                        <td>${obj.nome}</td>
                        <td>${obj.nacionalidade}</td>
                        <td><fmt:formatDate pattern="dd/MM/yyyy" value="${obj.datanasc}"></fmt:formatDate></td>
                        <td><img src="../../arquivos/${obj.foto}" style="height: 40px;"></td>
                        <td>
                            <a class="btn btn-info btn-fab btn-icon btn-round" href="AutorWS?txtAcao=edit&txtId=${obj.id}">
                                <i class="tim-icons icon-pencil"></i>
                            </a>
                        </td>
                        <td>
                            <a class="btn btn-primary btn-fab btn-icon btn-round" href="AutorWS?txtAcao=del&txtId=${obj.id}">
>>>>>>> origin/master
                                <i class="tim-icons icon-trash-simple"></i>
                            </a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
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

<%@include file="../rodape.jsp" %>
