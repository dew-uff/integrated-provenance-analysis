%Nome da Base de Conhecimento
dataSet('SciCumulus').
%
%
% entity(Id,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,Nome_Workflow)]).
% Entidade Workflow
entity(w1s,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,'skills')]).
%
%
% entity(Id,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,Nome_Programa)]).
% Entidade Programa
entity(pg1s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'dividir_areas')]).
entity(pg2s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'pontuar_producao')]).
entity(pg3s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'pontuar_titulacao')]).
entity(pg4s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'filtrar_experiencia')]).
entity(pg5s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'pontuar_experiencia')]).
entity(pg6s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'gerar_media')]).
%
%
% entity(Id,[prop(prov:type,['provone:port']),prop(prov:label,Nome_Porta)]).
% Entidade Porta.
entity(pin1s,[prop(prov:type,['provone:port']),prop(prov:label,'imod1act1')]).
entity(pin2s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act1')]).
entity(pout2s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act1')]).
entity(pout3s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act2')]).
entity(pout4s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act3')]).
entity(pin5s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act4')]).
entity(pout5s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act4')]).
entity(pin6s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act5')]).
entity(pout6s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act5')]).
entity(pout7s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act6')]).
%
%
% entity(Id,[prop(prov:type,['provone:data',TipoDado]),prop(prov:label,Nome),prop(prov:value,Valor)]).
% Entidade Dado.
entity(d111s,[prop(prov:type,['provone:data', null]),prop(prov:label,'path'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Curriculum/input/habilidades.xml')]).
entity(d211s,[prop(prov:type,['provone:data', null]),prop(prov:label,'prod'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Curriculum/SciCumulus/exp/producao.xml')]).
entity(d311s,[prop(prov:type,['provone:data', null]),prop(prov:label,'tit'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Curriculum/SciCumulus/exp/titulacao.xml')]).
entity(d411s,[prop(prov:type,['provone:data', null]),prop(prov:label,'exp'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Curriculum/SciCumulus/exp/experiencia.xml')]).
entity(d511s,[prop(prov:type,['provone:data', null]),prop(prov:label,'ptprod'),prop(prov:value,'3')]).
entity(d611s,[prop(prov:type,['provone:data', null]),prop(prov:label,'pttit'),prop(prov:value,'2')]).
entity(d711s,[prop(prov:type,['provone:data', null]),prop(prov:label,'ftexp'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Curriculum/SciCumulus/exp/fexp.xml')]).
entity(d811s,[prop(prov:type,['provone:data', null]),prop(prov:label,'ptexp'),prop(prov:value,'2')]).
entity(d911s,[prop(prov:type,['provone:data', null]),prop(prov:label,'ptprod'),prop(prov:value,'3')]).
entity(d1011s,[prop(prov:type,['provone:data', null]),prop(prov:label,'pttit'),prop(prov:value,'2')]).
entity(d1111s,[prop(prov:type,['provone:data', null]),prop(prov:label,'ptfinal'),prop(prov:value,'7')]).
%
%
% agent(Id,[prop(prov:type,['provone:user']),prop(prov:label,Nome_Agente)]).
% Agente Usuario.
agent(u1s,[prop(prov:type,['provone:user']),prop(prov:label,'wellmor')]).
%
%
% activity(Id,[prop(prov:type,['provone:execution']),prop(prov:label,Nome),prop(prov:startTime,'TempoInicial'),prop(prov:endTime,'TempoFinal'),prop(wfms:completed,Completou)]).
% Atividade Execution. Pode ser definido como a execucao de um programa.
activity(ew11s,[prop(prov:type,['provone:execution']),prop(prov:label,'skills-exec'),prop(prov:startTime,'2017-04-28 19:05:09.56-03'),prop(prov:endTime,'2017-04-28 19:05:11.969-03'),prop(wfms:completed,'1')]).
activity(ex1s,[prop(prov:type,['provone:execution']),prop(prov:label,'dividir_areas'),prop(prov:startTime,'2017-04-28 19:05:09.615-03'),prop(prov:endTime,'2017-04-28 19:05:10.493-03'),prop(wfms:completed,'1')]).
activity(ex2s,[prop(prov:type,['provone:execution']),prop(prov:label,'filtrar_experiencia'),prop(prov:startTime,'2017-04-28 19:05:10.558-03'),prop(prov:endTime,'2017-04-28 19:05:10.819-03'),prop(wfms:completed,'1')]).
activity(ex3s,[prop(prov:type,['provone:execution']),prop(prov:label,'pontuar_titulacao'),prop(prov:startTime,'2017-04-28 19:05:10.857-03'),prop(prov:endTime,'2017-04-28 19:05:11.109-03'),prop(wfms:completed,'1')]).
activity(ex4s,[prop(prov:type,['provone:execution']),prop(prov:label,'pontuar_producao'),prop(prov:startTime,'2017-04-28 19:05:11.146-03'),prop(prov:endTime,'2017-04-28 19:05:11.37-03'),prop(wfms:completed,'1')]).
activity(ex5s,[prop(prov:type,['provone:execution']),prop(prov:label,'pontuar_experiencia'),prop(prov:startTime,'2017-04-28 19:05:11.407-03'),prop(prov:endTime,'2017-04-28 19:05:11.647-03'),prop(wfms:completed,'1')]).
activity(ex6s,[prop(prov:type,['provone:execution']),prop(prov:label,'gerar_media'),prop(prov:startTime,'2017-04-28 19:05:11.722-03'),prop(prov:endTime,'2017-04-28 19:05:11.925-03'),prop(wfms:completed,'1')]).
%
%
% hasInPort(Programa,Porta_Entrada).
% Relacionamento onde um Programa tem Portas de entrada
hasInPort(pg1s,pin1s).
hasInPort(pg2s,pin2s).
hasInPort(pg3s,pin2s).
hasInPort(pg4s,pin2s).
hasInPort(pg5s,pin5s).
hasInPort(pg6s,pin6s).
%
%
% hasOutPort(Programa,Porta_Saida).
% hasInPort(Programa,Porta_Entrada).
% Relacionamento onde um Programa tem Portas de saída
hasOutPort(pg1s,pout2s).
hasOutPort(pg1s,pout2s).
hasOutPort(pg1s,pout2s).
hasOutPort(pg2s,pout3s).
hasOutPort(pg3s,pout4s).
hasOutPort(pg4s,pout5s).
hasOutPort(pg5s,pout6s).
hasOutPort(pg6s,pout7s).
%
%
% hasDefaultParam(Porta_Entrada,Dado).
% Relacionamento onde uma Porta de Entrada tem um dado definido
hasDefaultParam(pin1s,d111s).
%
%
% hasSubProgram(Workflow,Programa).
% Relacionamento onde um Workflow possui Programas
hasSubProgram(w1s,pg1s).
hasSubProgram(w1s,pg2s).
hasSubProgram(w1s,pg3s).
hasSubProgram(w1s,pg4s).
hasSubProgram(w1s,pg5s).
hasSubProgram(w1s,pg6s).
%
%
% hadInPort(Execucao,Porta_Entrada).
% Relacionamento onde uma Execucao tinha Portas de entrada planejadas
hadInPort(ex1s,pin1s).
hadInPort(ex4s,pin2s).
hadInPort(ex3s,pin2s).
hadInPort(ex2s,pin2s).
hadInPort(ex5s,pin5s).
hadInPort(ex6s,pin6s).
%
%
% hadOutPort(Execucao,Porta_Saida).
% hadInPort(Execucao,Porta_Entrada).
% Relacionamento onde uma Execucao tinha Portas de saída planejadas
hadOutPort(ex1s,pout2s).
hadOutPort(ex1s,pout2s).
hadOutPort(ex1s,pout2s).
hadOutPort(ex4s,pout3s).
hadOutPort(ex3s,pout4s).
hadOutPort(ex2s,pout5s).
hadOutPort(ex5s,pout6s).
hadOutPort(ex6s,pout7s).
%
%
% hadPlan(Execucao,Programa).
% Relacionamento onde uma Execucao tinha um Programa como plano
hadPlan(ex1s,pg1s).
hadPlan(ex2s,pg4s).
hadPlan(ex3s,pg3s).
hadPlan(ex4s,pg2s).
hadPlan(ex5s,pg5s).
hadPlan(ex6s,pg6s).
hadPlan(ew11s,w1s).
%
%
% used(Execucao,Dado).
% Relacionamento onde uma Execucao usou um Dado
used(ex1s,d111s).
used(ew11s,d111s).
used(ex2s,d211s).
used(ex3s,d211s).
used(ex4s,d211s).
used(ex2s,d311s).
used(ex3s,d311s).
used(ex4s,d311s).
used(ex2s,d411s).
used(ex3s,d411s).
used(ex4s,d411s).
used(ex5s,d711s).
used(ex6s,d811s).
used(ex6s,d911s).
used(ex6s,d1011s).
%
%
% wasPartOf(Execucao,Execucao_Workflow).
% Relacionamento onde uma Execucao pertencia a (era uma parte de) uma Execucao de Workflow
wasPartOf(ex1s,ew11s).
wasPartOf(ex2s,ew11s).
wasPartOf(ex3s,ew11s).
wasPartOf(ex4s,ew11s).
wasPartOf(ex5s,ew11s).
wasPartOf(ex6s,ew11s).
%
%
% wasAssociatedWith(Execucao_Workflow,Usuario).
% Relacionamento onde uma Execucao de Workflow esta associado a um Usuario
wasAssociatedWith(ew11s,u1s).
%
%
% wasInformedBy(Execucao1,Execucao2).
% Relacionamento onde uma Execucao foi informada por outra Execucao anterior (cadeia de execucao)
wasInformedBy(ex2s,ex1s).
wasInformedBy(ex3s,ex1s).
wasInformedBy(ex4s,ex1s).
wasInformedBy(ex5s,ex4s).
wasInformedBy(ex6s,ex5s).
%
%
% wasGeneratedBy(Dado,Execucao_Workflow).
% Relacionamento onde um Dado foi gerado por uma Execucao
wasGeneratedBy(d211s,ex1s).
wasGeneratedBy(d311s,ex1s).
wasGeneratedBy(d411s,ex1s).
wasGeneratedBy(d511s,ex4s).
wasGeneratedBy(d611s,ex3s).
wasGeneratedBy(d711s,ex2s).
wasGeneratedBy(d811s,ex5s).
wasGeneratedBy(d911s,ex5s).
wasGeneratedBy(d1011s,ex5s).
wasGeneratedBy(d1111s,ex6s).
wasGeneratedBy(d1111s,ew11s).
