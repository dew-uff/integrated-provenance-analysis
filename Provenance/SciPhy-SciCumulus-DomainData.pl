:- discontiguous(dataSet/2).
:- discontiguous(hasDataSet/2).
:- discontiguous(hadDataSet/2).
:- discontiguous(entity/2).
:- discontiguous(activity/2).
:- discontiguous(agent/2).
:- discontiguous(hasInPort/2).
:- discontiguous(hasOutPort/2).
:- discontiguous(hadInPort/2).
:- discontiguous(hadOutPort/2).
:- discontiguous(hasDefaultParam/2).
:- discontiguous(hasSubProgram/2).
:- discontiguous(hadPlan/2).
:- discontiguous(used/2).
:- discontiguous(wasPartOf/2).
:- discontiguous(wasGeneratedBy/2).
:- discontiguous(wasInformedBy/2).
:- discontiguous(wasPartOf/2).
:- discontiguous(wasAssociatedWith/2).
dataSet(2,'SciCumulus').
entity(w1s,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,'sciphy')]).
hasDataSet(w1s, 2).
entity(pg1s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'dataselection')]).
entity(pg2s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'mafft')]).
entity(pg3s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'readseq')]).
entity(pg4s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'modelgenerator')]).
entity(pg5s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'raxml1')]).
entity(pg6s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'raxml2')]).
entity(pg7s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'mergeRaxml')]).
entity(pg8s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'raxml3')]).
entity(pin1s,[prop(prov:type,['provone:port']),prop(prov:label,'idataselection')]).
entity(pint2s,[prop(prov:type,['provone:port']),prop(prov:label,'odataselection')]).
entity(pint3s,[prop(prov:type,['provone:port']),prop(prov:label,'omafft')]).
entity(pint4s,[prop(prov:type,['provone:port']),prop(prov:label,'oreadseq')]).
entity(pint5s,[prop(prov:type,['provone:port']),prop(prov:label,'omodelgenerator')]).
entity(pint6s,[prop(prov:type,['provone:port']),prop(prov:label,'oraxml1')]).
entity(pint7s,[prop(prov:type,['provone:port']),prop(prov:label,'oraxml2')]).
entity(pint8s,[prop(prov:type,['provone:port']),prop(prov:label,'omergeraxml')]).
entity(pout9s,[prop(prov:type,['provone:port']),prop(prov:label,'oraxml3')]).
hasSubProgram(w1s,pg1s).
hasSubProgram(w1s,pg2s).
hasSubProgram(w1s,pg3s).
hasSubProgram(w1s,pg4s).
hasSubProgram(w1s,pg5s).
hasSubProgram(w1s,pg6s).
hasSubProgram(w1s,pg7s).
hasSubProgram(w1s,pg8s).
hasOutPort(pg1s,pint2s).
hasOutPort(pg2s,pint3s).
hasOutPort(pg3s,pint4s).
hasOutPort(pg4s,pint5s).
hasOutPort(pg4s,pint5s).
hasOutPort(pg5s,pint6s).
hasOutPort(pg6s,pint7s).
hasOutPort(pg7s,pint8s).
hasOutPort(pg8s,pout9s).
hasInPort(pg1s,pin1s).
hasInPort(pg2s,pint2s).
hasInPort(pg3s,pint3s).
hasInPort(pg4s,pint4s).
hasInPort(pg5s,pint5s).
hasInPort(pg6s,pint5s).
hasInPort(pg7s,pint6s).
hasInPort(pg7s,pint7s).
hasInPort(pg8s,pint8s).
entity(dc1s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc6s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc12s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE12'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc13s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE13'),prop(prov:value,'ORTHOMCL256.mafft')]).
entity(dc14s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE14'),prop(prov:value,'dlmafft.data')]).
entity(dc21s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc20s,[prop(prov:type,['provone:document']),prop(prov:label,'MAFFT_FILE'),prop(prov:value,'ORTHOMCL256.mafft')]).
entity(dc19s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc26s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE26'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc27s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE27'),prop(prov:value,'dlreadseq.data')]).
entity(dc32s,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc31s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc30s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc37s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE37'),prop(prov:value,'ORTHOMCL256.mg')]).
entity(dc38s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE38'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc39s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE39'),prop(prov:value,'ORTHOMCL256.phylip_phyml.sh')]).
entity(dc40s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE40'),prop(prov:value,'ORTHOMCL256.phylip_phymlBoot.sh')]).
entity(dc41s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE41'),prop(prov:value,'ORTHOMCL256.phylip_puzzleBoot.sh')]).
entity(dc42s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE42'),prop(prov:value,'ORTHOMCL256.phylip_treePuzzle.sh')]).
entity(dc43s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE43'),prop(prov:value,'dlmodelgenerator.data')]).
entity(dc46s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE46'),prop(prov:value,'modelgenerator0.out')]).
entity(dc56s,[prop(prov:type,['provone:document']),prop(prov:label,'MG'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc55s,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc54s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc53s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc65s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE65'),prop(prov:value,'ORTHOMCL256.phylip.modelMGBateRaxml.txt')]).
entity(dc66s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE66'),prop(prov:value,'RAxML_bestTree.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc67s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE67'),prop(prov:value,'RAxML_info.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc68s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE68'),prop(prov:value,'RAxML_log.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc69s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE69'),prop(prov:value,'RAxML_parsimonyTree.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc70s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE70'),prop(prov:value,'RAxML_result.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc71s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE71'),prop(prov:value,'dlraxml1.data')]).
entity(dc50s,[prop(prov:type,['provone:document']),prop(prov:label,'MG'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc49s,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc48s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc47s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc77s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE77'),prop(prov:value,'ORTHOMCL256.phylip.modelMGBateRaxml.txt')]).
entity(dc78s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE78'),prop(prov:value,'RAxML_bootstrap.ORTHOMCL256.phylip_tree2.raxml')]).
entity(dc79s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE79'),prop(prov:value,'RAxML_info.ORTHOMCL256.phylip_tree2.raxml')]).
entity(dc80s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE80'),prop(prov:value,'dlraxml2.data')]).
entity(dc88s,[prop(prov:type,['provone:document']),prop(prov:label,'BOOTSTRAP'),prop(prov:value,'RAxML_bootstrap.ORTHOMCL256.phylip_tree2.raxml')]).
entity(dc87s,[prop(prov:type,['provone:document']),prop(prov:label,'MG'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc86s,[prop(prov:type,['provone:document']),prop(prov:label,'BESTTREE'),prop(prov:value,'RAxML_bestTree.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc85s,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc84s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc83s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc92s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE92'),prop(prov:value,'ORTHOMCL256.phylip.modelMGBateRaxml.txt')]).
entity(dc93s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE93'),prop(prov:value,'RAxML_bipartitions.ORTHOMCL256.phylip_tree3.BS_TREE')]).
entity(dc94s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE94'),prop(prov:value,'RAxML_bipartitionsBranchLabels.ORTHOMCL256.phylip_tree3.BS_TREE')]).
entity(dc95s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE95'),prop(prov:value,'RAxML_info.ORTHOMCL256.phylip_tree3.BS_TREE')]).
entity(dc96s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE96'),prop(prov:value,'dlraxml3.data')]).
activity(ew12s,[prop(prov:type,provone:execution),prop(prov:label,'sciphy-1'),prop(prov:startTime,'2015-11-13 15:52:53.115+00'),prop(prov:endTime,'2015-11-13 15:55:59.816+00'),prop(wfms:completed,'1')]).
hadSystem(ew12, 2).
activity(ex1s,[prop(prov:type,provone:execution),prop(prov:label,'dataselection'),prop(prov:startTime,'2015-11-13 15:52:53.322+00'),prop(prov:endTime,'2015-11-13 15:52:53.332+00'),prop(wfms:completed,'1')]).
activity(ex2s,[prop(prov:type,provone:execution),prop(prov:label,'mafft'),prop(prov:startTime,'2015-11-13 15:52:53.46+00'),prop(prov:endTime,'2015-11-13 15:52:53.518+00'),prop(wfms:completed,'1')]).
activity(ex3s,[prop(prov:type,provone:execution),prop(prov:label,'readseq'),prop(prov:startTime,'2015-11-13 15:52:53.67+00'),prop(prov:endTime,'2015-11-13 15:52:53.829+00'),prop(wfms:completed,'1')]).
activity(ex4s,[prop(prov:type,provone:execution),prop(prov:label,'modelgenerator'),prop(prov:startTime,'2015-11-13 15:52:54.004+00'),prop(prov:endTime,'2015-11-13 15:55:44.235+00'),prop(wfms:completed,'1')]).
activity(ex5s,[prop(prov:type,provone:execution),prop(prov:label,'raxml2'),prop(prov:startTime,'2015-11-13 15:55:44.551+00'),prop(prov:endTime,'2015-11-13 15:55:59.464+00'),prop(wfms:completed,'1')]).
activity(ex6s,[prop(prov:type,provone:execution),prop(prov:label,'raxml1'),prop(prov:startTime,'2015-11-13 15:55:44.559+00'),prop(prov:endTime,'2015-11-13 15:55:54.382+00'),prop(wfms:completed,'1')]).
activity(ex7s,[prop(prov:type,provone:execution),prop(prov:label,'mergeRaxml'),prop(prov:startTime,'null'),prop(prov:endTime,'null'),prop(wfms:completed,'1')]).
activity(ex8s,[prop(prov:type,provone:execution),prop(prov:label,'raxml3'),prop(prov:startTime,'2015-11-13 15:55:59.659+00'),prop(prov:endTime,'2015-11-13 15:55:59.673+00'),prop(wfms:completed,'1')]).
wasGeneratedBy(dc1s,ex1s).
wasGeneratedBy(dc6s,ex2s).
wasGeneratedBy(dc12s,ex2s).
wasGeneratedBy(dc13s,ex2s).
wasGeneratedBy(dc14s,ex2s).
wasGeneratedBy(dc21s,ex3s).
wasGeneratedBy(dc20s,ex3s).
wasGeneratedBy(dc19s,ex3s).
wasGeneratedBy(dc26s,ex3s).
wasGeneratedBy(dc27s,ex3s).
wasGeneratedBy(dc32s,ex4s).
wasGeneratedBy(dc31s,ex4s).
wasGeneratedBy(dc30s,ex4s).
wasGeneratedBy(dc37s,ex4s).
wasGeneratedBy(dc38s,ex4s).
wasGeneratedBy(dc39s,ex4s).
wasGeneratedBy(dc40s,ex4s).
wasGeneratedBy(dc41s,ex4s).
wasGeneratedBy(dc42s,ex4s).
wasGeneratedBy(dc43s,ex4s).
wasGeneratedBy(dc46s,ex4s).
wasGeneratedBy(dc56s,ex6s).
wasGeneratedBy(dc55s,ex6s).
wasGeneratedBy(dc54s,ex6s).
wasGeneratedBy(dc53s,ex6s).
wasGeneratedBy(dc65s,ex6s).
wasGeneratedBy(dc66s,ex6s).
wasGeneratedBy(dc67s,ex6s).
wasGeneratedBy(dc68s,ex6s).
wasGeneratedBy(dc69s,ex6s).
wasGeneratedBy(dc70s,ex6s).
wasGeneratedBy(dc71s,ex6s).
wasGeneratedBy(dc50s,ex5s).
wasGeneratedBy(dc49s,ex5s).
wasGeneratedBy(dc48s,ex5s).
wasGeneratedBy(dc47s,ex5s).
wasGeneratedBy(dc77s,ex5s).
wasGeneratedBy(dc78s,ex5s).
wasGeneratedBy(dc79s,ex5s).
wasGeneratedBy(dc80s,ex5s).
wasGeneratedBy(dc88s,ex8s).
wasGeneratedBy(dc87s,ex8s).
wasGeneratedBy(dc86s,ex8s).
wasGeneratedBy(dc85s,ex8s).
wasGeneratedBy(dc84s,ex8s).
wasGeneratedBy(dc83s,ex8s).
wasGeneratedBy(dc92s,ex8s).
wasGeneratedBy(dc93s,ex8s).
wasGeneratedBy(dc94s,ex8s).
wasGeneratedBy(dc95s,ex8s).
wasGeneratedBy(dc96s,ex8s).
used(ex2s,dc5s).
used(ex2s,dc1s).
used(ex3s,dc18s).
used(ex3s,dc6s).
used(ex3s,dc12s).
used(ex3s,dc13s).
used(ex3s,dc14s).
used(ex3s,dc15s).
used(ex3s,dc16s).
used(ex3s,dc17s).
used(ex4s,dc26s).
used(ex4s,dc27s).
used(ex4s,dc28s).
used(ex4s,dc29s).
used(ex4s,dc19s).
used(ex4s,dc21s).
used(ex4s,dc20s).
used(ex6s,dc42s).
used(ex5s,dc42s).
used(ex6s,dc43s).
used(ex5s,dc43s).
used(ex6s,dc44s).
used(ex5s,dc44s).
used(ex6s,dc45s).
used(ex5s,dc45s).
used(ex5s,dc46s).
used(ex6s,dc46s).
used(ex6s,dc32s).
used(ex5s,dc32s).
used(ex6s,dc31s).
used(ex5s,dc31s).
used(ex6s,dc30s).
used(ex5s,dc30s).
used(ex6s,dc37s).
used(ex5s,dc37s).
used(ex6s,dc38s).
used(ex5s,dc38s).
used(ex6s,dc39s).
used(ex5s,dc39s).
used(ex6s,dc40s).
used(ex5s,dc40s).
used(ex6s,dc41s).
used(ex5s,dc41s).
used(ex7s,dc50s).
used(ex7s,dc49s).
used(ex7s,dc48s).
used(ex7s,dc47s).
used(ex7s,dc77s).
used(ex7s,dc78s).
used(ex7s,dc79s).
used(ex7s,dc80s).
used(ex7s,dc81s).
used(ex7s,dc82s).
used(ex7s,dc71s).
used(ex7s,dc56s).
used(ex7s,dc73s).
used(ex7s,dc72s).
used(ex7s,dc55s).
used(ex7s,dc54s).
used(ex7s,dc53s).
used(ex7s,dc65s).
used(ex7s,dc66s).
used(ex7s,dc67s).
used(ex7s,dc68s).
used(ex7s,dc69s).
used(ex7s,dc70s).
wasPartOf(ex1s,ew12s).
wasPartOf(ex7s,ew12s).
wasPartOf(ex2s,ew12s).
wasPartOf(ex3s,ew12s).
wasPartOf(ex4s,ew12s).
wasPartOf(ex6s,ew12s).
wasPartOf(ex5s,ew12s).
wasPartOf(ex8s,ew12s).
wasAssociatedWith(ex1s,u1s).
wasAssociatedWith(ex2s,u1s).
wasAssociatedWith(ex3s,u1s).
wasAssociatedWith(ex4s,u1s).
wasAssociatedWith(ex6s,u1s).
wasAssociatedWith(ex5s,u1s).
wasAssociatedWith(ex8s,u1s).
wasInformedBy(ex2s,ex1s).
wasInformedBy(ex3s,ex2s).
wasInformedBy(ex4s,ex3s).
wasInformedBy(ex5s,ex4s).
wasInformedBy(ex6s,ex4s).
wasInformedBy(ex7s,ex5s).
wasInformedBy(ex7s,ex6s).
wasInformedBy(ex8s,ex7s).
wasDerivedFrom(dc6s,dc1s).
wasDerivedFrom(dc7s,dc1s).
wasDerivedFrom(dc8s,dc1s).
wasDerivedFrom(dc9s,dc1s).
wasDerivedFrom(dc10s,dc1s).
wasDerivedFrom(dc11s,dc1s).
wasDerivedFrom(dc12s,dc1s).
wasDerivedFrom(dc13s,dc1s).
wasDerivedFrom(dc14s,dc1s).
wasDerivedFrom(dc15s,dc1s).
wasDerivedFrom(dc16s,dc1s).
wasDerivedFrom(dc17s,dc1s).
wasDerivedFrom(dc18s,dc1s).
wasDerivedFrom(dc19s,dc6s).
wasDerivedFrom(dc20s,dc6s).
wasDerivedFrom(dc21s,dc6s).
wasDerivedFrom(dc22s,dc6s).
wasDerivedFrom(dc23s,dc6s).
wasDerivedFrom(dc24s,dc6s).
wasDerivedFrom(dc25s,dc6s).
wasDerivedFrom(dc26s,dc6s).
wasDerivedFrom(dc27s,dc6s).
wasDerivedFrom(dc28s,dc6s).
wasDerivedFrom(dc29s,dc6s).
wasDerivedFrom(dc19s,dc12s).
wasDerivedFrom(dc20s,dc12s).
wasDerivedFrom(dc21s,dc12s).
wasDerivedFrom(dc22s,dc12s).
wasDerivedFrom(dc23s,dc12s).
wasDerivedFrom(dc24s,dc12s).
wasDerivedFrom(dc25s,dc12s).
wasDerivedFrom(dc26s,dc12s).
wasDerivedFrom(dc27s,dc12s).
wasDerivedFrom(dc28s,dc12s).
wasDerivedFrom(dc29s,dc12s).
wasDerivedFrom(dc19s,dc13s).
wasDerivedFrom(dc20s,dc13s).
wasDerivedFrom(dc21s,dc13s).
wasDerivedFrom(dc22s,dc13s).
wasDerivedFrom(dc23s,dc13s).
wasDerivedFrom(dc24s,dc13s).
wasDerivedFrom(dc25s,dc13s).
wasDerivedFrom(dc26s,dc13s).
wasDerivedFrom(dc27s,dc13s).
wasDerivedFrom(dc28s,dc13s).
wasDerivedFrom(dc29s,dc13s).
wasDerivedFrom(dc19s,dc14s).
wasDerivedFrom(dc20s,dc14s).
wasDerivedFrom(dc21s,dc14s).
wasDerivedFrom(dc22s,dc14s).
wasDerivedFrom(dc23s,dc14s).
wasDerivedFrom(dc24s,dc14s).
wasDerivedFrom(dc25s,dc14s).
wasDerivedFrom(dc26s,dc14s).
wasDerivedFrom(dc27s,dc14s).
wasDerivedFrom(dc28s,dc14s).
wasDerivedFrom(dc29s,dc14s).
wasDerivedFrom(dc30s,dc19s).
wasDerivedFrom(dc31s,dc19s).
wasDerivedFrom(dc32s,dc19s).
wasDerivedFrom(dc33s,dc19s).
wasDerivedFrom(dc34s,dc19s).
wasDerivedFrom(dc35s,dc19s).
wasDerivedFrom(dc36s,dc19s).
wasDerivedFrom(dc37s,dc19s).
wasDerivedFrom(dc38s,dc19s).
wasDerivedFrom(dc39s,dc19s).
wasDerivedFrom(dc40s,dc19s).
wasDerivedFrom(dc41s,dc19s).
wasDerivedFrom(dc42s,dc19s).
wasDerivedFrom(dc43s,dc19s).
wasDerivedFrom(dc44s,dc19s).
wasDerivedFrom(dc45s,dc19s).
wasDerivedFrom(dc46s,dc19s).
wasDerivedFrom(dc30s,dc20s).
wasDerivedFrom(dc31s,dc20s).
wasDerivedFrom(dc32s,dc20s).
wasDerivedFrom(dc33s,dc20s).
wasDerivedFrom(dc34s,dc20s).
wasDerivedFrom(dc35s,dc20s).
wasDerivedFrom(dc36s,dc20s).
wasDerivedFrom(dc37s,dc20s).
wasDerivedFrom(dc38s,dc20s).
wasDerivedFrom(dc39s,dc20s).
wasDerivedFrom(dc40s,dc20s).
wasDerivedFrom(dc41s,dc20s).
wasDerivedFrom(dc42s,dc20s).
wasDerivedFrom(dc43s,dc20s).
wasDerivedFrom(dc44s,dc20s).
wasDerivedFrom(dc45s,dc20s).
wasDerivedFrom(dc46s,dc20s).
wasDerivedFrom(dc30s,dc21s).
wasDerivedFrom(dc31s,dc21s).
wasDerivedFrom(dc32s,dc21s).
wasDerivedFrom(dc33s,dc21s).
wasDerivedFrom(dc34s,dc21s).
wasDerivedFrom(dc35s,dc21s).
wasDerivedFrom(dc36s,dc21s).
wasDerivedFrom(dc37s,dc21s).
wasDerivedFrom(dc38s,dc21s).
wasDerivedFrom(dc39s,dc21s).
wasDerivedFrom(dc40s,dc21s).
wasDerivedFrom(dc41s,dc21s).
wasDerivedFrom(dc42s,dc21s).
wasDerivedFrom(dc43s,dc21s).
wasDerivedFrom(dc44s,dc21s).
wasDerivedFrom(dc45s,dc21s).
wasDerivedFrom(dc46s,dc21s).
wasDerivedFrom(dc30s,dc26s).
wasDerivedFrom(dc31s,dc26s).
wasDerivedFrom(dc32s,dc26s).
wasDerivedFrom(dc33s,dc26s).
wasDerivedFrom(dc34s,dc26s).
wasDerivedFrom(dc35s,dc26s).
wasDerivedFrom(dc36s,dc26s).
wasDerivedFrom(dc37s,dc26s).
wasDerivedFrom(dc38s,dc26s).
wasDerivedFrom(dc39s,dc26s).
wasDerivedFrom(dc40s,dc26s).
wasDerivedFrom(dc41s,dc26s).
wasDerivedFrom(dc42s,dc26s).
wasDerivedFrom(dc43s,dc26s).
wasDerivedFrom(dc44s,dc26s).
wasDerivedFrom(dc45s,dc26s).
wasDerivedFrom(dc46s,dc26s).
wasDerivedFrom(dc30s,dc27s).
wasDerivedFrom(dc31s,dc27s).
wasDerivedFrom(dc32s,dc27s).
wasDerivedFrom(dc33s,dc27s).
wasDerivedFrom(dc34s,dc27s).
wasDerivedFrom(dc35s,dc27s).
wasDerivedFrom(dc36s,dc27s).
wasDerivedFrom(dc37s,dc27s).
wasDerivedFrom(dc38s,dc27s).
wasDerivedFrom(dc39s,dc27s).
wasDerivedFrom(dc40s,dc27s).
wasDerivedFrom(dc41s,dc27s).
wasDerivedFrom(dc42s,dc27s).
wasDerivedFrom(dc43s,dc27s).
wasDerivedFrom(dc44s,dc27s).
wasDerivedFrom(dc45s,dc27s).
wasDerivedFrom(dc46s,dc27s).
wasDerivedFrom(dc47s,dc30s).
wasDerivedFrom(dc48s,dc30s).
wasDerivedFrom(dc49s,dc30s).
wasDerivedFrom(dc50s,dc30s).
wasDerivedFrom(dc51s,dc30s).
wasDerivedFrom(dc52s,dc30s).
wasDerivedFrom(dc53s,dc30s).
wasDerivedFrom(dc54s,dc30s).
wasDerivedFrom(dc55s,dc30s).
wasDerivedFrom(dc56s,dc30s).
wasDerivedFrom(dc57s,dc30s).
wasDerivedFrom(dc58s,dc30s).
wasDerivedFrom(dc59s,dc30s).
wasDerivedFrom(dc60s,dc30s).
wasDerivedFrom(dc61s,dc30s).
wasDerivedFrom(dc62s,dc30s).
wasDerivedFrom(dc63s,dc30s).
wasDerivedFrom(dc64s,dc30s).
wasDerivedFrom(dc65s,dc30s).
wasDerivedFrom(dc66s,dc30s).
wasDerivedFrom(dc67s,dc30s).
wasDerivedFrom(dc68s,dc30s).
wasDerivedFrom(dc69s,dc30s).
wasDerivedFrom(dc70s,dc30s).
wasDerivedFrom(dc71s,dc30s).
wasDerivedFrom(dc72s,dc30s).
wasDerivedFrom(dc73s,dc30s).
wasDerivedFrom(dc74s,dc30s).
wasDerivedFrom(dc75s,dc30s).
wasDerivedFrom(dc76s,dc30s).
wasDerivedFrom(dc77s,dc30s).
wasDerivedFrom(dc78s,dc30s).
wasDerivedFrom(dc79s,dc30s).
wasDerivedFrom(dc80s,dc30s).
wasDerivedFrom(dc81s,dc30s).
wasDerivedFrom(dc82s,dc30s).
wasDerivedFrom(dc47s,dc31s).
wasDerivedFrom(dc48s,dc31s).
wasDerivedFrom(dc49s,dc31s).
wasDerivedFrom(dc50s,dc31s).
wasDerivedFrom(dc51s,dc31s).
wasDerivedFrom(dc52s,dc31s).
wasDerivedFrom(dc53s,dc31s).
wasDerivedFrom(dc54s,dc31s).
wasDerivedFrom(dc55s,dc31s).
wasDerivedFrom(dc56s,dc31s).
wasDerivedFrom(dc57s,dc31s).
wasDerivedFrom(dc58s,dc31s).
wasDerivedFrom(dc59s,dc31s).
wasDerivedFrom(dc60s,dc31s).
wasDerivedFrom(dc61s,dc31s).
wasDerivedFrom(dc62s,dc31s).
wasDerivedFrom(dc63s,dc31s).
wasDerivedFrom(dc64s,dc31s).
wasDerivedFrom(dc65s,dc31s).
wasDerivedFrom(dc66s,dc31s).
wasDerivedFrom(dc67s,dc31s).
wasDerivedFrom(dc68s,dc31s).
wasDerivedFrom(dc69s,dc31s).
wasDerivedFrom(dc70s,dc31s).
wasDerivedFrom(dc71s,dc31s).
wasDerivedFrom(dc72s,dc31s).
wasDerivedFrom(dc73s,dc31s).
wasDerivedFrom(dc74s,dc31s).
wasDerivedFrom(dc75s,dc31s).
wasDerivedFrom(dc76s,dc31s).
wasDerivedFrom(dc77s,dc31s).
wasDerivedFrom(dc78s,dc31s).
wasDerivedFrom(dc79s,dc31s).
wasDerivedFrom(dc80s,dc31s).
wasDerivedFrom(dc81s,dc31s).
wasDerivedFrom(dc82s,dc31s).
wasDerivedFrom(dc47s,dc32s).
wasDerivedFrom(dc48s,dc32s).
wasDerivedFrom(dc49s,dc32s).
wasDerivedFrom(dc50s,dc32s).
wasDerivedFrom(dc51s,dc32s).
wasDerivedFrom(dc52s,dc32s).
wasDerivedFrom(dc53s,dc32s).
wasDerivedFrom(dc54s,dc32s).
wasDerivedFrom(dc55s,dc32s).
wasDerivedFrom(dc56s,dc32s).
wasDerivedFrom(dc57s,dc32s).
wasDerivedFrom(dc58s,dc32s).
wasDerivedFrom(dc59s,dc32s).
wasDerivedFrom(dc60s,dc32s).
wasDerivedFrom(dc61s,dc32s).
wasDerivedFrom(dc62s,dc32s).
wasDerivedFrom(dc63s,dc32s).
wasDerivedFrom(dc64s,dc32s).
wasDerivedFrom(dc65s,dc32s).
wasDerivedFrom(dc66s,dc32s).
wasDerivedFrom(dc67s,dc32s).
wasDerivedFrom(dc68s,dc32s).
wasDerivedFrom(dc69s,dc32s).
wasDerivedFrom(dc70s,dc32s).
wasDerivedFrom(dc71s,dc32s).
wasDerivedFrom(dc72s,dc32s).
wasDerivedFrom(dc73s,dc32s).
wasDerivedFrom(dc74s,dc32s).
wasDerivedFrom(dc75s,dc32s).
wasDerivedFrom(dc76s,dc32s).
wasDerivedFrom(dc77s,dc32s).
wasDerivedFrom(dc78s,dc32s).
wasDerivedFrom(dc79s,dc32s).
wasDerivedFrom(dc80s,dc32s).
wasDerivedFrom(dc81s,dc32s).
wasDerivedFrom(dc82s,dc32s).
wasDerivedFrom(dc47s,dc37s).
wasDerivedFrom(dc48s,dc37s).
wasDerivedFrom(dc49s,dc37s).
wasDerivedFrom(dc50s,dc37s).
wasDerivedFrom(dc51s,dc37s).
wasDerivedFrom(dc52s,dc37s).
wasDerivedFrom(dc53s,dc37s).
wasDerivedFrom(dc54s,dc37s).
wasDerivedFrom(dc55s,dc37s).
wasDerivedFrom(dc56s,dc37s).
wasDerivedFrom(dc57s,dc37s).
wasDerivedFrom(dc58s,dc37s).
wasDerivedFrom(dc59s,dc37s).
wasDerivedFrom(dc60s,dc37s).
wasDerivedFrom(dc61s,dc37s).
wasDerivedFrom(dc62s,dc37s).
wasDerivedFrom(dc63s,dc37s).
wasDerivedFrom(dc64s,dc37s).
wasDerivedFrom(dc65s,dc37s).
wasDerivedFrom(dc66s,dc37s).
wasDerivedFrom(dc67s,dc37s).
wasDerivedFrom(dc68s,dc37s).
wasDerivedFrom(dc69s,dc37s).
wasDerivedFrom(dc70s,dc37s).
wasDerivedFrom(dc71s,dc37s).
wasDerivedFrom(dc72s,dc37s).
wasDerivedFrom(dc73s,dc37s).
wasDerivedFrom(dc74s,dc37s).
wasDerivedFrom(dc75s,dc37s).
wasDerivedFrom(dc76s,dc37s).
wasDerivedFrom(dc77s,dc37s).
wasDerivedFrom(dc78s,dc37s).
wasDerivedFrom(dc79s,dc37s).
wasDerivedFrom(dc80s,dc37s).
wasDerivedFrom(dc81s,dc37s).
wasDerivedFrom(dc82s,dc37s).
wasDerivedFrom(dc47s,dc38s).
wasDerivedFrom(dc48s,dc38s).
wasDerivedFrom(dc49s,dc38s).
wasDerivedFrom(dc50s,dc38s).
wasDerivedFrom(dc51s,dc38s).
wasDerivedFrom(dc52s,dc38s).
wasDerivedFrom(dc53s,dc38s).
wasDerivedFrom(dc54s,dc38s).
wasDerivedFrom(dc55s,dc38s).
wasDerivedFrom(dc56s,dc38s).
wasDerivedFrom(dc57s,dc38s).
wasDerivedFrom(dc58s,dc38s).
wasDerivedFrom(dc59s,dc38s).
wasDerivedFrom(dc60s,dc38s).
wasDerivedFrom(dc61s,dc38s).
wasDerivedFrom(dc62s,dc38s).
wasDerivedFrom(dc63s,dc38s).
wasDerivedFrom(dc64s,dc38s).
wasDerivedFrom(dc65s,dc38s).
wasDerivedFrom(dc66s,dc38s).
wasDerivedFrom(dc67s,dc38s).
wasDerivedFrom(dc68s,dc38s).
wasDerivedFrom(dc69s,dc38s).
wasDerivedFrom(dc70s,dc38s).
wasDerivedFrom(dc71s,dc38s).
wasDerivedFrom(dc72s,dc38s).
wasDerivedFrom(dc73s,dc38s).
wasDerivedFrom(dc74s,dc38s).
wasDerivedFrom(dc75s,dc38s).
wasDerivedFrom(dc76s,dc38s).
wasDerivedFrom(dc77s,dc38s).
wasDerivedFrom(dc78s,dc38s).
wasDerivedFrom(dc79s,dc38s).
wasDerivedFrom(dc80s,dc38s).
wasDerivedFrom(dc81s,dc38s).
wasDerivedFrom(dc82s,dc38s).
wasDerivedFrom(dc47s,dc39s).
wasDerivedFrom(dc48s,dc39s).
wasDerivedFrom(dc49s,dc39s).
wasDerivedFrom(dc50s,dc39s).
wasDerivedFrom(dc51s,dc39s).
wasDerivedFrom(dc52s,dc39s).
wasDerivedFrom(dc53s,dc39s).
wasDerivedFrom(dc54s,dc39s).
wasDerivedFrom(dc55s,dc39s).
wasDerivedFrom(dc56s,dc39s).
wasDerivedFrom(dc57s,dc39s).
wasDerivedFrom(dc58s,dc39s).
wasDerivedFrom(dc59s,dc39s).
wasDerivedFrom(dc60s,dc39s).
wasDerivedFrom(dc61s,dc39s).
wasDerivedFrom(dc62s,dc39s).
wasDerivedFrom(dc63s,dc39s).
wasDerivedFrom(dc64s,dc39s).
wasDerivedFrom(dc65s,dc39s).
wasDerivedFrom(dc66s,dc39s).
wasDerivedFrom(dc67s,dc39s).
wasDerivedFrom(dc68s,dc39s).
wasDerivedFrom(dc69s,dc39s).
wasDerivedFrom(dc70s,dc39s).
wasDerivedFrom(dc71s,dc39s).
wasDerivedFrom(dc72s,dc39s).
wasDerivedFrom(dc73s,dc39s).
wasDerivedFrom(dc74s,dc39s).
wasDerivedFrom(dc75s,dc39s).
wasDerivedFrom(dc76s,dc39s).
wasDerivedFrom(dc77s,dc39s).
wasDerivedFrom(dc78s,dc39s).
wasDerivedFrom(dc79s,dc39s).
wasDerivedFrom(dc80s,dc39s).
wasDerivedFrom(dc81s,dc39s).
wasDerivedFrom(dc82s,dc39s).
wasDerivedFrom(dc47s,dc40s).
wasDerivedFrom(dc48s,dc40s).
wasDerivedFrom(dc49s,dc40s).
wasDerivedFrom(dc50s,dc40s).
wasDerivedFrom(dc51s,dc40s).
wasDerivedFrom(dc52s,dc40s).
wasDerivedFrom(dc53s,dc40s).
wasDerivedFrom(dc54s,dc40s).
wasDerivedFrom(dc55s,dc40s).
wasDerivedFrom(dc56s,dc40s).
wasDerivedFrom(dc57s,dc40s).
wasDerivedFrom(dc58s,dc40s).
wasDerivedFrom(dc59s,dc40s).
wasDerivedFrom(dc60s,dc40s).
wasDerivedFrom(dc61s,dc40s).
wasDerivedFrom(dc62s,dc40s).
wasDerivedFrom(dc63s,dc40s).
wasDerivedFrom(dc64s,dc40s).
wasDerivedFrom(dc65s,dc40s).
wasDerivedFrom(dc66s,dc40s).
wasDerivedFrom(dc67s,dc40s).
wasDerivedFrom(dc68s,dc40s).
wasDerivedFrom(dc69s,dc40s).
wasDerivedFrom(dc70s,dc40s).
wasDerivedFrom(dc71s,dc40s).
wasDerivedFrom(dc72s,dc40s).
wasDerivedFrom(dc73s,dc40s).
wasDerivedFrom(dc74s,dc40s).
wasDerivedFrom(dc75s,dc40s).
wasDerivedFrom(dc76s,dc40s).
wasDerivedFrom(dc77s,dc40s).
wasDerivedFrom(dc78s,dc40s).
wasDerivedFrom(dc79s,dc40s).
wasDerivedFrom(dc80s,dc40s).
wasDerivedFrom(dc81s,dc40s).
wasDerivedFrom(dc82s,dc40s).
wasDerivedFrom(dc47s,dc41s).
wasDerivedFrom(dc48s,dc41s).
wasDerivedFrom(dc49s,dc41s).
wasDerivedFrom(dc50s,dc41s).
wasDerivedFrom(dc51s,dc41s).
wasDerivedFrom(dc52s,dc41s).
wasDerivedFrom(dc53s,dc41s).
wasDerivedFrom(dc54s,dc41s).
wasDerivedFrom(dc55s,dc41s).
wasDerivedFrom(dc56s,dc41s).
wasDerivedFrom(dc57s,dc41s).
wasDerivedFrom(dc58s,dc41s).
wasDerivedFrom(dc59s,dc41s).
wasDerivedFrom(dc60s,dc41s).
wasDerivedFrom(dc61s,dc41s).
wasDerivedFrom(dc62s,dc41s).
wasDerivedFrom(dc63s,dc41s).
wasDerivedFrom(dc64s,dc41s).
wasDerivedFrom(dc65s,dc41s).
wasDerivedFrom(dc66s,dc41s).
wasDerivedFrom(dc67s,dc41s).
wasDerivedFrom(dc68s,dc41s).
wasDerivedFrom(dc69s,dc41s).
wasDerivedFrom(dc70s,dc41s).
wasDerivedFrom(dc71s,dc41s).
wasDerivedFrom(dc72s,dc41s).
wasDerivedFrom(dc73s,dc41s).
wasDerivedFrom(dc74s,dc41s).
wasDerivedFrom(dc75s,dc41s).
wasDerivedFrom(dc76s,dc41s).
wasDerivedFrom(dc77s,dc41s).
wasDerivedFrom(dc78s,dc41s).
wasDerivedFrom(dc79s,dc41s).
wasDerivedFrom(dc80s,dc41s).
wasDerivedFrom(dc81s,dc41s).
wasDerivedFrom(dc82s,dc41s).
wasDerivedFrom(dc47s,dc42s).
wasDerivedFrom(dc48s,dc42s).
wasDerivedFrom(dc49s,dc42s).
wasDerivedFrom(dc50s,dc42s).
wasDerivedFrom(dc51s,dc42s).
wasDerivedFrom(dc52s,dc42s).
wasDerivedFrom(dc53s,dc42s).
wasDerivedFrom(dc54s,dc42s).
wasDerivedFrom(dc55s,dc42s).
wasDerivedFrom(dc56s,dc42s).
wasDerivedFrom(dc57s,dc42s).
wasDerivedFrom(dc58s,dc42s).
wasDerivedFrom(dc59s,dc42s).
wasDerivedFrom(dc60s,dc42s).
wasDerivedFrom(dc61s,dc42s).
wasDerivedFrom(dc62s,dc42s).
wasDerivedFrom(dc63s,dc42s).
wasDerivedFrom(dc64s,dc42s).
wasDerivedFrom(dc65s,dc42s).
wasDerivedFrom(dc66s,dc42s).
wasDerivedFrom(dc67s,dc42s).
wasDerivedFrom(dc68s,dc42s).
wasDerivedFrom(dc69s,dc42s).
wasDerivedFrom(dc70s,dc42s).
wasDerivedFrom(dc71s,dc42s).
wasDerivedFrom(dc72s,dc42s).
wasDerivedFrom(dc73s,dc42s).
wasDerivedFrom(dc74s,dc42s).
wasDerivedFrom(dc75s,dc42s).
wasDerivedFrom(dc76s,dc42s).
wasDerivedFrom(dc77s,dc42s).
wasDerivedFrom(dc78s,dc42s).
wasDerivedFrom(dc79s,dc42s).
wasDerivedFrom(dc80s,dc42s).
wasDerivedFrom(dc81s,dc42s).
wasDerivedFrom(dc82s,dc42s).
wasDerivedFrom(dc47s,dc43s).
wasDerivedFrom(dc48s,dc43s).
wasDerivedFrom(dc49s,dc43s).
wasDerivedFrom(dc50s,dc43s).
wasDerivedFrom(dc51s,dc43s).
wasDerivedFrom(dc52s,dc43s).
wasDerivedFrom(dc53s,dc43s).
wasDerivedFrom(dc54s,dc43s).
wasDerivedFrom(dc55s,dc43s).
wasDerivedFrom(dc56s,dc43s).
wasDerivedFrom(dc57s,dc43s).
wasDerivedFrom(dc58s,dc43s).
wasDerivedFrom(dc59s,dc43s).
wasDerivedFrom(dc60s,dc43s).
wasDerivedFrom(dc61s,dc43s).
wasDerivedFrom(dc62s,dc43s).
wasDerivedFrom(dc63s,dc43s).
wasDerivedFrom(dc64s,dc43s).
wasDerivedFrom(dc65s,dc43s).
wasDerivedFrom(dc66s,dc43s).
wasDerivedFrom(dc67s,dc43s).
wasDerivedFrom(dc68s,dc43s).
wasDerivedFrom(dc69s,dc43s).
wasDerivedFrom(dc70s,dc43s).
wasDerivedFrom(dc71s,dc43s).
wasDerivedFrom(dc72s,dc43s).
wasDerivedFrom(dc73s,dc43s).
wasDerivedFrom(dc74s,dc43s).
wasDerivedFrom(dc75s,dc43s).
wasDerivedFrom(dc76s,dc43s).
wasDerivedFrom(dc77s,dc43s).
wasDerivedFrom(dc78s,dc43s).
wasDerivedFrom(dc79s,dc43s).
wasDerivedFrom(dc80s,dc43s).
wasDerivedFrom(dc81s,dc43s).
wasDerivedFrom(dc82s,dc43s).
wasDerivedFrom(dc47s,dc46s).
wasDerivedFrom(dc48s,dc46s).
wasDerivedFrom(dc49s,dc46s).
wasDerivedFrom(dc50s,dc46s).
wasDerivedFrom(dc51s,dc46s).
wasDerivedFrom(dc52s,dc46s).
wasDerivedFrom(dc53s,dc46s).
wasDerivedFrom(dc54s,dc46s).
wasDerivedFrom(dc55s,dc46s).
wasDerivedFrom(dc56s,dc46s).
wasDerivedFrom(dc57s,dc46s).
wasDerivedFrom(dc58s,dc46s).
wasDerivedFrom(dc59s,dc46s).
wasDerivedFrom(dc60s,dc46s).
wasDerivedFrom(dc61s,dc46s).
wasDerivedFrom(dc62s,dc46s).
wasDerivedFrom(dc63s,dc46s).
wasDerivedFrom(dc64s,dc46s).
wasDerivedFrom(dc65s,dc46s).
wasDerivedFrom(dc66s,dc46s).
wasDerivedFrom(dc67s,dc46s).
wasDerivedFrom(dc68s,dc46s).
wasDerivedFrom(dc69s,dc46s).
wasDerivedFrom(dc70s,dc46s).
wasDerivedFrom(dc71s,dc46s).
wasDerivedFrom(dc72s,dc46s).
wasDerivedFrom(dc73s,dc46s).
wasDerivedFrom(dc74s,dc46s).
wasDerivedFrom(dc75s,dc46s).
wasDerivedFrom(dc76s,dc46s).
wasDerivedFrom(dc77s,dc46s).
wasDerivedFrom(dc78s,dc46s).
wasDerivedFrom(dc79s,dc46s).
wasDerivedFrom(dc80s,dc46s).
wasDerivedFrom(dc81s,dc46s).
wasDerivedFrom(dc82s,dc46s).
hadPlan(ex1s,pg1s).
hadPlan(ex7s,pg7s).
hadPlan(ex2s,pg2s).
hadPlan(ex3s,pg3s).
hadPlan(ex4s,pg4s).
hadPlan(ex6s,pg5s).
hadPlan(ex5s,pg6s).
hadPlan(ex8s,pg8s).
hadPlan(ew12s,w1s).
hadInPort(ex1s,pin1s).
hadInPort(ex2s,pint2s).
hadInPort(ex3s,pint3s).
hadInPort(ex4s,pint4s).
hadInPort(ex6s,pint5s).
hadInPort(ex5s,pint5s).
hadInPort(ex7s,pint6s).
hadInPort(ex7s,pint7s).
hadInPort(ex8s,pint8s).
hadOutPort(ex1s,pint2s).
hadOutPort(ex2s,pint3s).
hadOutPort(ex3s,pint4s).
hadOutPort(ex4s,pint5s).
hadOutPort(ex4s,pint5s).
hadOutPort(ex6s,pint6s).
hadOutPort(ex5s,pint7s).
hadOutPort(ex7s,pint8s).
hadOutPort(ex8s,pout9s).
agent(u1s,[prop(prov:type,['provone:user']),prop(prov:label,'wellington-VirtualBox')]).
entity(d1s,[prop(prov:type,['provone:data']),prop(prov:label,'name'),prop(prov:type,'text'),prop(prov:value,'i3')]).
hasDefaultParam(pint2s,d1s).


:- discontiguous(domainRelation/2).
:- discontiguous(field/2).
:- discontiguous(value/3).
:- discontiguous(haskey/2).
:- discontiguous(tuple/1).
:- discontiguous(haskey/2).
:- discontiguous(hasField/2).
:- discontiguous(hasTuple/2).
domainRelation(2905, 'Sequence2905').
used(ew12s, 2905).
tuple(1).
hasTuple(2905, 1).
field(2565,accession).
value(1, 2565, 'AAN35385').
haskey(2905,2565).
hasField(2905, 2565).
field(2567,version).
value(1, 2567, '1').
hasField(2905, 2567).
field(2569,entryversion).
value(1, 2569, '5').
hasField(2905, 2569).
field(2571,dataclass).
value(1, 2571, 'STD').
hasField(2905, 2571).
field(2573,taxonomicdivision).
value(1, 2573, 'INV').
hasField(2905, 2573).
field(2575,moleculetype).
value(1, 2575, 'genomic DNA').
hasField(2905, 2575).
field(2577,sequencelength).
value(1, 2577, '327').
hasField(2905, 2577).
field(2579,topology).
value(1, 2579, 'linear').
hasField(2905, 2579).
field(2581,firstpublic).
value(1, 2581, '2002-10-09').
hasField(2905, 2581).
field(2583,firstpublicrelease).
value(1, 2583, '73').
hasField(2905, 2583).
field(2585,lastupdated).
value(1, 2585, '2014-09-03').
hasField(2905, 2585).
field(2587,lastupdatedrelease).
value(1, 2587, '122').
hasField(2905, 2587).
field(2587,projectaccession).
value(1, 2587,'PRJNA13173').
hasField(2905, 2587).
field(2587,description).
value(1, 2587,'Plasmodium falciparum 3D7 60S ribosomal protein L30e, putative').
hasField(2905, 2587).
field(2594,type).
value(1, 2594, 'article').
hasField(2905, 2594).
field(2596,number).
value(1, 2596, '1').
hasField(2905, 2596).
field(2596,title).
value(1, 2596,'Genome sequence of the human malaria parasite Plasmodium falciparum').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Gardner M.J.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Hall N.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Fung E.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'White O.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Berriman M.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Hyman R.W.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Carlton J.M.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Pain A.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Nelson K.E.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Bowman S.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Paulsen I.T.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'James K.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Eisen J.A.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Rutherford K.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Salzberg S.L.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Craig A.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Kyes S.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Chan M.S.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Nene V.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Shallom S.J.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Suh B.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Peterson J.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Angiuoli S.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Pertea M.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Allen J.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Selengut J.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Haft D.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Mather M.W.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Vaidya A.B.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Martin D.M.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Fairlamb A.H.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Fraunholz M.J.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Roos D.S.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Ralph S.A.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'McFadden G.I.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Cummings L.M.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Subramanian G.M.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Mungall C.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Venter J.C.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Carucci D.J.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Hoffman S.L.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Newbold C.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Davis R.W.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Fraser C.M.').
hasField(2905, 2596).
field(2596,author).
value(1, 2596,'Barrell B.').
hasField(2905, 2596).
field(2596,journal).
value(1, 2596,'Nature').
hasField(2905, 2596).
field(2596,year).
value(1, 2596,'2002').
hasField(2905, 2596).
field(2596,volume).
value(1, 2596,'419').
hasField(2905, 2596).
field(2596,issue).
value(1, 2596,'6906').
hasField(2905, 2596).
field(2596,firstpage).
value(1, 2596,'498').
hasField(2905, 2596).
field(2596,lastpage).
value(1, 2596,'511').
hasField(2905, 2596).
field(2596,referencelocation).
value(1, 2596,'Nature 419(6906):498-511(2002).').
hasField(2905, 2596).
field(2705,db).
value(1, 2705, 'DOI').
hasField(2905, 2705).
field(2707,id).
value(1, 2707, '10.1038/nature01097').
hasField(2905, 2707).
field(2710,db).
value(1, 2710, 'PUBMED').
hasField(2905, 2710).
field(2712,id).
value(1, 2712, '12368864').
hasField(2905, 2712).
field(2715,type).
value(1, 2715, 'submission').
hasField(2905, 2715).
field(2717,number).
value(1, 2717, '2').
hasField(2905, 2717).
field(2717,author).
value(1, 2717,'Gardner M.J.').
hasField(2905, 2717).
field(2717,submissiondate).
value(1, 2717,'2002-09-13').
hasField(2905, 2717).
field(2717,referencelocation).
value(1, 2717,'Submitted (13-SEP-2002) to the INSDC.
The Institute for Genomic Research, 9715 Medical Center Dr., Rockville, MD').
hasField(2905, 2717).
field(2717,referencelocation).
value(1, 2717,'20850, USA').
hasField(2905, 2717).
field(2727,type).
value(1, 2727, 'submission').
hasField(2905, 2727).
field(2729,number).
value(1, 2729, '3').
hasField(2905, 2729).
field(2729,author).
value(1, 2729,'Aslett M.').
hasField(2905, 2729).
field(2729,author).
value(1, 2729,'Brunk B.').
hasField(2905, 2729).
field(2729,author).
value(1, 2729,'Gardner M.').
hasField(2905, 2729).
field(2729,author).
value(1, 2729,'Berriman M.').
hasField(2905, 2729).
field(2729,consortium).
value(1, 2729,'P. falciparum Genome Sequencing Consortium').
hasField(2905, 2729).
field(2729,submissiondate).
value(1, 2729,'2009-07-30').
hasField(2905, 2729).
field(2729,comment).
value(1, 2729,'Sequence update by submitter').
hasField(2905, 2729).
field(2729,referencelocation).
value(1, 2729,'Submitted (30-JUL-2009) to the INSDC.
The Sanger Centre, Wellcome Trust Genome Campus, Hinxton, Cambridge CB10 1SA, UK').
hasField(2905, 2729).
field(2748,db).
value(1, 2748, 'EMBL').
hasField(2905, 2748).
field(2750,id).
value(1, 2750, 'AE014185.2').
hasField(2905, 2750).
field(2753,db).
value(1, 2753, 'MD5').
hasField(2905, 2753).
field(2755,id).
value(1, 2755, 'd34fba04f82b409053dfad8529135d2f').
hasField(2905, 2755).
field(2758,db).
value(1, 2758, 'BioSample').
hasField(2905, 2758).
field(2760,id).
value(1, 2760, 'SAMN00102897').
hasField(2905, 2760).
hasField(2905, 2763).
field(2765,location).
value(1, 2765, '1..327').
hasField(2905, 2765).
field(2768,scientificname).
value(1, 2768, 'Plasmodium falciparum 3D7').
hasField(2905, 2768).
field(2770,taxid).
value(1, 2770, '36329').
hasField(2905, 2770).
field(2774,scientificname).
value(1, 2774, 'Eukaryota').
hasField(2905, 2774).
field(2777,scientificname).
value(1, 2777, 'Alveolata').
hasField(2905, 2777).
field(2780,scientificname).
value(1, 2780, 'Apicomplexa').
hasField(2905, 2780).
field(2783,scientificname).
value(1, 2783, 'Aconoidasida').
hasField(2905, 2783).
field(2786,scientificname).
value(1, 2786, 'Haemosporida').
hasField(2905, 2786).
field(2789,scientificname).
value(1, 2789, 'Plasmodiidae').
hasField(2905, 2789).
field(2792,scientificname).
value(1, 2792, 'Plasmodium').
hasField(2905, 2792).
field(2795,scientificname).
value(1, 2795, 'Plasmodium (Laverania)').
hasField(2905, 2795).
field(2798,organism).
hasField(2905, 2798).
value(1, 2798,'Plasmodium falciparum 3D7').
hasField(2905, 2798).
field(2803,chromosome).
hasField(2905, 2803).
value(1, 2803,'10').
hasField(2905, 2803).
field(2808,isolate).
hasField(2905, 2808).
value(1, 2808,'3D7').
hasField(2905, 2808).
hasField(2905, 2813).
field(2815,location).
value(1, 2815, 'join(AE014185.2:786502..786625,AE014185.2:786805..787007)').
hasField(2905, 2815).
field(2818,db).
value(1, 2818, 'EnsemblGenomes-Tr').
hasField(2905, 2818).
field(2820,id).
value(1, 2820, 'PF10_0187:mRNA').
hasField(2905, 2820).
field(2823,db).
value(1, 2823, 'GOA').
hasField(2905, 2823).
field(2825,id).
value(1, 2825, 'Q8IJK8').
hasField(2905, 2825).
field(2828,db).
value(1, 2828, 'InterPro').
hasField(2905, 2828).
field(2830,id).
value(1, 2830, 'IPR000231').
hasField(2905, 2830).
field(2833,db).
value(1, 2833, 'InterPro').
hasField(2905, 2833).
field(2835,id).
value(1, 2835, 'IPR004038').
hasField(2905, 2835).
field(2838,db).
value(1, 2838, 'InterPro').
hasField(2905, 2838).
field(2840,id).
value(1, 2840, 'IPR022991').
hasField(2905, 2840).
field(2843,db).
value(1, 2843, 'InterPro').
hasField(2905, 2843).
field(2845,id).
value(1, 2845, 'IPR029064').
hasField(2905, 2845).
field(2848,db).
value(1, 2848, 'PDB').
hasField(2905, 2848).
field(2850,id).
value(1, 2850, '3J79').
hasField(2905, 2850).
field(2853,db).
value(1, 2853, 'PDB').
hasField(2905, 2853).
field(2855,id).
value(1, 2855, '3JBN').
hasField(2905, 2855).
field(2858,db).
value(1, 2858, 'PDB').
hasField(2905, 2858).
field(2860,id).
value(1, 2860, '3JBO').
hasField(2905, 2860).
field(2863,db).
value(1, 2863, 'PDB').
hasField(2905, 2863).
field(2865,id).
value(1, 2865, '3JBP').
hasField(2905, 2865).
field(2868,db).
value(1, 2868, 'PDB').
hasField(2905, 2868).
field(2870,id).
value(1, 2870, '5UMD').
hasField(2905, 2870).
field(2873,db).
value(1, 2873, 'UniProtKB/TrEMBL').
hasField(2905, 2873).
field(2875,id).
value(1, 2875, 'Q8IJK8').
hasField(2905, 2875).
field(2878,codon_start).
hasField(2905, 2878).
value(1, 2878,'1').
hasField(2905, 2878).
field(2883,locus_tag).
hasField(2905, 2883).
value(1, 2883,'PF10_0187').
hasField(2905, 2883).
field(2888,product).
hasField(2905, 2888).
value(1, 2888,'60S ribosomal protein L30e, putative').
hasField(2905, 2888).
field(2893,protein_id).
hasField(2905, 2893).
value(1, 2893,'AAN35385.1').
hasField(2905, 2893).
field(2898,translation).
hasField(2905, 2898).
value(1, 2898,'MAKKSKKSAGDNINAKLQLVMKSGKYQFGRKSCLKALRTGKGKLVIVSSNCPSIQRSVIEYYAMLSKCGVHDYHGDNNDL
GTACGKLFRISCLVITDVGDSDIIKTNE').
hasField(2905, 2898).
field(2898,sequence).
value(1, 2898,'atggcaaaaaaatcaaaaaagagcgcgggagataatattaacgccaaattacaacttgtt
atgaaatctgggaaatatcaatttggaagaaaatcatgtttaaaggctttaagaacagga').
hasField(2905, 2898).
field(2898,sequence).
value(1, 2898,'aaaggcaaacttgttattgtaagtagtaactgcccatccatacaaagaagtgtaattgaa
tattatgctatgctttcaaaatgtggagttcatgattatcatggtgataacaacgattta').
hasField(2905, 2898).
field(2898,sequence).
value(1, 2898,'ggtactgcttgtggtaaattattccgtataagttgtttagttataacagatgttggagat
tctgatattataaagaccaatgaataa').
hasField(2905, 2898).
tuple(3).
hasTuple(2905, 3).
field(2910,accession).
value(3, 2910, 'CAA82249').
haskey(2905,2910).
hasField(2905, 2910).
field(2912,version).
value(3, 2912, '1').
hasField(2905, 2912).
field(2914,entryversion).
value(3, 2914, '4').
hasField(2905, 2914).
field(2916,dataclass).
value(3, 2916, 'STD').
hasField(2905, 2916).
field(2918,taxonomicdivision).
value(3, 2918, 'INV').
hasField(2905, 2918).
field(2920,moleculetype).
value(3, 2920, 'mRNA').
hasField(2905, 2920).
field(2922,sequencelength).
value(3, 2922, '315').
hasField(2905, 2922).
field(2924,topology).
value(3, 2924, 'linear').
hasField(2905, 2924).
field(2926,firstpublic).
value(3, 2926, '1994-04-13').
hasField(2905, 2926).
field(2928,firstpublicrelease).
value(3, 2928, '39').
hasField(2905, 2928).
field(2930,lastupdated).
value(3, 2930, '2005-04-18').
hasField(2905, 2930).
field(2932,lastupdatedrelease).
value(3, 2932, '83').
hasField(2905, 2932).
field(2932,description).
value(3, 2932,'Leishmania major L30-like ribosomal protein').
hasField(2905, 2932).
field(2937,type).
value(3, 2937, 'unpublished').
hasField(2905, 2937).
field(2939,number).
value(3, 2939, '1').
hasField(2905, 2939).
field(2939,title).
value(3, 2939,'Sequence of a cDNA from Leishmania mojor encoding a protein homologous with the human ribosomal protein L30').
hasField(2905, 2939).
field(2939,author).
value(3, 2939,'Robyr D.C.').
hasField(2905, 2939).
field(2939,referencelocation).
value(3, 2939,'').
hasField(2905, 2939).
field(2948,type).
value(3, 2948, 'submission').
hasField(2905, 2948).
field(2950,number).
value(3, 2950, '2').
hasField(2905, 2950).
field(2950,author).
value(3, 2950,'Robyr D.C.').
hasField(2905, 2950).
field(2950,submissiondate).
value(3, 2950,'1993-12-03').
hasField(2905, 2950).
field(2950,referencelocation).
value(3, 2950,'Submitted (03-DEC-1993) to the INSDC.
Daniel C Robyr, Institute of Biochemistry, University of Lausanne, Chemin des').
hasField(2905, 2950).
field(2950,referencelocation).
value(3, 2950,'Boveresses 155, Epalinges, CH 1066, Switzerland').
hasField(2905, 2950).
field(2960,db).
value(3, 2960, 'EMBL').
hasField(2905, 2960).
field(2962,id).
value(3, 2962, 'Z28408.1').
hasField(2905, 2962).
field(2965,db).
value(3, 2965, 'MD5').
hasField(2905, 2965).
field(2967,id).
value(3, 2967, 'fd1a45b41a26100eb88141a06edf5725').
hasField(2905, 2967).
hasField(2905, 2970).
field(2972,location).
value(3, 2972, '1..315').
hasField(2905, 2972).
field(2975,scientificname).
value(3, 2975, 'Leishmania major').
hasField(2905, 2975).
field(2977,taxid).
value(3, 2977, '5664').
hasField(2905, 2977).
field(2981,scientificname).
value(3, 2981, 'Eukaryota').
hasField(2905, 2981).
field(2984,scientificname).
value(3, 2984, 'Euglenozoa').
hasField(2905, 2984).
field(2987,scientificname).
value(3, 2987, 'Kinetoplastida').
hasField(2905, 2987).
field(2990,scientificname).
value(3, 2990, 'Trypanosomatidae').
hasField(2905, 2990).
field(2993,scientificname).
value(3, 2993, 'Leishmaniinae').
hasField(2905, 2993).
field(2996,scientificname).
value(3, 2996, 'Leishmania').
hasField(2905, 2996).
field(2999,organism).
hasField(2905, 2999).
value(3, 2999,'Leishmania major').
hasField(2905, 2999).
field(3004,strain).
hasField(2905, 3004).
value(3, 3004,'LV 39').
hasField(2905, 3004).
hasField(2905, 3009).
field(3011,location).
value(3, 3011, 'Z28408.1:71..385').
hasField(2905, 3011).
field(3014,db).
value(3, 3014, 'GOA').
hasField(2905, 3014).
field(3016,id).
value(3, 3016, 'P39095').
hasField(2905, 3016).
field(3019,db).
value(3, 3019, 'InterPro').
hasField(2905, 3019).
field(3021,id).
value(3, 3021, 'IPR000231').
hasField(2905, 3021).
field(3024,db).
value(3, 3024, 'InterPro').
hasField(2905, 3024).
field(3026,id).
value(3, 3026, 'IPR004038').
hasField(2905, 3026).
field(3029,db).
value(3, 3029, 'InterPro').
hasField(2905, 3029).
field(3031,id).
value(3, 3031, 'IPR022991').
hasField(2905, 3031).
field(3034,db).
value(3, 3034, 'InterPro').
hasField(2905, 3034).
field(3036,id).
value(3, 3036, 'IPR029064').
hasField(2905, 3036).
field(3039,db).
value(3, 3039, 'UniProtKB/Swiss-Prot').
hasField(2905, 3039).
field(3041,id).
value(3, 3041, 'P39095').
hasField(2905, 3041).
field(3044,product).
hasField(2905, 3044).
value(3, 3044,'L30-like ribosomal protein').
hasField(2905, 3044).
field(3049,protein_id).
hasField(2905, 3049).
value(3, 3049,'CAA82249.1').
hasField(2905, 3049).
field(3054,translation).
hasField(2905, 3054).
value(3, 3054,'MAKKTKSKVNTINAKLQLVMKSGKYVLGTQQALTTLRQGRSKLVVIANNCPPIRRAEVEYYCTLSKTPIHHYSGNNLDLG
TACGKPFRTCVLSVTNVGDSDIAT').
hasField(2905, 3054).
field(3054,sequence).
value(3, 3054,'atggccaagaagacgaagtctaaggtgaacacgatcaacgccaagctccagctggtgatg
aagtccggtaagtacgtgctcggaacgcagcaggcgctgacgaccctccgtcagggccgc').
hasField(2905, 3054).
field(3054,sequence).
value(3, 3054,'agcaagctggttgtgatcgccaacaactgcccgccgatccgccgcgccgaggtggagtac
tactgcaccctcagcaagacccccatccaccactactctggcaacaacctggacctcggt').
hasField(2905, 3054).
field(3054,sequence).
value(3, 3054,'acggcgtgcggcaagccattccgcacatgcgtcctgtccgtgacaaatgttggggactcc
gacatcgctacctaa').
hasField(2905, 3054).
tuple(9).
hasTuple(2905, 9).
field(3074,accession).
value(9, 3074, 'AAN35385').
haskey(2905,3074).
hasField(2905, 3074).
field(3076,version).
value(9, 3076, '1').
hasField(2905, 3076).
field(3078,entryversion).
value(9, 3078, '5').
hasField(2905, 3078).
field(3080,dataclass).
value(9, 3080, 'STD').
hasField(2905, 3080).
field(3082,taxonomicdivision).
value(9, 3082, 'INV').
hasField(2905, 3082).
field(3084,moleculetype).
value(9, 3084, 'genomic DNA').
hasField(2905, 3084).
field(3086,sequencelength).
value(9, 3086, '327').
hasField(2905, 3086).
field(3088,topology).
value(9, 3088, 'linear').
hasField(2905, 3088).
field(3090,firstpublic).
value(9, 3090, '2002-10-09').
hasField(2905, 3090).
field(3092,firstpublicrelease).
value(9, 3092, '73').
hasField(2905, 3092).
field(3094,lastupdated).
value(9, 3094, '2014-09-03').
hasField(2905, 3094).
field(3096,lastupdatedrelease).
value(9, 3096, '122').
hasField(2905, 3096).
field(3096,projectaccession).
value(9, 3096,'PRJNA13173').
hasField(2905, 3096).
field(3096,description).
value(9, 3096,'Plasmodium falciparum 3D7 60S ribosomal protein L30e, putative').
hasField(2905, 3096).
field(3103,type).
value(9, 3103, 'article').
hasField(2905, 3103).
field(3105,number).
value(9, 3105, '1').
hasField(2905, 3105).
field(3105,title).
value(9, 3105,'Genome sequence of the human malaria parasite Plasmodium falciparum').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Gardner M.J.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Hall N.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Fung E.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'White O.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Berriman M.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Hyman R.W.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Carlton J.M.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Pain A.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Nelson K.E.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Bowman S.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Paulsen I.T.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'James K.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Eisen J.A.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Rutherford K.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Salzberg S.L.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Craig A.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Kyes S.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Chan M.S.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Nene V.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Shallom S.J.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Suh B.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Peterson J.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Angiuoli S.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Pertea M.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Allen J.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Selengut J.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Haft D.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Mather M.W.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Vaidya A.B.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Martin D.M.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Fairlamb A.H.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Fraunholz M.J.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Roos D.S.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Ralph S.A.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'McFadden G.I.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Cummings L.M.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Subramanian G.M.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Mungall C.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Venter J.C.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Carucci D.J.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Hoffman S.L.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Newbold C.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Davis R.W.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Fraser C.M.').
hasField(2905, 3105).
field(3105,author).
value(9, 3105,'Barrell B.').
hasField(2905, 3105).
field(3105,journal).
value(9, 3105,'Nature').
hasField(2905, 3105).
field(3105,year).
value(9, 3105,'2002').
hasField(2905, 3105).
field(3105,volume).
value(9, 3105,'419').
hasField(2905, 3105).
field(3105,issue).
value(9, 3105,'6906').
hasField(2905, 3105).
field(3105,firstpage).
value(9, 3105,'498').
hasField(2905, 3105).
field(3105,lastpage).
value(9, 3105,'511').
hasField(2905, 3105).
field(3105,referencelocation).
value(9, 3105,'Nature 419(6906):498-511(2002).').
hasField(2905, 3105).
field(3214,db).
value(9, 3214, 'DOI').
hasField(2905, 3214).
field(3216,id).
value(9, 3216, '10.1038/nature01097').
hasField(2905, 3216).
field(3219,db).
value(9, 3219, 'PUBMED').
hasField(2905, 3219).
field(3221,id).
value(9, 3221, '12368864').
hasField(2905, 3221).
field(3224,type).
value(9, 3224, 'submission').
hasField(2905, 3224).
field(3226,number).
value(9, 3226, '2').
hasField(2905, 3226).
field(3226,author).
value(9, 3226,'Gardner M.J.').
hasField(2905, 3226).
field(3226,submissiondate).
value(9, 3226,'2002-09-13').
hasField(2905, 3226).
field(3226,referencelocation).
value(9, 3226,'Submitted (13-SEP-2002) to the INSDC.
The Institute for Genomic Research, 9715 Medical Center Dr., Rockville, MD').
hasField(2905, 3226).
field(3226,referencelocation).
value(9, 3226,'20850, USA').
hasField(2905, 3226).
field(3236,type).
value(9, 3236, 'submission').
hasField(2905, 3236).
field(3238,number).
value(9, 3238, '3').
hasField(2905, 3238).
field(3238,author).
value(9, 3238,'Aslett M.').
hasField(2905, 3238).
field(3238,author).
value(9, 3238,'Brunk B.').
hasField(2905, 3238).
field(3238,author).
value(9, 3238,'Gardner M.').
hasField(2905, 3238).
field(3238,author).
value(9, 3238,'Berriman M.').
hasField(2905, 3238).
field(3238,consortium).
value(9, 3238,'P. falciparum Genome Sequencing Consortium').
hasField(2905, 3238).
field(3238,submissiondate).
value(9, 3238,'2009-07-30').
hasField(2905, 3238).
field(3238,comment).
value(9, 3238,'Sequence update by submitter').
hasField(2905, 3238).
field(3238,referencelocation).
value(9, 3238,'Submitted (30-JUL-2009) to the INSDC.
The Sanger Centre, Wellcome Trust Genome Campus, Hinxton, Cambridge CB10 1SA, UK').
hasField(2905, 3238).
field(3257,db).
value(9, 3257, 'EMBL').
hasField(2905, 3257).
field(3259,id).
value(9, 3259, 'AE014185.2').
hasField(2905, 3259).
field(3262,db).
value(9, 3262, 'MD5').
hasField(2905, 3262).
field(3264,id).
value(9, 3264, 'd34fba04f82b409053dfad8529135d2f').
hasField(2905, 3264).
field(3267,db).
value(9, 3267, 'BioSample').
hasField(2905, 3267).
field(3269,id).
value(9, 3269, 'SAMN00102897').
hasField(2905, 3269).
hasField(2905, 3272).
field(3274,location).
value(9, 3274, '1..327').
hasField(2905, 3274).
field(3277,scientificname).
value(9, 3277, 'Plasmodium falciparum 3D7').
hasField(2905, 3277).
field(3279,taxid).
value(9, 3279, '36329').
hasField(2905, 3279).
field(3283,scientificname).
value(9, 3283, 'Eukaryota').
hasField(2905, 3283).
field(3286,scientificname).
value(9, 3286, 'Alveolata').
hasField(2905, 3286).
field(3289,scientificname).
value(9, 3289, 'Apicomplexa').
hasField(2905, 3289).
field(3292,scientificname).
value(9, 3292, 'Aconoidasida').
hasField(2905, 3292).
field(3295,scientificname).
value(9, 3295, 'Haemosporida').
hasField(2905, 3295).
field(3298,scientificname).
value(9, 3298, 'Plasmodiidae').
hasField(2905, 3298).
field(3301,scientificname).
value(9, 3301, 'Plasmodium').
hasField(2905, 3301).
field(3304,scientificname).
value(9, 3304, 'Plasmodium (Laverania)').
hasField(2905, 3304).
field(3307,organism).
hasField(2905, 3307).
value(9, 3307,'Plasmodium falciparum 3D7').
hasField(2905, 3307).
field(3312,chromosome).
hasField(2905, 3312).
value(9, 3312,'10').
hasField(2905, 3312).
field(3317,isolate).
hasField(2905, 3317).
value(9, 3317,'3D7').
hasField(2905, 3317).
hasField(2905, 3322).
field(3324,location).
value(9, 3324, 'join(AE014185.2:786502..786625,AE014185.2:786805..787007)').
hasField(2905, 3324).
field(3327,db).
value(9, 3327, 'EnsemblGenomes-Tr').
hasField(2905, 3327).
field(3329,id).
value(9, 3329, 'PF10_0187:mRNA').
hasField(2905, 3329).
field(3332,db).
value(9, 3332, 'GOA').
hasField(2905, 3332).
field(3334,id).
value(9, 3334, 'Q8IJK8').
hasField(2905, 3334).
field(3337,db).
value(9, 3337, 'InterPro').
hasField(2905, 3337).
field(3339,id).
value(9, 3339, 'IPR000231').
hasField(2905, 3339).
field(3342,db).
value(9, 3342, 'InterPro').
hasField(2905, 3342).
field(3344,id).
value(9, 3344, 'IPR004038').
hasField(2905, 3344).
field(3347,db).
value(9, 3347, 'InterPro').
hasField(2905, 3347).
field(3349,id).
value(9, 3349, 'IPR022991').
hasField(2905, 3349).
field(3352,db).
value(9, 3352, 'InterPro').
hasField(2905, 3352).
field(3354,id).
value(9, 3354, 'IPR029064').
hasField(2905, 3354).
field(3357,db).
value(9, 3357, 'PDB').
hasField(2905, 3357).
field(3359,id).
value(9, 3359, '3J79').
hasField(2905, 3359).
field(3362,db).
value(9, 3362, 'PDB').
hasField(2905, 3362).
field(3364,id).
value(9, 3364, '3JBN').
hasField(2905, 3364).
field(3367,db).
value(9, 3367, 'PDB').
hasField(2905, 3367).
field(3369,id).
value(9, 3369, '3JBO').
hasField(2905, 3369).
field(3372,db).
value(9, 3372, 'PDB').
hasField(2905, 3372).
field(3374,id).
value(9, 3374, '3JBP').
hasField(2905, 3374).
field(3377,db).
value(9, 3377, 'PDB').
hasField(2905, 3377).
field(3379,id).
value(9, 3379, '5UMD').
hasField(2905, 3379).
field(3382,db).
value(9, 3382, 'UniProtKB/TrEMBL').
hasField(2905, 3382).
field(3384,id).
value(9, 3384, 'Q8IJK8').
hasField(2905, 3384).
field(3387,codon_start).
hasField(2905, 3387).
value(9, 3387,'1').
hasField(2905, 3387).
field(3392,locus_tag).
hasField(2905, 3392).
value(9, 3392,'PF10_0187').
hasField(2905, 3392).
field(3397,product).
hasField(2905, 3397).
value(9, 3397,'60S ribosomal protein L30e, putative').
hasField(2905, 3397).
field(3402,protein_id).
hasField(2905, 3402).
value(9, 3402,'AAN35385.1').
hasField(2905, 3402).
field(3407,translation).
hasField(2905, 3407).
value(9, 3407,'MAKKSKKSAGDNINAKLQLVMKSGKYQFGRKSCLKALRTGKGKLVIVSSNCPSIQRSVIEYYAMLSKCGVHDYHGDNNDL
GTACGKLFRISCLVITDVGDSDIIKTNE').
hasField(2905, 3407).
field(3407,sequence).
value(9, 3407,'atggcaaaaaaatcaaaaaagagcgcgggagataatattaacgccaaattacaacttgtt
atgaaatctgggaaatatcaatttggaagaaaatcatgtttaaaggctttaagaacagga').
hasField(2905, 3407).
field(3407,sequence).
value(9, 3407,'aaaggcaaacttgttattgtaagtagtaactgcccatccatacaaagaagtgtaattgaa
tattatgctatgctttcaaaatgtggagttcatgattatcatggtgataacaacgattta').
hasField(2905, 3407).
field(3407,sequence).
value(9, 3407,'ggtactgcttgtggtaaattattccgtataagttgtttagttataacagatgttggagat
tctgatattataaagaccaatgaataa').
hasField(2905, 3407).

%
%
%
%Rules
%
[library(dcg/basics)].
:-use_module(library(clpfd)).
%=============================================================
%1.Retrieve all programs with their input and output ports for the workflow 'w' and provenance graph 'g'. (C1)
%8.Retrieve all programs with their input and output ports for each workflow specification. (C4)

query_1_8(DstName, WkfName, PgId, PgName, InPortId, OutPortId, InPortName, OutPortName) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,WkfName)]),
	hasSubProgram(WkfId, PgId),
	entity(PgId, [prop(prov:type,['prov:plan','provone:program']),prop(prov:label,PgName)]),
	(
	  (
	    hasInPort(PgId,InPortId),
	    entity(InPortId, [prop(prov:type,['provone:port']),prop(_,InPortName)])
	  );
	  (
	    hasOutPort(PgId,OutPortId) ,
	    entity(OutPortId, [prop(prov:type,['provone:port']),prop(_,OutPortName)])
	  )
	), nl.

inPorts(PgId) :-
	hasInPort(PgId, PortId),
	entity(PortId, [prop(prov:type,['provone:port']),prop(_,Port)]),
	write('Input: '),
	write(Port), nl.

outPorts(PgId) :-
	hasOutPort(PgId, PortId),
	entity(PortId, [prop(prov:type,['provone:port']),prop(_,Port)]),
	write('Output: '),
	write(Port),nl.
%=============================================================
%2.Retrieve all activity executions with their generated data for the workflow execution w and provenance graph g. (C2)
%9.Retrieve all activity executions with their generated data for each workflow execution. (C5)

query_2_9(DstName, WExName, ExName) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']),_]),
	activity(WEx,[prop(prov:type,provone:execution),prop(prov:label,WExName),_,_,_]),
	hadPlan(WEx, WkfId),
	wasPartOf(Ex, WEx),
	activity(Ex,[prop(prov:type,provone:execution),prop(prov:label,ExName),_,_,_]),nl.

%=============================================================
%6.Retrieve all programs (plans) of each execution and their input parameters for the workflow execution w and provenance graph 'g'.(C3)
%14.Retrieve all programs (plans) of each  execution and their input parameters for each workflow wf.(C6)

query_6_14(DstName, WExName, ExId, ExName, PgId, PgName, DataName, DataValue) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']),_]),
	activity(WEx,[prop(prov:type,provone:execution),prop(prov:label,WExName),_,_,_]),
	hadPlan(WEx, WkfId),
	wasPartOf(ExId, WEx),
	entity(PgId, [prop(prov:type,['prov:plan','provone:program']),prop(prov:label,PgName)]),
	activity(ExId,[prop(prov:type,provone:execution),prop(prov:label,ExName),_,_,_]),
	hadPlan(ExId, PgId),
	hasInPort(PgId, PortId),
	hasDefaultParam(PortId, DataId),
	entity(DataId, [prop(prov:type, ['provone:data']), prop(prov:label,DataName),prop(prov:type,'Boolean'),prop(prov:value,DataValue)]), nl.

%=============================================================
%7.Retrieve the workflow version, and the time consumed by each workflow execution for the workflow wf and provenance graph g. (C3)
%13.Retrieve the time consumed by each workflow execution for each workflow and provenance graph.  (C6)

executionTime(PGName, WkfName, WExName, ExTime) :-
	dataSet(PGId, PGName),
	hasDataSet(WkfId, PGId),
	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']), prop(_,WkfName)]),
	activity(WExId, [_, prop(prov:label, WExName),prop(prov:startTime, StartTime), prop(prov:endTime, EndTime), _]),
	hadPlan(WExId,WkfId),
	parse_time(StartTime, Stamp1),
	parse_time(EndTime, Stamp2),
	ExTime is Stamp2 - Stamp1, nl.

%=============================================================
%3.Retrieve the time consumed by each activity execution for the workflow execution w and provenance graph g. (C2)
%10.Retrieve the time consumed by each activity execution for each workflow execution.  (C5)

query_3_10(DstName, WExName, ExName, ExTime) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	activity(WExId, [_, prop(prov:label, WExName),_,_,_]),
	hadPlan(WExId,WkfId),
	activity(ExId, [_, prop(prov:label, ExName),prop(prov:startTime, StartTime), prop(prov:endTime, EndTime), _]),
	wasPartOf(ExId,WExId),
	parse_time(StartTime, Stamp1),
	parse_time(EndTime, Stamp2),
	ExTime is Stamp2 - Stamp1, nl.

%=============================================================
%5.Retrieve the complete dataflow trace of the output data d for the workflow execution w and provenance graph g. (C2)
%12.Retrieve the complete dataflow trace and the workflow specification for each workflow execution. (C6)

dataTrace(PGName, WkfName, WExName, OutputId, InputId) :-
	setof(InputId,OutputId^trace(PGName, WkfName, WExName, OutputId, InputId), InputId).

trace(PGName, WkfName, WExName, OutputId, InputId) :-
	dataSet(PGId, PGName),
	hasDataSet(WkfId, PGId),
	activity(WExId,[prop(prov:type,provone:execution),prop(prov:label, WExName),_,_,_]),
	entity(WkfId,[prop(prov:type,ETypes),prop(prov:label,WkfName)]),
	member('provone:workflow', ETypes),
	hadPlan(WExId,WkfId),
	wasPartOf(ExId, WExId),
	wasGeneratedBy(OutputId, ExId),
	dataFlow(OutputId, InputId), nl.

dataFlow(Output, Input) :-
	wasDerivedFrom(Output, Input).

dataFlow(Output, Input) :-
	wasDerivedFrom(Output, X),
	dataFlow(X, Input).

%============================================================
%4.Retrieve the complete activity execution trace that influenced the generation of the data d. (C2)
%11.Retrieve the ports, workflow executions, provenance graphs, and the complete activity execution trace that influenced the generation of all data. (C6)

activityTrace(DstName, WExName, PortId, ExId2, DataId) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	activity(WExId, [_, prop(prov:label, WExName),_,_,_]),
	hadPlan(WExId,WkfId),
	wasPartOf(ExId, WExId),
	(   hadInPort(ExId,PortId); hadOutPort(ExId, PortId)),
	wasGeneratedBy(DataId, ExId),
	activityFlows(ExId,ExId2), nl.

activityFlows(Ex1, Ex2) :-
	wasInformedBy(Ex1, Ex2), nl,
	write('Execution = '), write(Ex1).

activityFlows(Ex1, Ex2) :-
	wasInformedBy(Ex1, Ex3),
	activityFlows(Ex3, Ex2).

rule13(ExId2,DataId) :-
	wasGeneratedBy(DataId, ExId),
	activityFlows(ExId,ExId2), nl.

% =======================================================================
% Consulta 1: Quais sequências estão linkadas ao taxon INV numa
% determinada execução de workflow?
% seqTaxon(WkfEx, 'INV', Seq).

seqTaxon(WkfEx, Taxon, Seq) :-
	distinct(q1(WkfEx, Taxon, Seq)).

q1(WkfEx, Taxon, Seq) :-
        domainRelation(IdDR, _),
	used(WkfEx,IdDR),
	hasTuple(IdDR, IdTpl),
	tuple(IdTpl),
	hasField(IdDR,IdFld),
	field(IdFld,accession),
	value(IdTpl, IdFld,Seq),
	hasField(IdDR,IdFld2),
	field(IdFld2,taxonomicdivision),
	value(IdTpl,IdFld2,Taxon),nl.

% =======================================================================
% Consulta 2: Qual é o tipo de molécula de cada sequência registrada na
% base de conhecimento?
% molType(Seq,MolType).

molType(Seq,MolType):-
	distinct(q2(Seq,MolType)).

q2(Seq,MolType):-
	domainRelation(IdDR,_),
	hasTuple(IdDR, IdTpl),
	tuple(IdTpl),
	hasField(IdDR, IdFld),
	field(IdFld,accession),
	value(IdTpl, IdFld, Seq),
	field(IdFld2,moleculetype),
	value(IdTpl,IdFld2,MolType),nl.


% =======================================================================
% Consulta 3: Qual foi a duração da execução de workflow que
% utilizou o organismo 'Plasmodium falciparum 3D7'?
% orgTime(WExName, 'Plasmodium falciparum 3D7', Duration).

orgTime(WExName, Organism, Duration) :-
	distinct(q3(WExName, Organism, Duration)).

q3(WExName, Organism, Duration) :-
	activity(WExId, [_, prop(prov:label, WExName),prop(prov:startTime, StartTime), prop(prov:endTime, EndTime), _]),
	used(WExId,IdDR),
	domainRelation(IdDR,_),
	hasField(IdDR,IdFld),
	field(IdFld, organism),
	value(_,IdFld, Organism),
	parse_time(StartTime, Stamp1),
	parse_time(EndTime, Stamp2),
	Duration is integer(Stamp2 - Stamp1),nl.

%=======================================================================
% Consulta 4: Qual é o tamanho de cada sequência pertecente à
% DomainRelation 'Sequence2905'?
% seqLength(DomainRel,Seq,Size).
% seqLength('Sequence2905',Seq,Size).

seqLength(DomainRel,Seq,Size) :-
	distinct(q4(DomainRel,Seq,Size)).

q4(DomainRel,Seq,Size) :-
        domainRelation(IdDR,DomainRel),
	hasTuple(IdDR, IdTpl),
	tuple(IdTpl),
	hasField(IdDR,IdFld),
	field(IdFld,accession),
	value(IdTpl, IdFld, Seq),
	hasField(IdDR,IdFld2),
	field(IdFld2,sequencelength),
	value(IdTpl,IdFld2,Size),nl.

% =======================================================================
% Consulta 5: Qual a linhagem do Scientific Name 'Leishmania major'?
%lineage('Leishmania major',Lineage).

lineage(SciName,Lineage) :-
	distinct(q5(SciName,Lineage)).

q5(SciName,Lineage) :-
        domainRelation(IdDR, _),
	hasTuple(IdDR, IdTpl),
	tuple(IdTpl),
	hasField(IdDR,IdFld),
	field(IdFld,scientificname),
	value(IdTpl,IdFld,SciName),
	hasField(IdDR,IdFld2),
	field(IdFld2,scientificname),
	value(IdTpl,IdFld2,Lineage).
