agent(1,'SciCumulus').
entity(w1,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,'sciphy')]).
entity(pg1,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'dataselection'),prop(wfms:package,'%=WFDIR%/template_dataselection./experiment.cmd')]).
entity(pg2,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'mafft'),prop(wfms:package,'%=WFDIR%/template_mafft./experiment.cmd')]).
entity(pg3,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'readseq'),prop(wfms:package,'%=WFDIR%/template_readseq./experiment.cmd')]).
entity(pg4,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'modelgenerator'),prop(wfms:package,'%=WFDIR%/template_modelgenerator./experiment.cmd')]).
entity(pg5,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'raxml1'),prop(wfms:package,'%=WFDIR%/template_raxml_1./experiment.cmd')]).
entity(pg6,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'raxml2'),prop(wfms:package,'%=WFDIR%/template_raxml_2./experiment.cmd')]).
entity(pg7,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'mergeRaxml'),prop(wfms:package,'          SELECT I.EWKFID, I.dlraxml1id, I.dlmodelgeneratorid, I.dlreadseqid, I.dlmafftid, Y.dlraxml2id, I.NAME, I.FASTA_FILE    FROM sciphy.oraxml1 as I, sciphy.oraxml2 as Y, sciphy.dlraxml1 as R, sciphy.dlraxml2 as S    WHERE I.NAME = Y.NAME AND I.ewkfid=%=EWKFID% AND Y.ewkfid=I.ewkfid     AND R.ewkfid = I.ewkfid AND S.ewkfid = I.ewkfid    AND R.rid = I.dlraxml1id AND S.rid = Y.dlraxml2id')]).
entity(pg8,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'raxml3'),prop(wfms:package,'%=WFDIR%/template_raxml_3./experiment.cmd')]).
entity(pin1,[prop(prov:type,'provone:port'),prop(prov:label,'idataselection'),prop(wfms:signature,['null'])]).
entity(pint2,[prop(prov:type,'provone:port'),prop(prov:label,'odataselection'),prop(wfms:signature,['null'])]).
entity(pint3,[prop(prov:type,'provone:port'),prop(prov:label,'omafft'),prop(wfms:signature,['null'])]).
entity(pint4,[prop(prov:type,'provone:port'),prop(prov:label,'oreadseq'),prop(wfms:signature,['null'])]).
entity(pint5,[prop(prov:type,'provone:port'),prop(prov:label,'omodelgenerator'),prop(wfms:signature,['null'])]).
entity(pint6,[prop(prov:type,'provone:port'),prop(prov:label,'oraxml1'),prop(wfms:signature,['null'])]).
entity(pint7,[prop(prov:type,'provone:port'),prop(prov:label,'oraxml2'),prop(wfms:signature,['null'])]).
entity(pint8,[prop(prov:type,'provone:port'),prop(prov:label,'omergeraxml'),prop(wfms:signature,['null'])]).
entity(pout9,[prop(prov:type,'provone:port'),prop(prov:label,'oraxml3'),prop(wfms:signature,['null'])]).
hasSubProgram(w1,pg1).
hasSubProgram(w1,pg2).
hasSubProgram(w1,pg3).
hasSubProgram(w1,pg4).
hasSubProgram(w1,pg5).
hasSubProgram(w1,pg6).
hasSubProgram(w1,pg7).
hasSubProgram(w1,pg8).
hasOutPort(pg1,pint2).
hasOutPort(pg2,pint3).
hasOutPort(pg3,pint4).
hasOutPort(pg4,pint5).
hasOutPort(pg4,pint5).
hasOutPort(pg5,pint6).
hasOutPort(pg6,pint7).
hasOutPort(pg7,pint8).
hasOutPort(pg8,pout9).
hasInPort(pg1,pin1).
hasInPort(pg2,pint2).
hasInPort(pg3,pint3).
hasInPort(pg4,pint4).
hasInPort(pg5,pint5).
hasInPort(pg6,pint5).
hasInPort(pg7,pint6).
hasInPort(pg7,pint7).
hasInPort(pg8,pint8).
entity(dc1,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc6,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc12,[prop(prov:type,['provone:document']),prop(prov:label,'FILE12'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc13,[prop(prov:type,['provone:document']),prop(prov:label,'FILE13'),prop(prov:value,'ORTHOMCL256.mafft')]).
entity(dc14,[prop(prov:type,['provone:document']),prop(prov:label,'FILE14'),prop(prov:value,'dlmafft.data')]).
entity(dc21,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc20,[prop(prov:type,['provone:document']),prop(prov:label,'MAFFT_FILE'),prop(prov:value,'ORTHOMCL256.mafft')]).
entity(dc19,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc26,[prop(prov:type,['provone:document']),prop(prov:label,'FILE26'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc27,[prop(prov:type,['provone:document']),prop(prov:label,'FILE27'),prop(prov:value,'dlreadseq.data')]).
entity(dc32,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc31,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc30,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc37,[prop(prov:type,['provone:document']),prop(prov:label,'FILE37'),prop(prov:value,'ORTHOMCL256.mg')]).
entity(dc38,[prop(prov:type,['provone:document']),prop(prov:label,'FILE38'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc39,[prop(prov:type,['provone:document']),prop(prov:label,'FILE39'),prop(prov:value,'ORTHOMCL256.phylip_phyml.sh')]).
entity(dc40,[prop(prov:type,['provone:document']),prop(prov:label,'FILE40'),prop(prov:value,'ORTHOMCL256.phylip_phymlBoot.sh')]).
entity(dc41,[prop(prov:type,['provone:document']),prop(prov:label,'FILE41'),prop(prov:value,'ORTHOMCL256.phylip_puzzleBoot.sh')]).
entity(dc42,[prop(prov:type,['provone:document']),prop(prov:label,'FILE42'),prop(prov:value,'ORTHOMCL256.phylip_treePuzzle.sh')]).
entity(dc43,[prop(prov:type,['provone:document']),prop(prov:label,'FILE43'),prop(prov:value,'dlmodelgenerator.data')]).
entity(dc46,[prop(prov:type,['provone:document']),prop(prov:label,'FILE46'),prop(prov:value,'modelgenerator0.out')]).
entity(dc56,[prop(prov:type,['provone:document']),prop(prov:label,'MG'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc55,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc54,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc53,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc65,[prop(prov:type,['provone:document']),prop(prov:label,'FILE65'),prop(prov:value,'ORTHOMCL256.phylip.modelMGBateRaxml.txt')]).
entity(dc66,[prop(prov:type,['provone:document']),prop(prov:label,'FILE66'),prop(prov:value,'RAxML_bestTree.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc67,[prop(prov:type,['provone:document']),prop(prov:label,'FILE67'),prop(prov:value,'RAxML_info.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc68,[prop(prov:type,['provone:document']),prop(prov:label,'FILE68'),prop(prov:value,'RAxML_log.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc69,[prop(prov:type,['provone:document']),prop(prov:label,'FILE69'),prop(prov:value,'RAxML_parsimonyTree.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc70,[prop(prov:type,['provone:document']),prop(prov:label,'FILE70'),prop(prov:value,'RAxML_result.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc71,[prop(prov:type,['provone:document']),prop(prov:label,'FILE71'),prop(prov:value,'dlraxml1.data')]).
entity(dc50,[prop(prov:type,['provone:document']),prop(prov:label,'MG'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc49,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc48,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc47,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc77,[prop(prov:type,['provone:document']),prop(prov:label,'FILE77'),prop(prov:value,'ORTHOMCL256.phylip.modelMGBateRaxml.txt')]).
entity(dc78,[prop(prov:type,['provone:document']),prop(prov:label,'FILE78'),prop(prov:value,'RAxML_bootstrap.ORTHOMCL256.phylip_tree2.raxml')]).
entity(dc79,[prop(prov:type,['provone:document']),prop(prov:label,'FILE79'),prop(prov:value,'RAxML_info.ORTHOMCL256.phylip_tree2.raxml')]).
entity(dc80,[prop(prov:type,['provone:document']),prop(prov:label,'FILE80'),prop(prov:value,'dlraxml2.data')]).
entity(dc88,[prop(prov:type,['provone:document']),prop(prov:label,'BOOTSTRAP'),prop(prov:value,'RAxML_bootstrap.ORTHOMCL256.phylip_tree2.raxml')]).
entity(dc87,[prop(prov:type,['provone:document']),prop(prov:label,'MG'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc86,[prop(prov:type,['provone:document']),prop(prov:label,'BESTTREE'),prop(prov:value,'RAxML_bestTree.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc85,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc84,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc83,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc92,[prop(prov:type,['provone:document']),prop(prov:label,'FILE92'),prop(prov:value,'ORTHOMCL256.phylip.modelMGBateRaxml.txt')]).
entity(dc93,[prop(prov:type,['provone:document']),prop(prov:label,'FILE93'),prop(prov:value,'RAxML_bipartitions.ORTHOMCL256.phylip_tree3.BS_TREE')]).
entity(dc94,[prop(prov:type,['provone:document']),prop(prov:label,'FILE94'),prop(prov:value,'RAxML_bipartitionsBranchLabels.ORTHOMCL256.phylip_tree3.BS_TREE')]).
entity(dc95,[prop(prov:type,['provone:document']),prop(prov:label,'FILE95'),prop(prov:value,'RAxML_info.ORTHOMCL256.phylip_tree3.BS_TREE')]).
entity(dc96,[prop(prov:type,['provone:document']),prop(prov:label,'FILE96'),prop(prov:value,'dlraxml3.data')]).
activity(ew12,[prop(prov:type,['provone:execution']),prop(prov:label,'sciphy-1'),prop(prov:startTime,'2015-11-13 15:55:59.56+00'),prop(prov:endTime,'2015-11-13 15:55:59.816+00'),prop(wfms:completed,'1')]).
activity(ex1,[prop(prov:type,['provone:execution']),prop(prov:label,'dataselection'),prop(prov:startTime,'2015-11-13 15:52:53.322+00'),prop(prov:endTime,'2015-11-13 15:52:53.332+00'),prop(wfms:completed,'1')]).
activity(ex2,[prop(prov:type,['provone:execution']),prop(prov:label,'mafft'),prop(prov:startTime,'2015-11-13 15:52:53.46+00'),prop(prov:endTime,'2015-11-13 15:52:53.518+00'),prop(wfms:completed,'1')]).
activity(ex3,[prop(prov:type,['provone:execution']),prop(prov:label,'readseq'),prop(prov:startTime,'2015-11-13 15:52:53.67+00'),prop(prov:endTime,'2015-11-13 15:52:53.829+00'),prop(wfms:completed,'1')]).
activity(ex4,[prop(prov:type,['provone:execution']),prop(prov:label,'modelgenerator'),prop(prov:startTime,'2015-11-13 15:52:54.004+00'),prop(prov:endTime,'2015-11-13 15:55:44.235+00'),prop(wfms:completed,'1')]).
activity(ex5,[prop(prov:type,['provone:execution']),prop(prov:label,'raxml2'),prop(prov:startTime,'2015-11-13 15:55:44.551+00'),prop(prov:endTime,'2015-11-13 15:55:59.464+00'),prop(wfms:completed,'1')]).
activity(ex6,[prop(prov:type,['provone:execution']),prop(prov:label,'raxml1'),prop(prov:startTime,'2015-11-13 15:55:44.559+00'),prop(prov:endTime,'2015-11-13 15:55:54.382+00'),prop(wfms:completed,'1')]).
activity(ex7,[prop(prov:type,['provone:execution']),prop(prov:label,'mergeRaxml'),prop(prov:startTime,'null'),prop(prov:endTime,'null'),prop(wfms:completed,'1')]).
activity(ex8,[prop(prov:type,['provone:execution']),prop(prov:label,'raxml3'),prop(prov:startTime,'2015-11-13 15:55:59.659+00'),prop(prov:endTime,'2015-11-13 15:55:59.673+00'),prop(wfms:completed,'1')]).
wasGeneratedBy(dc1,ex1).
wasGeneratedBy(dc6,ex2).
wasGeneratedBy(dc12,ex2).
wasGeneratedBy(dc13,ex2).
wasGeneratedBy(dc14,ex2).
wasGeneratedBy(dc21,ex3).
wasGeneratedBy(dc20,ex3).
wasGeneratedBy(dc19,ex3).
wasGeneratedBy(dc26,ex3).
wasGeneratedBy(dc27,ex3).
wasGeneratedBy(dc32,ex4).
wasGeneratedBy(dc31,ex4).
wasGeneratedBy(dc30,ex4).
wasGeneratedBy(dc37,ex4).
wasGeneratedBy(dc38,ex4).
wasGeneratedBy(dc39,ex4).
wasGeneratedBy(dc40,ex4).
wasGeneratedBy(dc41,ex4).
wasGeneratedBy(dc42,ex4).
wasGeneratedBy(dc43,ex4).
wasGeneratedBy(dc46,ex4).
wasGeneratedBy(dc56,ex6).
wasGeneratedBy(dc55,ex6).
wasGeneratedBy(dc54,ex6).
wasGeneratedBy(dc53,ex6).
wasGeneratedBy(dc65,ex6).
wasGeneratedBy(dc66,ex6).
wasGeneratedBy(dc67,ex6).
wasGeneratedBy(dc68,ex6).
wasGeneratedBy(dc69,ex6).
wasGeneratedBy(dc70,ex6).
wasGeneratedBy(dc71,ex6).
wasGeneratedBy(dc50,ex5).
wasGeneratedBy(dc49,ex5).
wasGeneratedBy(dc48,ex5).
wasGeneratedBy(dc47,ex5).
wasGeneratedBy(dc77,ex5).
wasGeneratedBy(dc78,ex5).
wasGeneratedBy(dc79,ex5).
wasGeneratedBy(dc80,ex5).
wasGeneratedBy(dc88,ex8).
wasGeneratedBy(dc87,ex8).
wasGeneratedBy(dc86,ex8).
wasGeneratedBy(dc85,ex8).
wasGeneratedBy(dc84,ex8).
wasGeneratedBy(dc83,ex8).
wasGeneratedBy(dc92,ex8).
wasGeneratedBy(dc93,ex8).
wasGeneratedBy(dc94,ex8).
wasGeneratedBy(dc95,ex8).
wasGeneratedBy(dc96,ex8).
used(ex2,dc5).
used(ex2,dc1).
used(ex3,dc18).
used(ex3,dc6).
used(ex3,dc12).
used(ex3,dc13).
used(ex3,dc14).
used(ex3,dc15).
used(ex3,dc16).
used(ex3,dc17).
used(ex4,dc26).
used(ex4,dc27).
used(ex4,dc28).
used(ex4,dc29).
used(ex4,dc19).
used(ex4,dc21).
used(ex4,dc20).
used(ex6,dc42).
used(ex5,dc42).
used(ex6,dc43).
used(ex5,dc43).
used(ex6,dc44).
used(ex5,dc44).
used(ex6,dc45).
used(ex5,dc45).
used(ex5,dc46).
used(ex6,dc46).
used(ex6,dc32).
used(ex5,dc32).
used(ex6,dc31).
used(ex5,dc31).
used(ex6,dc30).
used(ex5,dc30).
used(ex6,dc37).
used(ex5,dc37).
used(ex6,dc38).
used(ex5,dc38).
used(ex6,dc39).
used(ex5,dc39).
used(ex6,dc40).
used(ex5,dc40).
used(ex6,dc41).
used(ex5,dc41).
used(ex7,dc50).
used(ex7,dc49).
used(ex7,dc48).
used(ex7,dc47).
used(ex7,dc77).
used(ex7,dc78).
used(ex7,dc79).
used(ex7,dc80).
used(ex7,dc81).
used(ex7,dc82).
used(ex7,dc71).
used(ex7,dc56).
used(ex7,dc73).
used(ex7,dc72).
used(ex7,dc55).
used(ex7,dc54).
used(ex7,dc53).
used(ex7,dc65).
used(ex7,dc66).
used(ex7,dc67).
used(ex7,dc68).
used(ex7,dc69).
used(ex7,dc70).
wasPartOf(ex1,ew12).
wasPartOf(ex7,ew12).
wasPartOf(ex2,ew12).
wasPartOf(ex3,ew12).
wasPartOf(ex4,ew12).
wasPartOf(ex6,ew12).
wasPartOf(ex5,ew12).
wasPartOf(ex8,ew12).
wasAssociatedWith(ex1,u1).
wasAssociatedWith(ex2,u1).
wasAssociatedWith(ex3,u1).
wasAssociatedWith(ex4,u1).
wasAssociatedWith(ex6,u1).
wasAssociatedWith(ex5,u1).
wasAssociatedWith(ex8,u1).
wasInformedBy(ex2,ex1).
wasInformedBy(ex3,ex2).
wasInformedBy(ex4,ex3).
wasInformedBy(ex5,ex4).
wasInformedBy(ex6,ex4).
wasInformedBy(ex7,ex5).
wasInformedBy(ex7,ex6).
wasInformedBy(ex8,ex7).
hadPlan(ex1,pg1).
hadPlan(ex7,pg7).
hadPlan(ex2,pg2).
hadPlan(ex3,pg3).
hadPlan(ex4,pg4).
hadPlan(ex6,pg5).
hadPlan(ex5,pg6).
hadPlan(ex8,pg8).
hadInPort(ex1,pin1).
hadInPort(ex2,pint2).
hadInPort(ex3,pint3).
hadInPort(ex4,pint4).
hadInPort(ex6,pint5).
hadInPort(ex5,pint5).
hadInPort(ex7,pint6).
hadInPort(ex7,pint7).
hadInPort(ex8,pint8).
hadOutPort(ex1,pint2).
hadOutPort(ex2,pint3).
hadOutPort(ex3,pint4).
hadOutPort(ex4,pint5).
hadOutPort(ex4,pint5).
hadOutPort(ex6,pint6).
hadOutPort(ex5,pint7).
hadOutPort(ex7,pint8).
hadOutPort(ex8,pout9).
agent(1,[prop(prov:type,['provone:user']),prop(prov:label,'wellington-VirtualBox')]).
