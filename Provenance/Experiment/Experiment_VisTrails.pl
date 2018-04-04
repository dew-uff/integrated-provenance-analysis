%Nome da Base de Conhecimento
dataSet('VisTrails').
%
%
% entity(Id,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,Nome_Workflow)]).
% Entidade Workflow
entity(w1v,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,'Curriculum')]).
%
%
% entity(Id,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,Nome_Program)]).
% Entidade Programa
entity(pg71v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Avaliacao_Final')]).
entity(pg61v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Avaliacao_Academica')]).
entity(pg51v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Avaliacao_Profissional')]).
entity(pg41v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Avaliar_Producao')]).
entity(pg31v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Filtrar_Producao')]).
entity(pg01v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Separar_Secoes')]).
%
%
% entity(Id,[prop(prov:type,['provone:port']),prop(prov:label,Nome_Port)]).
% Entidade Porta.
entity(pin01v,[prop(prov:type,['provone:port']),prop(prov:label,'source')]).
entity(pin41v,[prop(prov:type,['provone:port']),prop(prov:label,'source')]).
entity(pin61v,[prop(prov:type,['provone:port']),prop(prov:label,'source')]).
entity(pin71v,[prop(prov:type,['provone:port']),prop(prov:label,'source')]).
entity(pin81v,[prop(prov:type,['provone:port']),prop(prov:label,'source')]).
entity(pin91v,[prop(prov:type,['provone:port']),prop(prov:label,'source')]).
entity(pin111v,[prop(prov:type,['provone:port']),prop(prov:label,'curriculo')]).
entity(pout201v,[prop(prov:type,['provone:port']),prop(prov:label,'pontos_academia')]).
entity(pin211v,[prop(prov:type,['provone:port']),prop(prov:label,'pontos_academia')]).
entity(pout221v,[prop(prov:type,['provone:port']),prop(prov:label,'pontos_profissao')]).
entity(pin231v,[prop(prov:type,['provone:port']),prop(prov:label,'pontos_profissao')]).
entity(pout621v,[prop(prov:type,['provone:port']),prop(prov:label,'artigo')]).
entity(pin631v,[prop(prov:type,['provone:port']),prop(prov:label,'artigo')]).
entity(pout761v,[prop(prov:type,['provone:port']),prop(prov:label,'pontos_producao')]).
entity(pin771v,[prop(prov:type,['provone:port']),prop(prov:label,'pontos_producao')]).
entity(pout1261v,[prop(prov:type,['provone:port']),prop(prov:label,'producao')]).
entity(pin1271v,[prop(prov:type,['provone:port']),prop(prov:label,'producao')]).
entity(pout1281v,[prop(prov:type,['provone:port']),prop(prov:label,'profissao')]).
entity(pin1291v,[prop(prov:type,['provone:port']),prop(prov:label,'profissao')]).
entity(pout1301v,[prop(prov:type,['provone:port']),prop(prov:label,'academia')]).
entity(pin1311v,[prop(prov:type,['provone:port']),prop(prov:label,'academia')]).
%
%
% entity(Id,[prop(prov:type,['provone:data',TipoDado]),prop(prov:label,Nome),prop(prov:value,Valor)]).
% Entidade Dado.
entity(d581v,[prop(prov:type,['provone:data','String']),prop(prov:label,'source'),prop(prov:value,'import%20bs4%20as%20bs%0A%0Asoup%20%3D%20bs.BeautifulSoup%28str%28producao%29%2C%20%27lxml%27%29%0Aartigo%20%3D%20soup.findAll%28%27artigo%27%29%0A%0Aprint%28artigo%29')]).
entity(d671v,[prop(prov:type,['provone:data','String']),prop(prov:label,'source'),prop(prov:value,'import%20bs4%20as%20bs%0A%0A%23dividir%20academia%2C%20experiencia%2C%20produ%C3%A7%C3%A3o%20em%203%20arquivos%20XML%0Axml_file%20%3D%20open%28curriculo%2C%20%27r%27%29%0Axml%20%3D%20xml_file.read%28%29%0Asoup%20%3D%20bs.BeautifulSoup%28xml%2C%20%27lxml%27%29%0Adados_pessoais%20%3D%20soup.dados_pessoais%0Aacademia%20%3D%20soup.academia%0Aprofissao%20%3D%20soup.experiencia%0Aproducao%20%3D%20soup.producao%0A')]).
entity(d681v,[prop(prov:type,['provone:data','String']),prop(prov:label,'source'),prop(prov:value,'import%20bs4%20as%20bs%0A%0Asoup%20%3D%20bs.BeautifulSoup%28str%28artigo%29%2C%20%27lxml%27%29%0Apontos_producao%20%3D%20len%28soup.findAll%28%27artigo%27%29%29%0A%0Aif%20pontos_producao%20%3E%203%3A%0A%20%20%20pontos_producao%20%3D%203%20%0A%20%20%20%20%20%20%20%20%20%20%20%0Aprint%28pontos_producao%29')]).
entity(d691v,[prop(prov:type,['provone:data','String']),prop(prov:label,'source'),prop(prov:value,'import%20bs4%20as%20bs%0A%0Asoup%20%3D%20bs.BeautifulSoup%28str%28academia%29%2C%20%27lxml%27%29%0Apontos_academia%20%3D%20len%28soup.findAll%28%27titulacao%27%29%29%0A%0Aif%20pontos_academia%20%3E%203%3A%0A%20%20%20pontos_academia%20%3D%203%20%0A%0Aprint%28pontos_academia%29%0A%0A')]).
entity(d701v,[prop(prov:type,['provone:data','String']),prop(prov:label,'source'),prop(prov:value,'import%20bs4%20as%20bs%0A%0Asoup%20%3D%20bs.BeautifulSoup%28str%28profissao%29%2C%20%27lxml%27%29%0Apontos_profissao%20%3D%200%0A%0Afor%20data%20in%20soup.findAll%28%27tempo%27%29%3A%0A%20%20%20pontos_profissao%20%2B%3D%20int%28data.string%29%0A%0Aif%20pontos_profissao%20%3E%204%3A%0A%20%20%20pontos_profissao%20%3D%204%20%20%20%0A%0Aprint%28pontos_profissao%29%0A%0A')]).
entity(d731v,[prop(prov:type,['provone:data','String']),prop(prov:label,'curriculo'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Curriculum/input/curriculo.xml')]).
entity(d741v,[prop(prov:type,['provone:data','String']),prop(prov:label,'source'),prop(prov:value,'resultado%20%3D%20pontos_profissao%20%2B%20pontos_academia%20%2B%20pontos_producao%0Anota_final%20%3D%20str%28resultado%29%0Aprint%28nota_final%29%0A')]).
entity(d742v,[prop(prov:type,['provone:data','String']),prop(prov:label,'curriculo'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Curriculum/VisTrails/PontuacaoFinal.txt')]).
%
%
% agent(Id,[prop(prov:type,['provone:user']),prop(prov:label,Nome_Agente)]).
% Agente Usuario.
agent(u11v,[prop(prov:type,['provone:user']),prop(prov:label,'wellmor')]).
%
%
% activity(Id,[prop(prov:type,['provone:execution']),prop(prov:label,Nome),prop(prov:startTime,'TempoInicial'),prop(prov:endTime,'TempoFinal'),prop(wfms:completed,Completou)]).
% Atividade Execution. Pode ser definido como a execucao de um programa.
activity(ex11v,[prop(prov:type,['provone:execution']),prop(prov:label,'Separar_Secoes'),prop(prov:startTime,'2017-04-21 13:34:23.0'),prop(prov:endTime,'2017-04-21 13:34:24.0'),prop(wfms:completed,'1')]).
activity(ex21v,[prop(prov:type,['provone:execution']),prop(prov:label,'Filtrar_Producao'),prop(prov:startTime,'2017-04-21 13:34:24.0'),prop(prov:endTime,'2017-04-21 13:34:25.0'),prop(wfms:completed,'1')]).
activity(ex31v,[prop(prov:type,['provone:execution']),prop(prov:label,'Avaliar_Producao'),prop(prov:startTime,'2017-04-21 13:34:25.0'),prop(prov:endTime,'2017-04-21 13:34:26.0'),prop(wfms:completed,'1')]).
activity(ex41v,[prop(prov:type,['provone:execution']),prop(prov:label,'Avaliacao_Academica'),prop(prov:startTime,'2017-04-21 13:34:26.0'),prop(prov:endTime,'2017-04-21 13:34:27.0'),prop(wfms:completed,'1')]).
activity(ex51v,[prop(prov:type,['provone:execution']),prop(prov:label,'Avaliacao_Profissional'),prop(prov:startTime,'2017-04-21 13:34:27.0'),prop(prov:endTime,'2017-04-21 13:34:28.0'),prop(wfms:completed,'1')]).
activity(ex61v,[prop(prov:type,['provone:execution']),prop(prov:label,'Avaliacao_Final'),prop(prov:startTime,'2017-04-21 13:34:28.0'),prop(prov:endTime,'2017-04-21 13:34:29.0'),prop(wfms:completed,'1')]).
activity(ew11v,[prop(prov:type,['provone:execution']),prop(prov:label,'Curriculum_Exec'),prop(prov:startTime,'2017-04-21 13:34:23.0'),prop(prov:endTime,'2017-04-21 13:34:29.0'),prop(wfms:completed,'1')]).
%
%
% hasInPort(Programa,Porta_Entrada).
% Relacionamento onde um Programa tem Portas de entrada
hasInPort(pg41v,pin631v).
hasInPort(pg31v,pin1271v).
hasInPort(pg71v,pin231v).
hasInPort(pg71v,pin211v).
hasInPort(pg71v,pin771v).
hasInPort(pg61v,pin1311v).
hasInPort(pg51v,pin1291v).
hasInPort(w1v,pin01v).
hasInPort(pg01v,pin01v).
hasInPort(pg31v,pin41v).
hasInPort(pg41v,pin61v).
hasInPort(pg71v,pin71v).
hasInPort(pg61v,pin81v).
hasInPort(pg51v,pin91v).
hasInPort(w1v,pin111v).
hasInPort(pg01v,pin111v).
%
%
% hasOutPort(Programa,Porta_Saida).
% Relacionamento onde um Programa tem Portas de saida
hasOutPort(pg31v,pout621v).
hasOutPort(pg01v,pout1261v).
hasOutPort(pg51v,pout221v).
hasOutPort(pg61v,pout201v).
hasOutPort(pg41v,pout761v).
hasOutPort(pg01v,pout1301v).
hasOutPort(pg01v,pout1281v).
%
%
% hasDefaultParam(Porta_Entrada,Dado).
% Relacionamento onde uma Porta de Entrada tem um dado definido
hasDefaultParam(pin71v,d741v).
hasDefaultParam(pin81v,d691v).
hasDefaultParam(pin91v,d701v).
hasDefaultParam(pin61v,d681v).
hasDefaultParam(pin41v,d581v).
hasDefaultParam(pin01v,d671v).
hasDefaultParam(pin111v,d731v).
%
%
% hasSubProgram(Workflow,Programa).
% Relacionamento onde um Workflow possui Programas
hasSubProgram(w1v,pg71v).
hasSubProgram(w1v,pg61v).
hasSubProgram(w1v,pg51v).
hasSubProgram(w1v,pg41v).
hasSubProgram(w1v,pg31v).
hasSubProgram(w1v,pg01v).
%
%
% hadInPort(Execucao,Porta_Entrada).
% Relacionamento onde uma Execucao tinha Portas de entrada planejadas
hadInPort(ex31v,pin631v).
hadInPort(ex21v,pin1271v).
hadInPort(ex61v,pin231v).
hadInPort(ex61v,pin211v).
hadInPort(ex61v,pin771v).
hadInPort(ex41v,pin1311v).
hadInPort(ex51v,pin1291v).
hadInPort(ew11v,pin01v).
hadInPort(ex11v,pin01v).
hadInPort(ew11v,pin111v).
hadInPort(ex11v,pin111v).
hadInPort(ex21v,pin41v).
hadInPort(ex31v,pin61v).
hadInPort(ex41v,pin81v).
hadInPort(ex51v,pin91v).
hadInPort(ex61v,pin71v).
%
%
% hadOutPort(Execucao,Porta_Saida).
% Relacionamento onde uma Execucao tinha Portas de saida planejadas
hadOutPort(ex21v,pout621v).
hadOutPort(ex11v,pout1261v).
hadOutPort(ex51v,pout221v).
hadOutPort(ex41v,pout201v).
hadOutPort(ex31v,pout761v).
hadOutPort(ex11v,pout1301v).
hadOutPort(ex11v,pout1281v).
%
%
% hadPlan(Execucao,Programa).
% Relacionamento onde uma Execucao tinha um Programa como plano
hadPlan(ex61v,pg71v).
hadPlan(ex41v,pg61v).
hadPlan(ex51v,pg51v).
hadPlan(ex31v,pg41v).
hadPlan(ex21v,pg31v).
hadPlan(ex11v,pg01v).
hadPlan(ew11v,w1v).
%
%
% used(Execucao,Dado).
% Relacionamento onde uma Execucao usou um Dado
used(ew11v,d731v).
used(ex11v,d731v).
used(ex11v,d671v).
used(ex21v,d581v).
used(ex31v,d681v).
used(ex41v,d691v).
used(ex51v,d701v).
used(ex61v,d741v).
%
%
% wasPartOf(Execucao,Execucao_Workflow).
% Relacionamento onde uma Execucao pertencia a (era uma parte de) uma Execucao de Workflow
wasPartOf(ex61v,ew11v).
wasPartOf(ex51v,ew11v).
wasPartOf(ex41v,ew11v).
wasPartOf(ex31v,ew11v).
wasPartOf(ex21v,ew11v).
wasPartOf(ex11v,ew11v).
%
%
% wasAssociatedWith(Execucao_Workflow,Usuario).
% Relacionamento onde uma Execucao de Workflow esta associado a um Usuario
wasAssociatedWith(ew11v,u11v).
%
%
% wasInformedBy(Execucao1,Execucao2).
% Relacionamento onde uma Execucao foi informada por outra Execucao anterior (cadeia de execucao)
wasInformedBy(ex61v,ex41v).
wasInformedBy(ex61v,ex51v).
wasInformedBy(ex31v,ex21v).
wasInformedBy(ex61v,ex31v).
wasInformedBy(ex21v,ex11v).
wasInformedBy(ex51v,ex11v).
wasInformedBy(ex41v,ex11v).
%
%
% wasGeneratedBy(Dado,Execucao_Workflow).
% Relacionamento onde um Dado foi gerado por uma Execucao
wasGeneratedBy(d742v,ew11v).









