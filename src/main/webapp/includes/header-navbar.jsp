<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-default">
	<div class="container">
		<a style="display: flex; align-items: center;" class="navbar-brand"
			href="#"> <i class="fa fa-stumbleupon fa-3x gradient-text"></i>&nbsp;
			&nbsp; <span>NEXUS</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar-default" aria-controls="navbar-default"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbar-default">
			<div class="navbar-collapse-header">
				<div class="row">
					<div class="col-6 collapse-brand">
						<a href="index.html"> <img src="../../img/dumbbell.svg"></a>
					</div>
					<div class="col-6 collapse-close">
						<button type="button" class="navbar-toggler"
							data-toggle="collapse" data-target="#navbar-default"
							aria-controls="navbar-default" aria-expanded="false"
							aria-label="Toggle navigation">
							<span></span> <span></span>
						</button>
					</div>
				</div>
			</div>

			<ul class="navbar-nav ml-lg-auto">
				<li class="nav-item">
					<a class="nav-link " href="#"> <i class="ni ni-book-bookmark"></i> <span>Agendamentos</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link " href="#"> <i class="ni ni-notification-70"></i><span>Fale Conosco</span></a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link nav-link-icon"
					href="#" id="navbar-default_dropdown_1" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fa fa-bars"></i> 
						<span class="nav-link-inner--text d-lg-none">Ações</span>
					</a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbar-default_dropdown_1">
						
						<a class="dropdown-item" href="#"> <i class="ni ni-circle-08"></i>
							Olá, Gustavo
						</a>

						<div class="dropdown-divider"></div>

						<a class="dropdown-item" href="#"><i class="ni ni-single-02"></i>Gerenciar Aluno</a> 
						<a class="dropdown-item" href="#"><i class="ni ni-user-run"></i> Gerenciar Treinos</a> 
						<a class="dropdown-item" href="#"><i class="ni ni-calendar-grid-58"></i> Olhar Calendário</a> 
						<a class="dropdown-item" href="#"><i class="fa fa-user-plus"></i>Novo Usuário</a>

						<div class="dropdown-divider"></div>

						<a class="dropdown-item" href="#"><i class="fa fa-sign-out"></i>Encerrar Sessão</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
</nav>