agent(2,'e-Science Central').
entity(dc51559,[prop(prov:type,['provone:document']),prop(prov:label,'sequence-map.csv'),prop(prov:type,'null'),prop(prov:value,'null')]).
wasGeneratedBy(dc51559,ex51556).
activity(ex51556,[prop(prov:type,['provone:execution']),prop(prov:label,'CSVExport'),prop(prov:startTime,'Wed Jul 22 21:29:28 CEST 2015'),prop(prov:endTime,'Wed Jul 22 21:29:31 CEST 2015'),prop(wfms:completed,'0')]).
hadPlan(ex51556,pg9).
hadInPort(ex51556,pin91).
hasInPort(pg9,pin91).
wasDerivedFrom(ex51556,exV50025).
wasInformedBy(ex51556,ex51548).
wasPartOf(ex51556,ew51537).
wasDerivedFrom(ex51565,exV50025).
activity(ex51548,[prop(prov:type,['provone:execution']),prop(prov:label,'FilterDups'),prop(prov:startTime,'Wed Jul 22 21:29:28 CEST 2015'),prop(prov:endTime,'Wed Jul 22 21:29:28 CEST 2015'),prop(wfms:completed,'0')]).
hadPlan(ex51548,pg4).
hadOutPort(ex51548,pout41).
hasOutPort(pg4,pout41).
hadOutPort(ex51548,pout42).
hasOutPort(pg4,pout42).
hadOutPort(ex51548,pout43).
hasOutPort(pg4,pout43).
hadInPort(ex51548,pin41).
hasInPort(pg4,pin41).
wasDerivedFrom(ex51548,exV28418).
wasInformedBy(ex51548,ex51541).
wasInformedBy(ex51574,ex51548).
wasInformedBy(ex51565,ex51548).
wasPartOf(ex51548,ew51537).
activity(ex51541,[prop(prov:type,['provone:execution']),prop(prov:label,'ImportFile'),prop(prov:startTime,'Wed Jul 22 21:29:25 CEST 2015'),prop(prov:endTime,'Wed Jul 22 21:29:27 CEST 2015'),prop(wfms:completed,'0')]).
hadPlan(ex51541,pg10).
hadOutPort(ex51541,pout101).
hasOutPort(pg10,pout101).
wasDerivedFrom(ex51541,exV40).
used(ex51541,dc2012).
wasDerivedFrom(dc51559,dc2012).
wasPartOf(ex51541,ew51537).
entity(dc2012,[prop(prov:type,['provone:document']),prop(prov:label,'COI-Old World sandflies.txt'),prop(prov:type,'null'),prop(prov:value,'null')]).
activity(ew51537,[prop(prov:type,['provone:execution']),prop(prov:label,'Testing ML Pipeline'),prop(prov:startTime,'null'),prop(prov:endTime,'null'),prop(wfms:completed,'null')]).
hadPlan(ew51537,w6480).
wasPartOf(ex51603,ew51537).
wasPartOf(ex51594,ew51537).
wasPartOf(ex51583,ew51537).
wasPartOf(ex51574,ew51537).
wasPartOf(ex51565,ew51537).
wasDerivedFrom(ew51537,ewV49611).
activity(ex51603,[prop(prov:type,['provone:execution']),prop(prov:label,'ExportFiles'),prop(prov:startTime,'Wed Jul 22 21:37:13 CEST 2015'),prop(prov:endTime,'Wed Jul 22 21:37:14 CEST 2015'),prop(wfms:completed,'0')]).
hadPlan(ex51603,pg5).
hadInPort(ex51603,pin51).
hasInPort(pg5,pin51).
wasDerivedFrom(ex51603,exV35).
wasInformedBy(ex51603,ex51583).
wasDerivedFrom(ex51594,exV35).
activity(ex51583,[prop(prov:type,['provone:execution']),prop(prov:label,'MEGA_ML'),prop(prov:startTime,'Wed Jul 22 21:31:56 CEST 2015'),prop(prov:endTime,'Wed Jul 22 21:37:12 CEST 2015'),prop(wfms:completed,'0')]).
hadPlan(ex51583,pg2).
hadInPort(ex51583,pin21).
hasInPort(pg2,pin21).
hadOutPort(ex51583,pout21).
hasOutPort(pg2,pout21).
hadOutPort(ex51583,pout22).
hasOutPort(pg2,pout22).
wasDerivedFrom(ex51583,exV48432).
wasInformedBy(ex51583,ex51574).
wasInformedBy(ex51594,ex51583).
activity(ex51574,[prop(prov:type,['provone:execution']),prop(prov:label,'ClustalW'),prop(prov:startTime,'Wed Jul 22 21:29:35 CEST 2015'),prop(prov:endTime,'Wed Jul 22 21:31:56 CEST 2015'),prop(wfms:completed,'0')]).
hadPlan(ex51574,pg1).
hadOutPort(ex51574,pout11).
hasOutPort(pg1,pout11).
hadInPort(ex51574,pin11).
hasInPort(pg1,pin11).
wasDerivedFrom(ex51574,exV27941).
activity(ex51594,[prop(prov:type,['provone:execution']),prop(prov:label,'ExportFiles'),prop(prov:startTime,'Wed Jul 22 21:37:12 CEST 2015'),prop(prov:endTime,'Wed Jul 22 21:37:13 CEST 2015'),prop(wfms:completed,'0')]).
hadPlan(ex51594,pg3).
hadInPort(ex51594,pin31).
hasInPort(pg3,pin31).
activity(ex51565,[prop(prov:type,['provone:execution']),prop(prov:label,'CSVExport'),prop(prov:startTime,'Wed Jul 22 21:29:31 CEST 2015'),prop(prov:endTime,'Wed Jul 22 21:29:34 CEST 2015'),prop(wfms:completed,'0')]).
hadPlan(ex51565,pg6).
hadInPort(ex51565,pin61).
hasInPort(pg6,pin61).
entity(w6480,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,'Testing ML Pipeline'),prop(prov:type,'null'),prop(prov:value,'null')]).
entity(pg1,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'ClustalW'),prop(prov:type,'null'),prop(prov:value,'null')]).
hasSubProgram(w6480,pg1).
entity(pout11,[prop(prov:type,['provone:port']),prop(prov:label,'aligned-sequences'),prop(wfms:signature,['null])]).
entity(pin11,[prop(prov:type,['provone:port']),prop(prov:label,'input-sequences'),prop(wfms:signature,['null])]).
entity(d11,[prop(prov:type,['provone:data']),prop(prov:label,'Align'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin11,d11).
entity(d12,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin11,d12).
entity(d13,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'${Align}')]).
hasDefaultParam(pin11,d13).
entity(d14,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin11,d14).
entity(d15,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin11,d15).
entity(d16,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'ClustalW')]).
hasDefaultParam(pin11,d16).
entity(d17,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_1')]).
hasDefaultParam(pin11,d17).
entity(d18,[prop(prov:type,['provone:data']),prop(prov:label,'Output-Type'),prop(prov:type,'String'),prop(prov:value,'FASTA')]).
hasDefaultParam(pin11,d18).
entity(d19,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin11,d19).
entity(d110,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin11,d110).
entity(d111,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'40960')]).
hasDefaultParam(pin11,d111).
entity(d112,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin11,d112).
entity(d113,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin11,d113).
entity(d114,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin11,d114).
entity(d115,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin11,d115).
entity(pg5,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Export Files'),prop(prov:type,'null'),prop(prov:value,'null')]).
hasSubProgram(w6480,pg5).
entity(pin51,[prop(prov:type,['provone:port']),prop(prov:label,'file-list'),prop(wfms:signature,['null])]).
entity(d51,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d51).
entity(d52,[prop(prov:type,['provone:data']),prop(prov:label,'AutomaticFolder'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin51,d52).
entity(d53,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'')]).
hasDefaultParam(pin51,d53).
entity(d54,[prop(prov:type,['provone:data']),prop(prov:label,'Comments'),prop(prov:type,'String'),prop(prov:value,'Saved data')]).
hasDefaultParam(pin51,d54).
entity(d55,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin51,d55).
entity(d56,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin51,d56).
entity(d57,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'Export Files')]).
hasDefaultParam(pin51,d57).
entity(d58,[prop(prov:type,['provone:data']),prop(prov:label,'MakePublic'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d58).
entity(d59,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_5')]).
hasDefaultParam(pin51,d59).
entity(d510,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d510).
entity(d511,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin51,d511).
entity(d512,[prop(prov:type,['provone:data']),prop(prov:label,'SaveToLastImportFolder'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d512).
entity(d513,[prop(prov:type,['provone:data']),prop(prov:label,'SaveToSubdirectory'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d513).
entity(d514,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin51,d514).
entity(d515,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin51,d515).
entity(d516,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin51,d516).
entity(d517,[prop(prov:type,['provone:data']),prop(prov:label,'Subdirectory'),prop(prov:type,'String'),prop(prov:value,'')]).
hasDefaultParam(pin51,d517).
entity(d518,[prop(prov:type,['provone:data']),prop(prov:label,'TargetFolder'),prop(prov:type,'Folder'),prop(prov:value,'')]).
hasDefaultParam(pin51,d518).
entity(d519,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin51,d519).
entity(d520,[prop(prov:type,['provone:data']),prop(prov:label,'UploadMetadata'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d520).
entity(d521,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d521).
entity(pg3,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Export Files'),prop(prov:type,'null'),prop(prov:value,'null')]).
hasSubProgram(w6480,pg3).
entity(pin31,[prop(prov:type,['provone:port']),prop(prov:label,'file-list'),prop(wfms:signature,['null])]).
entity(d31,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d31).
entity(d32,[prop(prov:type,['provone:data']),prop(prov:label,'AutomaticFolder'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin31,d32).
entity(d33,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'')]).
hasDefaultParam(pin31,d33).
entity(d34,[prop(prov:type,['provone:data']),prop(prov:label,'Comments'),prop(prov:type,'String'),prop(prov:value,'Saved data')]).
hasDefaultParam(pin31,d34).
entity(d35,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin31,d35).
entity(d36,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin31,d36).
entity(d37,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'Export Files')]).
hasDefaultParam(pin31,d37).
entity(d38,[prop(prov:type,['provone:data']),prop(prov:label,'MakePublic'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d38).
entity(d39,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_3')]).
hasDefaultParam(pin31,d39).
entity(d310,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d310).
entity(d311,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin31,d311).
entity(d312,[prop(prov:type,['provone:data']),prop(prov:label,'SaveToLastImportFolder'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d312).
entity(d313,[prop(prov:type,['provone:data']),prop(prov:label,'SaveToSubdirectory'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d313).
entity(d314,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin31,d314).
entity(d315,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin31,d315).
entity(d316,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin31,d316).
entity(d317,[prop(prov:type,['provone:data']),prop(prov:label,'Subdirectory'),prop(prov:type,'String'),prop(prov:value,'')]).
hasDefaultParam(pin31,d317).
entity(d318,[prop(prov:type,['provone:data']),prop(prov:label,'TargetFolder'),prop(prov:type,'Folder'),prop(prov:value,'')]).
hasDefaultParam(pin31,d318).
entity(d319,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin31,d319).
entity(d320,[prop(prov:type,['provone:data']),prop(prov:label,'UploadMetadata'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d320).
entity(d321,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d321).
entity(pg4,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Filter Duplicates'),prop(prov:type,'null'),prop(prov:value,'null')]).
hasSubProgram(w6480,pg4).
entity(pout41,[prop(prov:type,['provone:port']),prop(prov:label,'sequence-map'),prop(wfms:signature,['null])]).
entity(pout42,[prop(prov:type,['provone:port']),prop(prov:label,'removed-sequences'),prop(wfms:signature,['null])]).
entity(pout43,[prop(prov:type,['provone:port']),prop(prov:label,'filtered-fasta-files'),prop(wfms:signature,['null])]).
entity(pin41,[prop(prov:type,['provone:port']),prop(prov:label,'fasta-files'),prop(wfms:signature,['null])]).
entity(d41,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin41,d41).
entity(d42,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'')]).
hasDefaultParam(pin41,d42).
entity(d43,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin41,d43).
entity(d44,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin41,d44).
entity(d45,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'Filter Duplicates')]).
hasDefaultParam(pin41,d45).
entity(d46,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_4')]).
hasDefaultParam(pin41,d46).
entity(d47,[prop(prov:type,['provone:data']),prop(prov:label,'Normalize Sequence Names'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin41,d47).
entity(d48,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin41,d48).
entity(d49,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin41,d49).
entity(d410,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin41,d410).
entity(d411,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin41,d411).
entity(d412,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin41,d412).
entity(d413,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin41,d413).
entity(d414,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin41,d414).
entity(pg6,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'CSVExport'),prop(prov:type,'null'),prop(prov:value,'null')]).
hasSubProgram(w6480,pg6).
entity(pin61,[prop(prov:type,['provone:port']),prop(prov:label,'input-data'),prop(wfms:signature,['null])]).
entity(d61,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin61,d61).
entity(d62,[prop(prov:type,['provone:data']),prop(prov:label,'AutomaticFolder'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin61,d62).
entity(d63,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'${FileName}')]).
hasDefaultParam(pin61,d63).
entity(d64,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin61,d64).
entity(d65,[prop(prov:type,['provone:data']),prop(prov:label,'FileName'),prop(prov:type,'String'),prop(prov:value,'filtered-seqs.csv')]).
hasDefaultParam(pin61,d65).
entity(d66,[prop(prov:type,['provone:data']),prop(prov:label,'IncludeNames'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin61,d66).
entity(d67,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin61,d67).
entity(d68,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'CSVExport')]).
hasDefaultParam(pin61,d68).
entity(d69,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_6')]).
hasDefaultParam(pin61,d69).
entity(d610,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin61,d610).
entity(d611,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin61,d611).
entity(d612,[prop(prov:type,['provone:data']),prop(prov:label,'QuoteStringOutput'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin61,d612).
entity(d613,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin61,d613).
entity(d614,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin61,d614).
entity(d615,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin61,d615).
entity(d616,[prop(prov:type,['provone:data']),prop(prov:label,'TargetFolder'),prop(prov:type,'Folder'),prop(prov:value,'')]).
hasDefaultParam(pin61,d616).
entity(d617,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin61,d617).
entity(d618,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin61,d618).
entity(pg9,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'CSVExport'),prop(prov:type,'null'),prop(prov:value,'null')]).
hasSubProgram(w6480,pg9).
entity(pin91,[prop(prov:type,['provone:port']),prop(prov:label,'input-data'),prop(wfms:signature,['null])]).
entity(d91,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin91,d91).
entity(d92,[prop(prov:type,['provone:data']),prop(prov:label,'AutomaticFolder'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin91,d92).
entity(d93,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'${FileName}')]).
hasDefaultParam(pin91,d93).
entity(d94,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin91,d94).
entity(d95,[prop(prov:type,['provone:data']),prop(prov:label,'FileName'),prop(prov:type,'String'),prop(prov:value,'sequence-map.csv')]).
hasDefaultParam(pin91,d95).
entity(d96,[prop(prov:type,['provone:data']),prop(prov:label,'IncludeNames'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin91,d96).
entity(d97,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin91,d97).
entity(d98,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'CSVExport')]).
hasDefaultParam(pin91,d98).
entity(d99,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_9')]).
hasDefaultParam(pin91,d99).
entity(d910,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin91,d910).
entity(d911,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin91,d911).
entity(d912,[prop(prov:type,['provone:data']),prop(prov:label,'QuoteStringOutput'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin91,d912).
entity(d913,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin91,d913).
entity(d914,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin91,d914).
entity(d915,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin91,d915).
entity(d916,[prop(prov:type,['provone:data']),prop(prov:label,'TargetFolder'),prop(prov:type,'Folder'),prop(prov:value,'')]).
hasDefaultParam(pin91,d916).
entity(d917,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin91,d917).
entity(d918,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin91,d918).
entity(pg10,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Import File'),prop(prov:type,'null'),prop(prov:value,'null')]).
hasSubProgram(w6480,pg10).
entity(pout101,[prop(prov:type,['provone:port']),prop(prov:label,'imported-file'),prop(wfms:signature,['null])]).
entity(d101,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
entity(d102,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'')]).
entity(d103,[prop(prov:type,['provone:data']),prop(prov:label,'DebugMode'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
entity(d104,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
entity(d105,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
entity(d106,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'Import File')]).
entity(d107,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_10')]).
entity(d108,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
entity(d109,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
entity(d1010,[prop(prov:type,['provone:data']),prop(prov:label,'Source'),prop(prov:type,'Document'),prop(prov:value,'')]).
entity(d1011,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
entity(d1012,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
entity(d1013,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
entity(d1014,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
entity(d1015,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
entity(pg2,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'MEGA-Maximum Likelihood'),prop(prov:type,'null'),prop(prov:value,'null')]).
hasSubProgram(w6480,pg2).
entity(pin21,[prop(prov:type,['provone:port']),prop(prov:label,'input-data'),prop(wfms:signature,['null])]).
entity(pout21,[prop(prov:type,['provone:port']),prop(prov:label,'consensus-output'),prop(wfms:signature,['null])]).
entity(pout22,[prop(prov:type,['provone:port']),prop(prov:label,'analysis-output'),prop(wfms:signature,['null])]).
entity(d21,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin21,d21).
entity(d22,[prop(prov:type,['provone:data']),prop(prov:label,'Branch Swap Filter'),prop(prov:type,'String'),prop(prov:value,'Very Strong')]).
hasDefaultParam(pin21,d22).
entity(d23,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'${No. of Bootstrap Replications};${Number of Threads}')]).
hasDefaultParam(pin21,d23).
entity(d24,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin21,d24).
entity(d25,[prop(prov:type,['provone:data']),prop(prov:label,'Gaps/Missing Data Treatment'),prop(prov:type,'String'),prop(prov:value,'Complete deletion')]).
hasDefaultParam(pin21,d25).
entity(d26,[prop(prov:type,['provone:data']),prop(prov:label,'Initial Tree for ML'),prop(prov:type,'String'),prop(prov:value,'Make initial tree automatically (Default - NJ/BioNJ)')]).
hasDefaultParam(pin21,d26).
entity(d27,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin21,d27).
entity(d28,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'MEGA-Maximum Likelihood')]).
hasDefaultParam(pin21,d28).
entity(d29,[prop(prov:type,['provone:data']),prop(prov:label,'ML Heuristic Method'),prop(prov:type,'String'),prop(prov:value,'Nearest-Neighbor-Interchange (NNI)')]).
hasDefaultParam(pin21,d29).
entity(d210,[prop(prov:type,['provone:data']),prop(prov:label,'Model/Method'),prop(prov:type,'String'),prop(prov:value,'General Time Reversible model')]).
hasDefaultParam(pin21,d210).
entity(d211,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_2')]).
hasDefaultParam(pin21,d211).
entity(d212,[prop(prov:type,['provone:data']),prop(prov:label,'No of Discrete Gamma Categories'),prop(prov:type,'Long'),prop(prov:value,'4')]).
hasDefaultParam(pin21,d212).
entity(d213,[prop(prov:type,['provone:data']),prop(prov:label,'No. of Bootstrap Replications'),prop(prov:type,'Long'),prop(prov:value,'10')]).
hasDefaultParam(pin21,d213).
entity(d214,[prop(prov:type,['provone:data']),prop(prov:label,'Number of Threads'),prop(prov:type,'Long'),prop(prov:value,'4')]).
hasDefaultParam(pin21,d214).
entity(d215,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin21,d215).
entity(d216,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin21,d216).
entity(d217,[prop(prov:type,['provone:data']),prop(prov:label,'Rates among Sites'),prop(prov:type,'String'),prop(prov:value,'Uniform rates')]).
hasDefaultParam(pin21,d217).
entity(d218,[prop(prov:type,['provone:data']),prop(prov:label,'Site Coverage Cutoff (%)'),prop(prov:type,'Long'),prop(prov:value,'95')]).
hasDefaultParam(pin21,d218).
entity(d219,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin21,d219).
entity(d220,[prop(prov:type,['provone:data']),prop(prov:label,'Stop on error'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin21,d220).
entity(d221,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin21,d221).
entity(d222,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin21,d222).
entity(d223,[prop(prov:type,['provone:data']),prop(prov:label,'Test of Phylogeny'),prop(prov:type,'String'),prop(prov:value,'Bootstrap method')]).
hasDefaultParam(pin21,d223).
entity(d224,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin21,d224).
entity(d225,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin21,d225).
