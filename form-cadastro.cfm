	<section class="bg-cinza">
		<div class="hidden-xs">
			<br /><br /><br /><br /><br /><br />
		</div>
		<div class="container" id="formulario-curso">
			<h2>Formulário de cadastro</h2>
			<p>Preencha o formulário abaixo para realizar seu cadastro:</p>
		
			<form action="src/cadastro.cfm" method="POST">
				<div class="row">
					<div class="col-xs-12 col-sm-6">
						<input name="nome" placeholder="Nome*" />
						<input name="email" placeholder="E-mail*" />
						<select name="estado" id="estado">
							<option value="">Selecione o Estado</option>
							<option value="AC">AC</option>
							<option value="AL">AL</option>
							<option value="AM">AM</option>
							<option value="AP">AP</option>
							<option value="BA">BA</option>
							<option value="CE">CE</option>
							<option value="DF">DF</option>
							<option value="ES">ES</option>
							<option value="GO">GO</option>
							<option value="MA">MA</option>
							<option value="MG">MG</option>
							<option value="MS">MS</option>
							<option value="MT">MT</option>
							<option value="PA">PA</option>
							<option value="PB">PB</option>
							<option value="PE">PE</option>
							<option value="PI">PI</option>
							<option value="PR">PR</option>
							<option value="RJ">RJ</option>
							<option value="RN">RN</option>
							<option value="RO">RO</option>
							<option value="RR">RR</option>
							<option value="RS">RS</option>
							<option value="SC">SC</option>
							<option value="SE">SE</option>
							<option value="SP">SP</option>
							<option value="TO">TO</option>
			            </select>
						<input type="cidade" placeholder="Cidade*">
						<input type="endereco" placeholder="Endereço*">
						<input type="cep" placeholder="Cep(000-00)*">
						<input type="numero" placeholder="Número*">
					</div>
					<div class="col-xs-12 col-sm-6">
						<input name="nascimento" placeholder="Nascimento*" />
						<select name="conhecimento" id="conhecimento">
						    <option value="">Como conheceu a ENG?</option>
						    <option value="1">Email</option>
						    <option value="2">Indicação de Aluno</option>
						    <option value="3">Catálogo</option>
						    <option value="4">Design Gráfico</option>
						    <option value="5">Digital Designer</option>
						    <option value="6">Evento MM</option>
						    <option value="7">Evento ENG</option>
						    <option value="8">Fenasoft</option>
						    <option value="9">Amigo da ENG</option>
						    <option value="10">Site MM</option>
						    <option value="11">Site ENG</option>
						    <option value="12">Sites de Busca</option>
						    <option value="13">Site SWF</option>
						    <option value="14">Site Flash4</option>
						    <option value="15">Site Kursos</option>
						    <option value="16">Google</option>
						    <option value="17">Contato Ativo</option>
						    <option value="18">Visita Externa</option>
						    <option value="19">Evento COREL</option>
						    <option value="20">Evento de Terceiros</option>
						    <option value="21">Comercial</option>
						 </select>
						 <input type="empresa" placeholder="Empresa*">
						 <select name="cargo" id="cargo">
						    <option value="">Selecione seu cargo</option>
						    <option value="1">Analista de Sistemas</option>
						    <option value="2">Comprador</option>
						    <option value="3">Web Designer</option>
						    <option value="4">Web Master</option>
						    <option value="5">Sócio/Gerente</option>
						    <option value="6">Programador</option>
						    <option value="7">Estudante</option>
						    <option value="8">Universitário</option>
						    <option value="9">Desempregado</option>
						    <option value="10">Outros</option>
						    <option value="11">Resp. E-Learning</option>
						    <option value="12">Contratos de Treinamento</option>
						    <option value="13">Instrutor</option>
						    <option value="14">Advogado</option>
						    <option value="15">Engenheiro Civil</option>
						    <option value="16">Engenheiro Mecânico</option>
						    <option value="17">Engenheriro de Produção</option>
						    <option value="18">Engenheiro Aeronáutico</option>
						    <option value="19">Cadista</option>
						    <option value="20">Designer de Produto</option>
						    <option value="21">Designer Gráfico</option>
						    <option value="22">Professor Universitário</option>
						    <option value="23">Gerente de TI</option>
						    <option value="24">Desenvolvedor</option>
						    <option value="25"></option>
						</select>
						<input type="telefoneFixo" placeholder="Telefone Fixo*">
						<input type="telefoneCelular" placeholder="Telefone Celular*">
					</div>

					<div class="col-xs-12 col-sm-6">
						<button type="submit" class="botao enviar">ENVIAR</button>
					</div>
				</div>
			</form>
		</div>
	</section>
