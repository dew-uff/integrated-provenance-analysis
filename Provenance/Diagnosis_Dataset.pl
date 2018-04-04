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
:- discontiguous(wasDerivedFrom/2).

%===============================================================================================================================================================

%'esc:version':10
dataSet(1,'eSC').
hasDataSet('esc:svi-esc/workflow/694/30049', 1).

%hadPlan(WExId,WkfId). uma exeução tem um plano (programa)

%workflow
entity('esc:svi-esc/workflow/694/30049',[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,'SVI')]).

%program
entity('esc:svi-esc/block/blocks-core-io-csvimport-2/777',[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'CSVImport')]).
entity('esc:svi-esc/block/com.connexience.blocks.groovy.Where/2128',[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Where')]).
entity('esc:svi-esc/block/blocks-core-io-csvexport/776',[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'CSVExport')]).
entity('esc:svi-esc/block/com.connexience.blocks.groovy.Join/820',[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Join')]).
entity('esc:svi-esc/block/com.connexience.blocks.groovy.Select/822',[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Select')]).
entity('esc:svi-esc/block/blocks-core-manipulation-3rowjoin/797',[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'3wayRowJoin')]).

%workflow execution
activity('esc:svi-esc/invocation/30115',[prop(prov:type,['provone:execution']),prop(prov:label,'SVI_Exec'),prop(prov:startTime,'2016-11-17T15:19:35.573+0000'),prop(prov:endTime,'2016-11-17T15:19:40.430+0000'),prop(wfms:completed,'1')]).

%execution
activity('esc:svi-esc/invocation/30115/block/36ED8706-6AE1-83E0-97D8-EB10CD8080FC',[prop(prov:type,['provone:execution']),prop(prov:label,'CSVImport'),prop(prov:startTime,'2016-11-17T15:19:35.573+0000'),prop(prov:endTime,'2016-11-17T15:19:40.430+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/C6D21A25-ED33-EB7E-5732-99603181330C',[prop(prov:type,['provone:execution']),prop(prov:label,'Where'),prop(prov:startTime,'2016-11-17T15:19:40.740+0000'),prop(prov:endTime,'2016-11-17T15:19:52).977+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/91F88B0E-E869-6BF4-B8FD-761AF8AA66DC',[prop(prov:type,['provone:execution']),prop(prov:label,'CSVExport'),prop(prov:startTime,'2016-11-17T15:19:53.192+0000'),prop(prov:endTime,'2016-11-17T15:19:56.532+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A',[prop(prov:type,['provone:execution']),prop(prov:label,'CSVImport'),prop(prov:startTime,'2016-11-17T15:19:56.714+0000'),prop(prov:endTime,'2016-11-17T15:20:07.360+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/DF7E5B8F-5986-A516-5A78-00F45AAD393D',[prop(prov:type,['provone:execution']),prop(prov:label,'Where'),prop(prov:startTime,'2016-11-17T15:20:07.631+0000'),prop(prov:endTime,'2016-11-17T15:21:10.520+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/C8C1E58F-B460-F90D-0ACC-D1763BFB0803',[prop(prov:type,['provone:execution']),prop(prov:label,'CSVExport'),prop(prov:startTime,'2016-11-17T15:21:10.814+0000'),prop(prov:endTime,'2016-11-17T15:21:44.798+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90',[prop(prov:type,['provone:execution']),prop(prov:label,'Join'),prop(prov:startTime,'2016-11-17T15:21:45.233+0000'),prop(prov:endTime,'2016-11-17T15:22:22).442+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/E6F4AC2B-E8E5-DD63-1DE9-2BE042650D1A',[prop(prov:type,['provone:execution']),prop(prov:label,'CSVExport'),prop(prov:startTime,'2016-11-17T15:22:22).766+0000'),prop(prov:endTime,'2016-11-17T15:22:26.036+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/82B4F4C6-47EF-2AEF-B49B-B67DB40B2303',[prop(prov:type,['provone:execution']),prop(prov:label,'CSVImport'),prop(prov:startTime,'2016-11-17T15:22:26.213+0000'),prop(prov:endTime,'2016-11-17T15:22:31).248+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/44B152A5-F3B0-A4F9-1D71-A5BF36443F52',[prop(prov:type,['provone:execution']),prop(prov:label,'Join'),prop(prov:startTime,'2016-11-17T15:22:31).587+0000'),prop(prov:endTime,'2016-11-17T15:22:43.739+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/C0F901FD-9C13-45D0-8D53-788F4C687F62',[prop(prov:type,['provone:execution']),prop(prov:label,'Where'),prop(prov:startTime,'2016-11-17T15:22:44.142+0000'),prop(prov:endTime,'2016-11-17T15:22:48.956+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/4CE28CBA-9234-3AA8-1564-36A10B955350',[prop(prov:type,['provone:execution']),prop(prov:label,'Where'),prop(prov:startTime,'2016-11-17T15:22:49.416+0000'),prop(prov:endTime,'2016-11-17T15:22:54.565+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/F9E0C624-DEAC-C471-15BA-2D220AF693EC',[prop(prov:type,['provone:execution']),prop(prov:label,'Select'),prop(prov:startTime,'2016-11-17T15:22:54.781+0000'),prop(prov:endTime,'2016-11-17T15:22:59.959+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/502FD710-7C1A-05CD-2BFC-89CD28547DAB',[prop(prov:type,['provone:execution']),prop(prov:label,'Select'),prop(prov:startTime,'2016-11-17T15:23:00.244+0000'),prop(prov:endTime,'2016-11-17T15:23:05.588+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/633AC5C9-C332-56E0-D839-B89A4110B147',[prop(prov:type,['provone:execution']),prop(prov:label,'Select'),prop(prov:startTime,'2016-11-17T15:23:05.817+0000'),prop(prov:endTime,'2016-11-17T15:23:11).272+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/58644E52-D670-0900-6105-0CD62F6E70C7',[prop(prov:type,['provone:execution']),prop(prov:label,'3wayRowJoin'),prop(prov:startTime,'2016-11-17T15:23:11).579+0000'),prop(prov:endTime,'2016-11-17T15:23:14.059+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/E460FCCB-DB54-F2DB-945D-B5AC8B0D2348',[prop(prov:type,['provone:execution']),prop(prov:label,'CSVExport'),prop(prov:startTime,'2016-11-17T15:23:14.323+0000'),prop(prov:endTime,'2016-11-17T15:23:17.468+0000'),prop(wfms:completed,'1')]).
activity('esc:svi-esc/invocation/30115/block/D4A4A3F0-044F-97D9-05DB-A64AFC62941A',[prop(prov:type,['provone:execution']),prop(prov:label,'CSVExport'),prop(prov:startTime,'2016-11-17T15:23:17.800+0000'),prop(prov:endTime,'2016-11-17T15:23:21).678+0000'),prop(wfms:completed,'1')]).

hadPlan('esc:svi-esc/invocation/30115','esc:svi-esc/workflow/694/30049').

hadPlan('esc:svi-esc/invocation/30115/block/36ED8706-6AE1-83E0-97D8-EB10CD8080FC','esc:svi-esc/block/blocks-core-io-csvimport-2/777').
hadPlan('esc:svi-esc/invocation/30115/block/C6D21A25-ED33-EB7E-5732-99603181330C','esc:svi-esc/block/com.connexience.blocks.groovy.Where/2128').
hadPlan('esc:svi-esc/invocation/30115/block/91F88B0E-E869-6BF4-B8FD-761AF8AA66DC','esc:svi-esc/block/blocks-core-io-csvexport/776').
hadPlan('esc:svi-esc/invocation/30115/block/BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A','esc:svi-esc/block/blocks-core-io-csvimport-2/777').
hadPlan('esc:svi-esc/invocation/30115/block/DF7E5B8F-5986-A516-5A78-00F45AAD393D','esc:svi-esc/block/com.connexience.blocks.groovy.Where/2128').
hadPlan('esc:svi-esc/invocation/30115/block/C8C1E58F-B460-F90D-0ACC-D1763BFB0803','esc:svi-esc/block/blocks-core-io-csvexport/776').
hadPlan('esc:svi-esc/invocation/30115/block/03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90','esc:svi-esc/block/com.connexience.blocks.groovy.Join/820').
hadPlan('esc:svi-esc/invocation/30115/block/E6F4AC2B-E8E5-DD63-1DE9-2BE042650D1A','esc:svi-esc/block/blocks-core-io-csvexport/776').
hadPlan('esc:svi-esc/invocation/30115/block/82B4F4C6-47EF-2AEF-B49B-B67DB40B2303','esc:svi-esc/block/blocks-core-io-csvimport-2/777').
hadPlan('esc:svi-esc/invocation/30115/block/44B152A5-F3B0-A4F9-1D71-A5BF36443F52','esc:svi-esc/block/com.connexience.blocks.groovy.Join/820').
hadPlan('esc:svi-esc/invocation/30115/block/C0F901FD-9C13-45D0-8D53-788F4C687F62','esc:svi-esc/block/com.connexience.blocks.groovy.Where/2128').
hadPlan('esc:svi-esc/invocation/30115/block/4CE28CBA-9234-3AA8-1564-36A10B955350','esc:svi-esc/block/com.connexience.blocks.groovy.Where/2128').
hadPlan('esc:svi-esc/invocation/30115/block/F9E0C624-DEAC-C471-15BA-2D220AF693EC','esc:svi-esc/block/com.connexience.blocks.groovy.Select/822').
hadPlan('esc:svi-esc/invocation/30115/block/502FD710-7C1A-05CD-2BFC-89CD28547DAB','esc:svi-esc/block/com.connexience.blocks.groovy.Select/822').
hadPlan('esc:svi-esc/invocation/30115/block/633AC5C9-C332-56E0-D839-B89A4110B147','esc:svi-esc/block/com.connexience.blocks.groovy.Select/822').
hadPlan('esc:svi-esc/invocation/30115/block/58644E52-D670-0900-6105-0CD62F6E70C7','esc:svi-esc/block/blocks-core-manipulation-3rowjoin/797').
hadPlan('esc:svi-esc/invocation/30115/block/E460FCCB-DB54-F2DB-945D-B5AC8B0D2348','esc:svi-esc/block/blocks-core-io-csvexport/776').
hadPlan('esc:svi-esc/invocation/30115/block/D4A4A3F0-044F-97D9-05DB-A64AFC62941A','esc:svi-esc/block/blocks-core-io-csvexport/776').

agent('esc:svi-esc/engine/IP:10.2.0.5',{'esc:Architecture':"x86_64",'esc:CPUModel':"Xeon",'esc:CPUVendor':"Intel",'esc:OS':"Linux"}).

%WkfId = 'esc:svi-esc/workflow/694/30049'
wasAssociatedWith('esc:svi-esc/invocation/30115','esc:svi-esc/engine/IP:10.2.0.5').

wasPartOf('esc:svi-esc/invocation/30115/block/36ED8706-6AE1-83E0-97D8-EB10CD8080FC','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/C6D21A25-ED33-EB7E-5732-99603181330C','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/91F88B0E-E869-6BF4-B8FD-761AF8AA66DC','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/DF7E5B8F-5986-A516-5A78-00F45AAD393D','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/C8C1E58F-B460-F90D-0ACC-D1763BFB0803','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/E6F4AC2B-E8E5-DD63-1DE9-2BE042650D1A','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/82B4F4C6-47EF-2AEF-B49B-B67DB40B2303','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/44B152A5-F3B0-A4F9-1D71-A5BF36443F52','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/C0F901FD-9C13-45D0-8D53-788F4C687F62','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/4CE28CBA-9234-3AA8-1564-36A10B955350','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/F9E0C624-DEAC-C471-15BA-2D220AF693EC','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/502FD710-7C1A-05CD-2BFC-89CD28547DAB','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/633AC5C9-C332-56E0-D839-B89A4110B147','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/58644E52-D670-0900-6105-0CD62F6E70C7','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/E460FCCB-DB54-F2DB-945D-B5AC8B0D2348','esc:svi-esc/invocation/30115').
wasPartOf('esc:svi-esc/invocation/30115/block/D4A4A3F0-044F-97D9-05DB-A64AFC62941A','esc:svi-esc/invocation/30115').

hasSubProgram('esc:svi-esc/workflow/694/30049','esc:svi-esc/block/blocks-core-io-csvimport-2/777').
hasSubProgram('esc:svi-esc/workflow/694/30049','esc:svi-esc/block/com.connexience.blocks.groovy.Where/2128').
hasSubProgram('esc:svi-esc/workflow/694/30049','esc:svi-esc/block/blocks-core-io-csvexport/776').
hasSubProgram('esc:svi-esc/workflow/694/30049','esc:svi-esc/block/com.connexience.blocks.groovy.Join/820').
hasSubProgram('esc:svi-esc/workflow/694/30049','esc:svi-esc/block/com.connexience.blocks.groovy.Select/822').
hasSubProgram('esc:svi-esc/workflow/694/30049','esc:svi-esc/block/blocks-core-manipulation-3rowjoin/797').

used('esc:svi-esc/invocation/30115/block/36ED8706-6AE1-83E0-97D8-EB10CD8080FC','esc:svi-esc/document/2175/2176').
used('esc:svi-esc/invocation/30115/block/36ED8706-6AE1-83E0-97D8-EB10CD8080FC','esc:svi-esc/invocation/30115/block/36ED8706-6AE1-83E0-97D8-EB10CD8080FC/properties').
used('esc:svi-esc/invocation/30115/block/C6D21A25-ED33-EB7E-5732-99603181330C','tr-30115-36ED8706-6AE1-83E0-97D8-EB10CD8080FC-imported-data').
used('esc:svi-esc/invocation/30115/block/C6D21A25-ED33-EB7E-5732-99603181330C','esc:svi-esc/invocation/30115/block/C6D21A25-ED33-EB7E-5732-99603181330C/properties').
used('esc:svi-esc/invocation/30115/block/91F88B0E-E869-6BF4-B8FD-761AF8AA66DC','tr-30115-C6D21A25-ED33-EB7E-5732-99603181330C-filtered-data').
used('esc:svi-esc/invocation/30115/block/91F88B0E-E869-6BF4-B8FD-761AF8AA66DC','esc:svi-esc/invocation/30115/block/91F88B0E-E869-6BF4-B8FD-761AF8AA66DC/properties').
used('esc:svi-esc/invocation/30115/block/BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A','esc:svi-esc/document/668/669').
used('esc:svi-esc/invocation/30115/block/BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A','esc:svi-esc/invocation/30115/block/BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A/properties').
used('esc:svi-esc/invocation/30115/block/DF7E5B8F-5986-A516-5A78-00F45AAD393D','tr-30115-BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A-imported-data').
used('esc:svi-esc/invocation/30115/block/DF7E5B8F-5986-A516-5A78-00F45AAD393D','esc:svi-esc/invocation/30115/block/DF7E5B8F-5986-A516-5A78-00F45AAD393D/properties').
used('esc:svi-esc/invocation/30115/block/C8C1E58F-B460-F90D-0ACC-D1763BFB0803','tr-30115-DF7E5B8F-5986-A516-5A78-00F45AAD393D-filtered-data').
used('esc:svi-esc/invocation/30115/block/C8C1E58F-B460-F90D-0ACC-D1763BFB0803','esc:svi-esc/invocation/30115/block/C8C1E58F-B460-F90D-0ACC-D1763BFB0803/properties').
used('esc:svi-esc/invocation/30115/block/03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90','tr-30115-C6D21A25-ED33-EB7E-5732-99603181330C-filtered-data').
used('esc:svi-esc/invocation/30115/block/03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90','tr-30115-DF7E5B8F-5986-A516-5A78-00F45AAD393D-filtered-data').
used('esc:svi-esc/invocation/30115/block/03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90','esc:svi-esc/invocation/30115/block/03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90/properties').
used('esc:svi-esc/invocation/30115/block/E6F4AC2B-E8E5-DD63-1DE9-2BE042650D1A','tr-30115-03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90-output-1').
used('esc:svi-esc/invocation/30115/block/E6F4AC2B-E8E5-DD63-1DE9-2BE042650D1A','esc:svi-esc/invocation/30115/block/E6F4AC2B-E8E5-DD63-1DE9-2BE042650D1A/properties').
used('esc:svi-esc/invocation/30115/block/82B4F4C6-47EF-2AEF-B49B-B67DB40B2303','esc:svi-esc/document/29781/29782').
used('esc:svi-esc/invocation/30115/block/82B4F4C6-47EF-2AEF-B49B-B67DB40B2303','esc:svi-esc/invocation/30115/block/82B4F4C6-47EF-2AEF-B49B-B67DB40B2303/properties').
used('esc:svi-esc/invocation/30115/block/44B152A5-F3B0-A4F9-1D71-A5BF36443F52','tr-30115-82B4F4C6-47EF-2AEF-B49B-B67DB40B2303-imported-data').
used('esc:svi-esc/invocation/30115/block/44B152A5-F3B0-A4F9-1D71-A5BF36443F52','tr-30115-03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90-output-1').
used('esc:svi-esc/invocation/30115/block/44B152A5-F3B0-A4F9-1D71-A5BF36443F52','esc:svi-esc/invocation/30115/block/44B152A5-F3B0-A4F9-1D71-A5BF36443F52/properties').
used('esc:svi-esc/invocation/30115/block/C0F901FD-9C13-45D0-8D53-788F4C687F62','tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1').
used('esc:svi-esc/invocation/30115/block/C0F901FD-9C13-45D0-8D53-788F4C687F62','esc:svi-esc/invocation/30115/block/C0F901FD-9C13-45D0-8D53-788F4C687F62/properties').
used('esc:svi-esc/invocation/30115/block/4CE28CBA-9234-3AA8-1564-36A10B955350','tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-remainder').
used('esc:svi-esc/invocation/30115/block/4CE28CBA-9234-3AA8-1564-36A10B955350','esc:svi-esc/invocation/30115/block/4CE28CBA-9234-3AA8-1564-36A10B955350/properties').
used('esc:svi-esc/invocation/30115/block/F9E0C624-DEAC-C471-15BA-2D220AF693EC','tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-remainder').
used('esc:svi-esc/invocation/30115/block/F9E0C624-DEAC-C471-15BA-2D220AF693EC','esc:svi-esc/invocation/30115/block/F9E0C624-DEAC-C471-15BA-2D220AF693EC/properties').
used('esc:svi-esc/invocation/30115/block/502FD710-7C1A-05CD-2BFC-89CD28547DAB','tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-filtered-data').
used('esc:svi-esc/invocation/30115/block/502FD710-7C1A-05CD-2BFC-89CD28547DAB','esc:svi-esc/invocation/30115/block/502FD710-7C1A-05CD-2BFC-89CD28547DAB/properties').
used('esc:svi-esc/invocation/30115/block/633AC5C9-C332-56E0-D839-B89A4110B147','tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-filtered-data').
used('esc:svi-esc/invocation/30115/block/633AC5C9-C332-56E0-D839-B89A4110B147','esc:svi-esc/invocation/30115/block/633AC5C9-C332-56E0-D839-B89A4110B147/properties').
used('esc:svi-esc/invocation/30115/block/58644E52-D670-0900-6105-0CD62F6E70C7','tr-30115-502FD710-7C1A-05CD-2BFC-89CD28547DAB-output-data').
used('esc:svi-esc/invocation/30115/block/58644E52-D670-0900-6105-0CD62F6E70C7','tr-30115-F9E0C624-DEAC-C471-15BA-2D220AF693EC-output-data').
used('esc:svi-esc/invocation/30115/block/58644E52-D670-0900-6105-0CD62F6E70C7','tr-30115-633AC5C9-C332-56E0-D839-B89A4110B147-output-data').
used('esc:svi-esc/invocation/30115/block/58644E52-D670-0900-6105-0CD62F6E70C7','esc:svi-esc/invocation/30115/block/58644E52-D670-0900-6105-0CD62F6E70C7/properties').
used('esc:svi-esc/invocation/30115/block/E460FCCB-DB54-F2DB-945D-B5AC8B0D2348','tr-30115-58644E52-D670-0900-6105-0CD62F6E70C7-joined-data').
used('esc:svi-esc/invocation/30115/block/E460FCCB-DB54-F2DB-945D-B5AC8B0D2348','esc:svi-esc/invocation/30115/block/E460FCCB-DB54-F2DB-945D-B5AC8B0D2348/properties').
used('esc:svi-esc/invocation/30115/block/D4A4A3F0-044F-97D9-05DB-A64AFC62941A','tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1').
used('esc:svi-esc/invocation/30115/block/D4A4A3F0-044F-97D9-05DB-A64AFC62941A','esc:svi-esc/invocation/30115/block/D4A4A3F0-044F-97D9-05DB-A64AFC62941A/properties').

wasGeneratedBy('tr-30115-36ED8706-6AE1-83E0-97D8-EB10CD8080FC-imported-data','esc:svi-esc/invocation/30115/block/36ED8706-6AE1-83E0-97D8-EB10CD8080FC').
wasGeneratedBy('tr-30115-C6D21A25-ED33-EB7E-5732-99603181330C-filtered-data','esc:svi-esc/invocation/30115/block/C6D21A25-ED33-EB7E-5732-99603181330C').
wasGeneratedBy('esc:svi-esc/document/30557/30558','esc:svi-esc/invocation/30115/block/91F88B0E-E869-6BF4-B8FD-761AF8AA66DC').
wasGeneratedBy('tr-30115-BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A-imported-data','esc:svi-esc/invocation/30115/block/BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A').
wasGeneratedBy('tr-30115-DF7E5B8F-5986-A516-5A78-00F45AAD393D-filtered-data','esc:svi-esc/invocation/30115/block/DF7E5B8F-5986-A516-5A78-00F45AAD393D').
wasGeneratedBy('esc:svi-esc/document/30571/30572','esc:svi-esc/invocation/30115/block/C8C1E58F-B460-F90D-0ACC-D1763BFB0803').
wasGeneratedBy('tr-30115-03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90-output-1','esc:svi-esc/invocation/30115/block/03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90').
wasGeneratedBy('esc:svi-esc/document/30575/30576','esc:svi-esc/invocation/30115/block/E6F4AC2B-E8E5-DD63-1DE9-2BE042650D1A').
wasGeneratedBy('tr-30115-82B4F4C6-47EF-2AEF-B49B-B67DB40B2303-imported-data','esc:svi-esc/invocation/30115/block/82B4F4C6-47EF-2AEF-B49B-B67DB40B2303').
wasGeneratedBy('tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1','esc:svi-esc/invocation/30115/block/44B152A5-F3B0-A4F9-1D71-A5BF36443F52').
wasGeneratedBy('tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-remainder','esc:svi-esc/invocation/30115/block/C0F901FD-9C13-45D0-8D53-788F4C687F62').
wasGeneratedBy('tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-remainder','esc:svi-esc/invocation/30115/block/4CE28CBA-9234-3AA8-1564-36A10B955350').
wasGeneratedBy('tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-filtered-data','esc:svi-esc/invocation/30115/block/4CE28CBA-9234-3AA8-1564-36A10B955350').
wasGeneratedBy('tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-filtered-data','esc:svi-esc/invocation/30115/block/C0F901FD-9C13-45D0-8D53-788F4C687F62').
wasGeneratedBy('tr-30115-502FD710-7C1A-05CD-2BFC-89CD28547DAB-output-data','esc:svi-esc/invocation/30115/block/502FD710-7C1A-05CD-2BFC-89CD28547DAB').
wasGeneratedBy('tr-30115-F9E0C624-DEAC-C471-15BA-2D220AF693EC-output-data','esc:svi-esc/invocation/30115/block/F9E0C624-DEAC-C471-15BA-2D220AF693EC').
wasGeneratedBy('tr-30115-633AC5C9-C332-56E0-D839-B89A4110B147-output-data','esc:svi-esc/invocation/30115/block/633AC5C9-C332-56E0-D839-B89A4110B147').
wasGeneratedBy('tr-30115-58644E52-D670-0900-6105-0CD62F6E70C7-joined-data','esc:svi-esc/invocation/30115/block/58644E52-D670-0900-6105-0CD62F6E70C7').
wasGeneratedBy('esc:svi-esc/document/30627/30628','esc:svi-esc/invocation/30115/block/E460FCCB-DB54-F2DB-945D-B5AC8B0D2348').
wasGeneratedBy('esc:svi-esc/document/30631/30632','esc:svi-esc/invocation/30115/block/D4A4A3F0-044F-97D9-05DB-A64AFC62941A').

wasDerivedFrom('tr-30115-36ED8706-6AE1-83E0-97D8-EB10CD8080FC-imported-data','esc:svi-esc/document/2175/2176').
wasDerivedFrom('tr-30115-36ED8706-6AE1-83E0-97D8-EB10CD8080FC-imported-data','esc:svi-esc/invocation/30115/block/36ED8706-6AE1-83E0-97D8-EB10CD8080FC/properties').
wasDerivedFrom('tr-30115-C6D21A25-ED33-EB7E-5732-99603181330C-filtered-data','tr-30115-36ED8706-6AE1-83E0-97D8-EB10CD8080FC-imported-data').
wasDerivedFrom('tr-30115-C6D21A25-ED33-EB7E-5732-99603181330C-filtered-data','esc:svi-esc/invocation/30115/block/C6D21A25-ED33-EB7E-5732-99603181330C/properties').
wasDerivedFrom('esc:svi-esc/document/30557/30558','tr-30115-C6D21A25-ED33-EB7E-5732-99603181330C-filtered-data').
wasDerivedFrom('esc:svi-esc/document/30557/30558','esc:svi-esc/invocation/30115/block/91F88B0E-E869-6BF4-B8FD-761AF8AA66DC/properties').
wasDerivedFrom('tr-30115-BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A-imported-data','esc:svi-esc/document/668/669').
wasDerivedFrom('tr-30115-BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A-imported-data','esc:svi-esc/invocation/30115/block/BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A/properties').
wasDerivedFrom('tr-30115-DF7E5B8F-5986-A516-5A78-00F45AAD393D-filtered-data','tr-30115-BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A-imported-data').
wasDerivedFrom('tr-30115-DF7E5B8F-5986-A516-5A78-00F45AAD393D-filtered-data','esc:svi-esc/invocation/30115/block/DF7E5B8F-5986-A516-5A78-00F45AAD393D/properties').
wasDerivedFrom('esc:svi-esc/document/30571/30572','tr-30115-DF7E5B8F-5986-A516-5A78-00F45AAD393D-filtered-data').
wasDerivedFrom('esc:svi-esc/document/30571/30572','esc:svi-esc/invocation/30115/block/C8C1E58F-B460-F90D-0ACC-D1763BFB0803/properties').
wasDerivedFrom('tr-30115-03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90-output-1','tr-30115-C6D21A25-ED33-EB7E-5732-99603181330C-filtered-data').
wasDerivedFrom('tr-30115-03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90-output-1','tr-30115-DF7E5B8F-5986-A516-5A78-00F45AAD393D-filtered-data').
wasDerivedFrom('tr-30115-03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90-output-1','esc:svi-esc/invocation/30115/block/03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90/properties').
wasDerivedFrom('esc:svi-esc/document/30575/30576','tr-30115-03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90-output-1').
wasDerivedFrom('esc:svi-esc/document/30575/30576','esc:svi-esc/invocation/30115/block/E6F4AC2B-E8E5-DD63-1DE9-2BE042650D1A/properties').
wasDerivedFrom('tr-30115-82B4F4C6-47EF-2AEF-B49B-B67DB40B2303-imported-data','esc:svi-esc/document/29781/29782').
wasDerivedFrom('tr-30115-82B4F4C6-47EF-2AEF-B49B-B67DB40B2303-imported-data','esc:svi-esc/invocation/30115/block/82B4F4C6-47EF-2AEF-B49B-B67DB40B2303/properties').
wasDerivedFrom('tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1','tr-30115-82B4F4C6-47EF-2AEF-B49B-B67DB40B2303-imported-data').
wasDerivedFrom('tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1','tr-30115-03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90-output-1').
wasDerivedFrom('tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1','esc:svi-esc/invocation/30115/block/44B152A5-F3B0-A4F9-1D71-A5BF36443F52/properties').
wasDerivedFrom('tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-remainder','tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1').
wasDerivedFrom('tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-remainder','esc:svi-esc/invocation/30115/block/C0F901FD-9C13-45D0-8D53-788F4C687F62/properties').
wasDerivedFrom('tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-filtered-data','tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1').
wasDerivedFrom('tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-filtered-data','esc:svi-esc/invocation/30115/block/C0F901FD-9C13-45D0-8D53-788F4C687F62/properties').
wasDerivedFrom('tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-remainder','tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-remainder').
wasDerivedFrom('tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-remainder','esc:svi-esc/invocation/30115/block/4CE28CBA-9234-3AA8-1564-36A10B955350/properties').
wasDerivedFrom('tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-filtered-data','tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-remainder').
wasDerivedFrom('tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-filtered-data','esc:svi-esc/invocation/30115/block/4CE28CBA-9234-3AA8-1564-36A10B955350/properties').
wasDerivedFrom('tr-30115-F9E0C624-DEAC-C471-15BA-2D220AF693EC-output-data','tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-remainder').
wasDerivedFrom('tr-30115-F9E0C624-DEAC-C471-15BA-2D220AF693EC-output-data','esc:svi-esc/invocation/30115/block/F9E0C624-DEAC-C471-15BA-2D220AF693EC/properties').
wasDerivedFrom('tr-30115-502FD710-7C1A-05CD-2BFC-89CD28547DAB-output-data','tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-filtered-data').
wasDerivedFrom('tr-30115-502FD710-7C1A-05CD-2BFC-89CD28547DAB-output-data','esc:svi-esc/invocation/30115/block/502FD710-7C1A-05CD-2BFC-89CD28547DAB/properties').
wasDerivedFrom('tr-30115-633AC5C9-C332-56E0-D839-B89A4110B147-output-data','tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-filtered-data').
wasDerivedFrom('tr-30115-633AC5C9-C332-56E0-D839-B89A4110B147-output-data','esc:svi-esc/invocation/30115/block/633AC5C9-C332-56E0-D839-B89A4110B147/properties').
wasDerivedFrom('tr-30115-58644E52-D670-0900-6105-0CD62F6E70C7-joined-data','tr-30115-502FD710-7C1A-05CD-2BFC-89CD28547DAB-output-data').
wasDerivedFrom('tr-30115-58644E52-D670-0900-6105-0CD62F6E70C7-joined-data','tr-30115-F9E0C624-DEAC-C471-15BA-2D220AF693EC-output-data').
wasDerivedFrom('tr-30115-58644E52-D670-0900-6105-0CD62F6E70C7-joined-data','tr-30115-633AC5C9-C332-56E0-D839-B89A4110B147-output-data').
wasDerivedFrom('tr-30115-58644E52-D670-0900-6105-0CD62F6E70C7-joined-data','esc:svi-esc/invocation/30115/block/58644E52-D670-0900-6105-0CD62F6E70C7/properties').
wasDerivedFrom('esc:svi-esc/document/30627/30628','tr-30115-58644E52-D670-0900-6105-0CD62F6E70C7-joined-data').
wasDerivedFrom('esc:svi-esc/document/30627/30628','esc:svi-esc/invocation/30115/block/E460FCCB-DB54-F2DB-945D-B5AC8B0D2348/properties').
wasDerivedFrom('esc:svi-esc/document/30631/30632','tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1').
wasDerivedFrom('esc:svi-esc/document/30631/30632','esc:svi-esc/invocation/30115/block/D4A4A3F0-044F-97D9-05DB-A64AFC62941A/properties').
entity('esc:svi-esc/document/2175/2176',[prop(prov:type,['provone:document']),prop(prov:label,'genemap2-161031-esc'),prop(prov:value,'genemap2-161031-esc.txt')]).
entity('esc:svi-esc/invocation/30115/block/36ED8706-6AE1-83E0-97D8-EB10CD8080FC/properties',[prop(prov:type,['provone:document']),prop(prov:label,'OMIM GeneMap Reference Data'),prop(prov:value,'OMIM GeneMap Reference Data:;${Source};${Delimiter};${ImportChunkSize},ContainsLabels:true,DebugMode:false,DebugPort:5005,DebugSuspended:true,Delimiter:\t,EndRow:2,EnforceInvocationTimeout:true,ImportChunkSize:20000,InvocationTimeout:3600,Label:CSVImport,LabelRow:1,LimitRows:false,Name:genemap_data,ProceedOnFail:false,ProgressUpdateInterval:30,SampleInterval:1,Source:genemap2-161031-esc.txt,StartRow:1,StdOutSize:4096,StrOutAndErrFileName:Debug-,StreamingChunkSize:1000,Subsample:false,TextOnly:true,TimeoutRetries:1,UploadStdOutAndErr:false')]).
entity('tr-30115-36ED8706-6AE1-83E0-97D8-EB10CD8080FC-imported-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-36ED8706-6AE1-83E0-97D8-EB10CD8080FC-imported-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/invocation/30115/block/C6D21A25-ED33-EB7E-5732-99603181330C/properties',{'AllowRetriesOnTimeout':false,'Caption':"${Name};${Condition}",'Condition':"def phenotype = ${{UserList}}; phenotype.find { $A.{Gene Name}?.toLowerCase()?.contains(it) || $A.{Phenotypes}?.toLowerCase()?.contains(it) }",'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'EnforceInvocationTimeout':true,'InvocationTimeout':3600,'Is Condition Deterministic':false,'Label':"Where",'Name':"genes_in_scope_filter",'Output Limit': -1,'ProceedOnFail':false,'ProgressUpdateInterval':30,'Remainder Limit': -1,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TimeoutRetries':1,'UploadStdOutAndErr':false,'Use Static Compilation':false,'UserList':"List",'UserProp1':"",'UserProp2':"",'UserProps':"List"}).
entity('tr-30115-C6D21A25-ED33-EB7E-5732-99603181330C-filtered-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-C6D21A25-ED33-EB7E-5732-99603181330C-filtered-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/document/30557/30558',{'esc:version':"1",'prov:label':"genes-in-scope.csv",'prov:type':["prov:Entity","provone:Document"]}).
entity('esc:svi-esc/invocation/30115/block/91F88B0E-E869-6BF4-B8FD-761AF8AA66DC/properties',{'AllowRetriesOnTimeout':false,'AutomaticFolder':true,'Caption':"${FileName}",'EnforceInvocationTimeout':true,'FileName':"genes-in-scope.csv",'IncludeNames':true,'InvocationTimeout':3600,'Label':"CSVExport",'Name':"block_2",'ProceedOnFail':false,'ProgressUpdateInterval':30,'QuoteStringOutput':false,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TargetFolder':"",'TimeoutRetries':1,'UploadStdOutAndErr':false}).
entity('esc:svi-esc/document/668/669',{'esc:version':1,'prov:label':"Freebayes_BatchCalling_C_0171).vcf.csv",'prov:type':["prov:Entity","provone:Document"]}).
entity('esc:svi-esc/invocation/30115/block/BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A/properties',{'AllowRetriesOnTimeout':false,'Caption':"${Name};${Source}",'ContainsLabels':true,'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'Delimiter':",",'EndRow':2,'EnforceInvocationTimeout':true,'ImportChunkSize':5000,'InvocationTimeout':3600,'Label':"CSVImport -- User Input",'LabelRow':1,'LimitRows':false,'Name':"patient_variants",'ProceedOnFail':false,'ProgressUpdateInterval':30,'SampleInterval':1,'Source':"Freebayes_BatchCalling_C_0171).vcf.csv",'StartRow':1,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'Subsample':false,'TextOnly':true,'TimeoutRetries':1,'UploadStdOutAndErr':false}).
entity('tr-30115-BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A-imported-data',{'esc:datatype':"data-wrapper",'esc:hashvalue':"p/9kX8IRmczQ/eoam3yiLA==",'prov:type':["prov:Entity","provone:Document","esc:TransientData"],'recomp:datasize':42341394}).
entity('tr-30115-BFF867C8-81FF-BAD2-4CEF-6F6DC6F0769A-imported-data',{'esc:datatype':"data-wrapper",'esc:hashvalue':"p/9kX8IRmczQ/eoam3yiLA==",'prov:type':["prov:Entity","provone:Document","esc:TransientData"],'recomp:datasize':42341394}).
entity('esc:svi-esc/invocation/30115/block/DF7E5B8F-5986-A516-5A78-00F45AAD393D/properties',{'AllowRetriesOnTimeout':false,'Caption':"${Condition}",'Condition':"$A.{ExonicFunc.knownGene} != 'synonymous SNV'",'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'EnforceInvocationTimeout':true,'InvocationTimeout':3600,'Is Condition Deterministic':false,'Label':"Where",'Name':"block_4",'Output Limit': -1,'ProceedOnFail':false,'ProgressUpdateInterval':30,'Remainder Limit': -1,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TimeoutRetries':1,'UploadStdOutAndErr':false,'Use Static Compilation':false,'UserProp1':"",'UserProp2':"",'UserProps':"List"}).
entity('tr-30115-DF7E5B8F-5986-A516-5A78-00F45AAD393D-filtered-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-DF7E5B8F-5986-A516-5A78-00F45AAD393D-filtered-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/document/30571/30572',{'esc:version':"1",'prov:label':"debug-user-where.csv",'prov:type':["prov:Entity","provone:Document"]}).
entity('esc:svi-esc/invocation/30115/block/C8C1E58F-B460-F90D-0ACC-D1763BFB0803/properties',{'AllowRetriesOnTimeout':false,'AutomaticFolder':true,'Caption':"${FileName}",'EnforceInvocationTimeout':true,'FileName':"debug-user-where.csv",'IncludeNames':true,'InvocationTimeout':3600,'Label':"CSVExport",'Name':"block_7",'ProceedOnFail':false,'ProgressUpdateInterval':30,'QuoteStringOutput':false,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TargetFolder':"",'TimeoutRetries':1,'UploadStdOutAndErr':false}).
entity('tr-30115-C6D21A25-ED33-EB7E-5732-99603181330C-filtered-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-DF7E5B8F-5986-A516-5A78-00F45AAD393D-filtered-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/invocation/30115/block/03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90/properties',{'AllowRetriesOnTimeout':false,'Caption':"${Join Type};${Condition}",'Condition':"List omimGenes = $A.{Gene Symbols}.split(\",\")*.trim(); List userGenes = $B.{Gene.knownGene}.split(\",\")*.trim(); return omimGenes.intersect(userGenes.size() > 0",'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'EnforceInvocationTimeout':true,'InvocationTimeout':3600,'Is Condition Deterministic':false,'Join Type':"INNER",'Label':"Join",'Name':"block_9",'Output Limit': -1,'ProceedOnFail':false,'ProgressUpdateInterval':30,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TimeoutRetries':1,'UploadStdOutAndErr':false,'Use Static Compilation':true}).
entity('tr-30115-03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90-output-1',{'esc:datatype':"data-wrapper",'esc:hashvalue':"bsEMJyawZHJoa89icltDEw==",'prov:type':["prov:Entity","provone:Document","esc:TransientData"],'recomp:datasize':29757}).
entity('tr-30115-03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90-output-1',{'esc:datatype':"data-wrapper",'esc:hashvalue':"bsEMJyawZHJoa89icltDEw==",'prov:type':["prov:Entity","provone:Document","esc:TransientData"],'recomp:datasize':29757}).
entity('esc:svi-esc/document/30575/30576',{'esc:version':"1",'prov:label':"variants-in-scope.csv",'prov:type':["prov:Entity","provone:Document"]}).
entity('esc:svi-esc/invocation/30115/block/E6F4AC2B-E8E5-DD63-1DE9-2BE042650D1A/properties',{'AllowRetriesOnTimeout':false,'AutomaticFolder':true,'Caption':"${FileName}",'EnforceInvocationTimeout':true,'FileName':"variants-in-scope.csv",'IncludeNames':true,'InvocationTimeout':3600,'Label':"CSVExport",'Name':"block_5",'ProceedOnFail':false,'ProgressUpdateInterval':30,'QuoteStringOutput':false,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TargetFolder':"",'TimeoutRetries':1,'UploadStdOutAndErr':false}).
entity('esc:svi-esc/document/29781/29782',{'esc:version':1,'prov:label':"variant_summary-1608-09_Cha09Add.csv",'prov:type':["prov:Entity","provone:Document"]}).
entity('esc:svi-esc/invocation/30115/block/82B4F4C6-47EF-2AEF-B49B-B67DB40B2303/properties',{'AllowRetriesOnTimeout':false,'Caption':"${Name};${Source};${Delimiter}",'ContainsLabels':true,'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'Delimiter':",",'EndRow':2,'EnforceInvocationTimeout':true,'ImportChunkSize':5000,'InvocationTimeout':3600,'Label':"CSVImport",'LabelRow':1,'LimitRows':false,'Name':"clinvar_data",'ProceedOnFail':false,'ProgressUpdateInterval':30,'SampleInterval':1,'Source':"variant_summary-1608-09_Cha09Add.csv",'StartRow':1,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'Subsample':false,'TextOnly':true,'TimeoutRetries':1,'UploadStdOutAndErr':false}).
entity('tr-30115-82B4F4C6-47EF-2AEF-B49B-B67DB40B2303-imported-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-03D691E5-0AF3-D9A4-C9D1-4E3AC66C7B90-output-1',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-82B4F4C6-47EF-2AEF-B49B-B67DB40B2303-imported-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/invocation/30115/block/44B152A5-F3B0-A4F9-1D71-A5BF36443F52/properties',{'AllowRetriesOnTimeout':false,'Caption':"${Join Type};${Condition}",'Condition':"'chr' + $A.{Chromosome} +'_' + $A.{Start} == $B.{# Chromosome} + '_' + $B.{Start}",'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'EnforceInvocationTimeout':true,'InvocationTimeout':3600,'Is Condition Deterministic':false,'Join Type':"RIGHT",'Label':"Join",'Name':"block_8",'Output Limit': -1,'ProceedOnFail':false,'ProgressUpdateInterval':30,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TimeoutRetries':1,'UploadStdOutAndErr':false,'Use Static Compilation':true}).
entity('tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/invocation/30115/block/C0F901FD-9C13-45D0-8D53-788F4C687F62/properties',{'AllowRetriesOnTimeout':false,'Caption':"${Condition}",'Condition':"$A.{ClinicalSignificance}?.toLowerCase() == 'pathogenic'",'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'EnforceInvocationTimeout':true,'InvocationTimeout':3600,'Is Condition Deterministic':false,'Label':"Where",'Name':"block_6",'Output Limit': -1,'ProceedOnFail':false,'ProgressUpdateInterval':30,'Remainder Limit': -1,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TimeoutRetries':1,'UploadStdOutAndErr':false,'Use Static Compilation':false,'UserProp1':"",'UserProp2':"",'UserProps':"List"}).
entity('tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-remainder',{'esc:datatype':"data-wrapper",'esc:hashvalue':"TJpR35v7gM9Xtot6keR4RA==",'prov:type':["prov:Entity","provone:Document","esc:TransientData"],'recomp:datasize':35635}).
entity('tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-filtered-data',{'esc:datatype':"data-wrapper",'esc:hashvalue':"m5k2rODZ+arOS4nXAQLsDA==",'prov:type':["prov:Entity","provone:Document","esc:TransientData"],'recomp:datasize':2922}).
entity('tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-remainder',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/invocation/30115/block/4CE28CBA-9234-3AA8-1564-36A10B955350/properties',{'AllowRetriesOnTimeout':false,'Caption':"${Condition}",'Condition':"$A.{ClinicalSignificance}?.toLowerCase() == 'benign'",'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'EnforceInvocationTimeout':true,'InvocationTimeout':3600,'Is Condition Deterministic':false,'Label':"Where",'Name':"block_12",'Output Limit': -1,'ProceedOnFail':false,'ProgressUpdateInterval':30,'Remainder Limit': -1,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TimeoutRetries':1,'UploadStdOutAndErr':false,'Use Static Compilation':false,'UserProp1':"",'UserProp2':"",'UserProps':"List"}).
entity('tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-remainder',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-filtered-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-remainder',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/invocation/30115/block/F9E0C624-DEAC-C471-15BA-2D220AF693EC/properties',{'AllowRetriesOnTimeout':false,'Caption':"${Expression}",'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'EnforceInvocationTimeout':true,'Expression':"[Class: 'AMBER'] << $[*]",'InvocationTimeout':3600,'Label':"Select",'Name':"block_18",'ProceedOnFail':false,'ProgressUpdateInterval':30,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TimeoutRetries':1,'UploadStdOutAndErr':false,'Use Static Compilation':true}).
entity('tr-30115-F9E0C624-DEAC-C471-15BA-2D220AF693EC-output-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-4CE28CBA-9234-3AA8-1564-36A10B955350-filtered-data',{'esc:datatype':"data-wrapper",'esc:hashvalue':"m5k2rODZ+arOS4nXAQLsDA==",'prov:type':["prov:Entity","provone:Document","esc:TransientData"],'recomp:datasize':2922}).
entity('esc:svi-esc/invocation/30115/block/502FD710-7C1A-05CD-2BFC-89CD28547DAB/properties',{'AllowRetriesOnTimeout':false,'Caption':"${Expression}",'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'EnforceInvocationTimeout':true,'Expression':"[Class: 'GREEN'] << $[*]",'InvocationTimeout':3600,'Label':"Select",'Name':"block_17",'ProceedOnFail':false,'ProgressUpdateInterval':30,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TimeoutRetries':1,'UploadStdOutAndErr':false,'Use Static Compilation':true}).
entity('tr-30115-502FD710-7C1A-05CD-2BFC-89CD28547DAB-output-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-C0F901FD-9C13-45D0-8D53-788F4C687F62-filtered-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/invocation/30115/block/633AC5C9-C332-56E0-D839-B89A4110B147/properties',{'AllowRetriesOnTimeout':false,'Caption':"${Expression}",'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'EnforceInvocationTimeout':true,'Expression':"[Class: 'RED'] << $[*]",'InvocationTimeout':3600,'Label':"Select",'Name':"block_3",'ProceedOnFail':false,'ProgressUpdateInterval':30,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TimeoutRetries':1,'UploadStdOutAndErr':false,'Use Static Compilation':true}).
entity('tr-30115-633AC5C9-C332-56E0-D839-B89A4110B147-output-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-502FD710-7C1A-05CD-2BFC-89CD28547DAB-output-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-F9E0C624-DEAC-C471-15BA-2D220AF693EC-output-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-633AC5C9-C332-56E0-D839-B89A4110B147-output-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/invocation/30115/block/58644E52-D670-0900-6105-0CD62F6E70C7/properties',{'AllowRetriesOnTimeout':false,'Caption':"",'DebugMode':false,'DebugPort':5005,'DebugSuspended':true,'EnforceInvocationTimeout':true,'InvocationTimeout':3600,'Label':"3-way Row Join",'Name':"block_19",'ProceedOnFail':false,'ProgressUpdateInterval':30,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TimeoutRetries':1,'UploadStdOutAndErr':false}).
entity('tr-30115-58644E52-D670-0900-6105-0CD62F6E70C7-joined-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('tr-30115-58644E52-D670-0900-6105-0CD62F6E70C7-joined-data',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/document/30627/30628',{'esc:version':"1",'prov:label':"svi-classification.csv",'prov:type':["prov:Entity","provone:Document"]}).
entity('esc:svi-esc/invocation/30115/block/E460FCCB-DB54-F2DB-945D-B5AC8B0D2348/properties',{'AllowRetriesOnTimeout':false,'AutomaticFolder':true,'Caption':"${FileName}",'EnforceInvocationTimeout':true,'FileName':"svi-classification.csv",'IncludeNames':true,'InvocationTimeout':3600,'Label':"CSVExport",'Name':"block_14",'ProceedOnFail':false,'ProgressUpdateInterval':30,'QuoteStringOutput':false,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TargetFolder':"",'TimeoutRetries':1,'UploadStdOutAndErr':false}).
entity('tr-30115-44B152A5-F3B0-A4F9-1D71-A5BF36443F52-output-1',[prop(prov:type,['provone:document']),prop(prov:label,'data-wrapper'),prop(prov:value,'TransientData')]).
entity('esc:svi-esc/document/30631/30632',{'esc:version':"1",'prov:label':"debug-join-2).csv",'prov:type':["prov:Entity","provone:Document"]}).
entity('esc:svi-esc/invocation/30115/block/D4A4A3F0-044F-97D9-05DB-A64AFC62941A/properties',{'AllowRetriesOnTimeout':false,'AutomaticFolder':true,'Caption':"${FileName}",'EnforceInvocationTimeout':true,'FileName':"debug-join-2).csv",'IncludeNames':true,'InvocationTimeout':3600,'Label':"CSVExport",'Name':"block_15",'ProceedOnFail':false,'ProgressUpdateInterval':30,'QuoteStringOutput':false,'StdOutSize':4096,'StrOutAndErrFileName':"Debug-",'StreamingChunkSize':1000,'TargetFolder':"",'TimeoutRetries':1,'UploadStdOutAndErr':false}).

%Rules to generate facts from the source
% usou(WEx) :- used(_,ExId,DataId,_,_), wasPartOf(ExId,WEx),
% print("used("), print(ExId), print(','),print(DataId), print(')').
% gerou(WEx) :-
% wasGeneratedBy(_,DataId,ExId,_,_),wasPartOf(ExId,WEx),print('wasGeneratedBy('),print(DataId),
% print(','),print(ExId), print(')').
% derivado(WEx) :-
% wasPartOf(ExId,WEx),wasGeneratedBy(_,DataId1,ExId,_,_),used(_,ExId,DataId2,_,_),print('wasDerivedFrom('),print(DataId1),
% print(','),print(DataId2), print(')'). dados(WEx) :-
% distinct(dados1(WEx)).
% dados1(WEx) :- wasPartOf(ExId,WEx),document(DataId,Prop),(
% wasGeneratedBy(_,DataId,ExId,_,_);
% used(_,ExId,DataId,_,_)),print('document('),print(DataId),print(','),print(Prop),print(')'),nl.
% plano(WEx) :-
% wasAssociatedWith(_,"esc:svi-esc/invocation/453/block/DFB8167E-531B-0D90-7E67-681E317BB36B",_,_,_{'esc:AvgCPUCacheSize':30720,'esc:AvgCPUSpeed':2394,'esc:ConcurrentServiceRuns':1}).
%

%==========================================================================================================================================================

dataSet(2,'SciCumulus').
entity(w1s,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,'patientdiag')]).
hasDataSet(w1s, 2).
entity(pg1s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'filter_variant')]).
entity(pg2s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'filter_gene')]).
entity(pg3s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'join_var_gene')]).
entity(pg4s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'join_clinvar')]).
entity(pg5s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'classify_clinvar')]).
entity(pin1s,[prop(prov:type,['provone:port']),prop(prov:label,'imod1act1')]).
entity(pin2s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act1')]).
entity(pout2s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act1')]).
entity(pin3s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act2')]).
entity(pout3s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act2')]).
entity(pin4s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act3')]).
entity(pout4s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act3')]).
entity(pin5s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act4')]).
entity(pout5s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act4')]).
entity(pout6s,[prop(prov:type,['provone:port']),prop(prov:label,'omod1act5')]).
hasSubProgram(w1s,pg1s).
hasSubProgram(w1s,pg2s).
hasSubProgram(w1s,pg3s).
hasSubProgram(w1s,pg4s).
hasSubProgram(w1s,pg5s).
hasOutPort(pg1s,pout2s).
hasOutPort(pg2s,pout3s).
hasOutPort(pg3s,pout4s).
hasOutPort(pg4s,pout5s).
hasOutPort(pg5s,pout6s).
hasInPort(pg1s,pin1s).
hasInPort(pg2s,pin2s).
hasInPort(pg3s,pin3s).
hasInPort(pg4s,pin4s).
hasInPort(pg5s,pin5s).
entity(d18s,[prop(prov:type,['provone:data']),prop(prov:label,'pathout'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/SciCumulus/exp')]).
entity(d28s,[prop(prov:type,['provone:data']),prop(prov:label,'varpath'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/input/Patient-Variants/svi-classification-MUN0785-CV1602-GM160308.csv')]).
entity(d38s,[prop(prov:type,['provone:data']),prop(prov:label,'genepath'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/input/Omim/genemap2.csv')]).
entity(d48s,[prop(prov:type,['provone:data']),prop(prov:label,'pathout'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/SciCumulus/exp')]).
entity(d58s,[prop(prov:type,['provone:data']),prop(prov:label,'varout'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/SciCumulus/exp/filtered_variants.xlsx')]).
entity(d68s,[prop(prov:type,['provone:data']),prop(prov:label,'varpath'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/input/Patient-Variants/svi-classification-MUN0785-CV1602-GM160308.csv')]).
entity(d78s,[prop(prov:type,['provone:data']),prop(prov:label,'geneout'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/SciCumulus/exp/filtered_genemap.xlsx')]).
entity(d88s,[prop(prov:type,['provone:data']),prop(prov:label,'pathout'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/SciCumulus/exp')]).
entity(d98s,[prop(prov:type,['provone:data']),prop(prov:label,'varout'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/SciCumulus/exp/filtered_variants.xlsx')]).
entity(d108s,[prop(prov:type,['provone:data']),prop(prov:label,'pathout'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/SciCumulus/exp')]).
entity(d118s,[prop(prov:type,['provone:data']),prop(prov:label,'vargeneout'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/SciCumulus/exp/join_variants_gene.xlsx')]).
entity(d128s,[prop(prov:type,['provone:data']),prop(prov:label,'clinvarpath'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/SciCumulus/exp/join_variants_gene_clinvar.xlsx')]).
entity(d138s,[prop(prov:type,['provone:data']),prop(prov:label,'pathout'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/SciCumulus/exp')]).
entity(d148s,[prop(prov:type,['provone:data']),prop(prov:label,'result'),prop(prov:value,'C:/Users/Wellington/Drive/PhD/Workflows/Diagnosis/SciCumulus/exp/result.xlsx')]).
activity(ew8s,[prop(prov:type,['provone:execution']),prop(prov:label,'patientdiag-exec'),prop(prov:startTime,'2018-01-14 19:04:40.628-02'),prop(prov:endTime,'2018-01-14 19:04:52.833-02'),prop(wfms:completed,'1')]).
hadDataSet(ew8s, 2).
activity(ex1s,[prop(prov:type,['provone:execution']),prop(prov:label,'filter_variant'),prop(prov:startTime,'2018-01-14 19:04:40.689-02'),prop(prov:endTime,'2018-01-14 19:04:42.034-02'),prop(wfms:completed,'1')]).
activity(ex2s,[prop(prov:type,['provone:execution']),prop(prov:label,'filter_gene'),prop(prov:startTime,'2018-01-14 19:04:42.095-02'),prop(prov:endTime,'2018-01-14 19:04:43.694-02'),prop(wfms:completed,'1')]).
activity(ex3s,[prop(prov:type,['provone:execution']),prop(prov:label,'join_var_gene'),prop(prov:startTime,'2018-01-14 19:04:43.757-02'),prop(prov:endTime,'2018-01-14 19:04:45.6-02'),prop(wfms:completed,'1')]).
activity(ex4s,[prop(prov:type,['provone:execution']),prop(prov:label,'join_clinvar'),prop(prov:startTime,'2018-01-14 19:04:45.636-02'),prop(prov:endTime,'2018-01-14 19:04:50.831-02'),prop(wfms:completed,'1')]).
activity(ex5s,[prop(prov:type,['provone:execution']),prop(prov:label,'classify_clinvar'),prop(prov:startTime,'2018-01-14 19:04:50.888-02'),prop(prov:endTime,'2018-01-14 19:04:52.791-02'),prop(wfms:completed,'1')]).
wasGeneratedBy(d38s,ex1s).
wasGeneratedBy(d48s,ex1s).
wasGeneratedBy(d58s,ex1s).
wasGeneratedBy(d68s,ex1s).
wasGeneratedBy(d78s,ex2s).
wasGeneratedBy(d88s,ex2s).
wasGeneratedBy(d98s,ex2s).
wasGeneratedBy(d108s,ex3s).
wasGeneratedBy(d118s,ex3s).
wasGeneratedBy(d128s,ex4s).
wasGeneratedBy(d138s,ex4s).
wasGeneratedBy(d148s,ex5s).
wasGeneratedBy(d148s,ew8s).
used(ex1s,d18s).
used(ew8s,d18s).
hasDefaultParam(pin1s,d18s).
used(ex1s,d28s).
used(ex2s,d38s).
used(ex2s,d48s).
used(ex2s,d58s).
used(ex2s,d68s).
used(ex3s,d78s).
used(ex3s,d88s).
used(ex3s,d98s).
used(ex4s,d108s).
used(ex4s,d118s).
used(ex5s,d128s).
used(ex5s,d138s).
wasPartOf(ex1s,ew8s).
wasPartOf(ex2s,ew8s).
wasPartOf(ex3s,ew8s).
wasPartOf(ex4s,ew8s).
wasPartOf(ex5s,ew8s).
wasAssociatedWith(ew8s,u1s).
wasInformedBy(ex2s,ex1s).
wasInformedBy(ex3s,ex2s).
wasInformedBy(ex4s,ex3s).
wasInformedBy(ex5s,ex4s).
hadPlan(ex1s,pg1s).
hadPlan(ex2s,pg2s).
hadPlan(ex3s,pg3s).
hadPlan(ex4s,pg4s).
hadPlan(ex5s,pg5s).
hadPlan(ew8s,w1s).
hadInPort(ex1s,pin1s).
hadInPort(ex2s,pin2s).
hadInPort(ex3s,pin3s).
hadInPort(ex4s,pin4s).
hadInPort(ex5s,pin5s).
hadOutPort(ex1s,pout2s).
hadOutPort(ex2s,pout3s).
hadOutPort(ex3s,pout4s).
hadOutPort(ex4s,pout5s).
hadOutPort(ex5s,pout6s).
agent(u1s,[prop(prov:type,['provone:user']),prop(prov:label,'wellmor')]).


wasDerivedFrom('d38s','d18s').
wasDerivedFrom('d38s','d28s').
wasDerivedFrom('d48s','d18s').
wasDerivedFrom('d48s','d28s').
wasDerivedFrom('d58s','d18s').
wasDerivedFrom('d58s','d28s').
wasDerivedFrom('d68s','d18s').
wasDerivedFrom('d68s','d28s').
wasDerivedFrom('d78s','d38s').
wasDerivedFrom('d78s','d48s').
wasDerivedFrom('d78s','d58s').
wasDerivedFrom('d78s','d68s').
wasDerivedFrom('d88s','d38s').
wasDerivedFrom('d88s','d48s').
wasDerivedFrom('d88s','d58s').
wasDerivedFrom('d88s','d68s').
wasDerivedFrom('d98s','d38s').
wasDerivedFrom('d98s','d48s').
wasDerivedFrom('d98s','d58s').
wasDerivedFrom('d98s','d68s').
wasDerivedFrom('d108s','d78s').
wasDerivedFrom('d108s','d88s').
wasDerivedFrom('d108s','d98s').
wasDerivedFrom('d118s','d78s').
wasDerivedFrom('d118s','d88s').
wasDerivedFrom('d118s','d98s').
wasDerivedFrom('d128s','d108s').
wasDerivedFrom('d128s','d118s').
wasDerivedFrom('d138s','d108s').
wasDerivedFrom('d138s','d118s').
wasDerivedFrom('d148s','d128s').
wasDerivedFrom('d148s','d138s').

%wasDerivedFrom by inference
%derivado(WEx) :- wasPartOf(ExId,WEx),wasGeneratedBy(DataId1,ExId),used(ExId,DataId2),print('wasDerivedFrom('),print(DataId1), print(','),print(DataId2), print(')').

%==============================================================================================================================

dataSet(4,'Taverna').
hasDataSet('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/',4).
activity('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/',[prop(prov:type,['provone:execution']),prop(prov:label,'Processor execution SeparateVariants@en'),prop(prov:startTime,'2017-10-11T15:34:22.449-03:00'),prop(prov:endTime,'2017-10-11T15:34:24.321-03:00'),prop(wfms:completed,'1')]).
activity('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/46405000-eccc-40cd-a665-7f31d9601a74/',[prop(prov:type,['provone:execution']),prop(prov:label,'Processor execution SeparateGene@en'),prop(prov:startTime,'2017-10-11T15:34:22.527-03:00'),prop(prov:endTime,'2017-10-11T15:34:24.647-03:00'),prop(wfms:completed,'1')]).
activity('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/65d20385-b9fa-48e7-a400-1237cdc9bf66/',[prop(prov:type,['provone:execution']),prop(prov:label,'Processor execution ComposeVariantsGene@en'),prop(prov:startTime,'2017-10-11T15:34:24.647-03:00'),prop(prov:endTime,'2017-10-11T15:34:26.220-03:00'),prop(wfms:completed,'1')]).
activity('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/7b48a5f5-5555-44e3-b246-6ad005f949ca/',[prop(prov:type,['provone:execution']),prop(prov:label,'Processor execution LabelClinvar@en'),prop(prov:startTime,'2017-10-11T15:34:39.005-03:00'),prop(prov:endTime,'2017-10-11T15:34:43.091-03:00'),prop(wfms:completed,'1')]).
activity('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/2b2e2efb-d872-4d53-ba8d-603a0f651543/',[prop(prov:type,['provone:execution']),prop(prov:label,'Processor execution ComposeClinvar@en'),prop(prov:startTime,'2017-10-11T15:34:26.220-03:00'),prop(prov:endTime,'2017-10-11T15:34:38.974-03:00'),prop(wfms:completed,'1')]).
activity('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/',[prop(prov:type,['provone:execution']),prop(prov:label,'Workflow run of Workflow8@en'),prop(prov:startTime,'2017-10-11T15:34:21.342-03:00'),prop(prov:endTime,'2017-10-11T15:34:43.122-03:00'),prop(wfms:completed,'1')]).
hadDataSet('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/', 4).
entity('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/fbca0988-9237-4e3a-abf3-d78013741817',[prop(prov:type,['provone:data']),prop(prov:label,'join_variants_gene'),prop(prov:value,'join_variants_gene')]).
entity('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/be351ed0-ba75-4be4-81ca-ace6ca636573',[prop(prov:type,['provone:document']),prop(prov:label,'gene_map'),prop(prov:value,'genemap2.csv')]).
entity('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/dea13e4c-b8ea-4d5e-8450-311b90842ffe',[prop(prov:type,['provone:document']),prop(prov:label,'svi_classification'),prop(prov:value,'svi-classification-MUN0785-CV1502-GM160308.csv')]).
entity('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/9d1a8823-daff-41d0-ac0f-c6da25bbeec4',[prop(prov:type,['provone:document']),prop(prov:label,'join_variants_gene_clinvar'),prop(prov:value,'join_variants_gene_clinvar')]).
entity('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/d61a950d-edab-4b8e-b0fa-b3a72191bd58',[prop(prov:type,['provone:document']),prop(prov:label,'filtered_variants'),prop(prov:value,'filtered_variants')]).
entity('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/5787eb91-0d0c-4061-b952-11fc44188e4c',[prop(prov:type,['provone:document']),prop(prov:label,'filtered_genemap'),prop(prov:value,'filtered_genemap')]).
entity('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/12c1dee8-292f-45a9-b6e6-e4743ff9b783',[prop(prov:type,['provone:document']),prop(prov:label,'STDOUT'),prop(prov:value,'Result.txt')]).
entity('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/07604491-8cd7-48d6-8e61-c41a946d6a4c',[prop(prov:type,['provone:document']),prop(prov:label,'variant_summary'),prop(prov:value,'variant_summary.csv')]).
wasGeneratedBy('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/fbca0988-9237-4e3a-abf3-d78013741817','http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/65d20385-b9fa-48e7-a400-1237cdc9bf66/').
wasGeneratedBy('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/9d1a8823-daff-41d0-ac0f-c6da25bbeec4','http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/2b2e2efb-d872-4d53-ba8d-603a0f651543/').
wasGeneratedBy('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/d61a950d-edab-4b8e-b0fa-b3a72191bd58','http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/').
wasGeneratedBy('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/5787eb91-0d0c-4061-b952-11fc44188e4c','http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/46405000-eccc-40cd-a665-7f31d9601a74/').
wasGeneratedBy('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/12c1dee8-292f-45a9-b6e6-e4743ff9b783','http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/7b48a5f5-5555-44e3-b246-6ad005f949ca/').
used('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/dea13e4c-b8ea-4d5e-8450-311b90842ffe').
used('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/46405000-eccc-40cd-a665-7f31d9601a74/','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/be351ed0-ba75-4be4-81ca-ace6ca636573').
used('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/65d20385-b9fa-48e7-a400-1237cdc9bf66/','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/d61a950d-edab-4b8e-b0fa-b3a72191bd58').
used('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/65d20385-b9fa-48e7-a400-1237cdc9bf66/','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/5787eb91-0d0c-4061-b952-11fc44188e4c').
used('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/7b48a5f5-5555-44e3-b246-6ad005f949ca/','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/9d1a8823-daff-41d0-ac0f-c6da25bbeec4').
used('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/2b2e2efb-d872-4d53-ba8d-603a0f651543/','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/fbca0988-9237-4e3a-abf3-d78013741817').
used('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/2b2e2efb-d872-4d53-ba8d-603a0f651543/','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/07604491-8cd7-48d6-8e61-c41a946d6a4c').
wasPartOf('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/','http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/').
wasPartOf('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/46405000-eccc-40cd-a665-7f31d9601a74/','http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/').
wasPartOf('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/65d20385-b9fa-48e7-a400-1237cdc9bf66/','http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/').
wasPartOf('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/7b48a5f5-5555-44e3-b246-6ad005f949ca/','http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/').
wasPartOf('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/2b2e2efb-d872-4d53-ba8d-603a0f651543/','http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/').
wasAssociatedWith('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/','taverna-engine').
wasAssociatedWith('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/46405000-eccc-40cd-a665-7f31d9601a74/','taverna-engine').
wasAssociatedWith('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/65d20385-b9fa-48e7-a400-1237cdc9bf66/','taverna-engine').
wasAssociatedWith('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/7b48a5f5-5555-44e3-b246-6ad005f949ca/','taverna-engine').
wasAssociatedWith('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/2b2e2efb-d872-4d53-ba8d-603a0f651543/','taverna-engine').
hadPlan('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/').
hadPlan('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/').
hadPlan('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/46405000-eccc-40cd-a665-7f31d9601a74/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/').
hadPlan('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/65d20385-b9fa-48e7-a400-1237cdc9bf66/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/').
hadPlan('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/7b48a5f5-5555-44e3-b246-6ad005f949ca/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/LabelClinvar/').
hadPlan('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/2b2e2efb-d872-4d53-ba8d-603a0f651543/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/').
hadInPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/2b2e2efb-d872-4d53-ba8d-603a0f651543/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/in/variant_summary').
hadInPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/2b2e2efb-d872-4d53-ba8d-603a0f651543/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/in/join_variants_gene').
hadInPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/in/svi_classification').
hadInPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/LabelClinvar/in/join_variants_gene_clinvar').
hadInPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/in/filtered_variants').
hadInPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/in/svi_classification').
hadInPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/in/filtered_genemap').
hadInPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/in/clinvar').
hadInPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/in/GeneMap').
hadInPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/46405000-eccc-40cd-a665-7f31d9601a74/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/in/gene_map').
hadOutPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/cff62007-0684-410f-a9a3-7279c67c4fa1/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/out/filtered_variants').
hadOutPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/2b2e2efb-d872-4d53-ba8d-603a0f651543/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/out/join_variants_gene_clinvar').
hadOutPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/46405000-eccc-40cd-a665-7f31d9601a74/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/out/filtered_genemap').
hadOutPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/7b48a5f5-5555-44e3-b246-6ad005f949ca/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/LabelClinvar/out/STDOUT').
hadOutPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/process/65d20385-b9fa-48e7-a400-1237cdc9bf66/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/out/join_variants_gene').
hadOutPort('http://ns.taverna.org.uk/2011/run/76676230-4711-4a10-b7bc-9a0d093dc526/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/out/Result').
wasDerivedFrom('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/d61a950d-edab-4b8e-b0fa-b3a72191bd58','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/fbca0988-9237-4e3a-abf3-d78013741817').
wasDerivedFrom('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/5787eb91-0d0c-4061-b952-11fc44188e4c','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/fbca0988-9237-4e3a-abf3-d78013741817').
wasDerivedFrom('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/fbca0988-9237-4e3a-abf3-d78013741817','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/9d1a8823-daff-41d0-ac0f-c6da25bbeec4').
wasDerivedFrom('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/07604491-8cd7-48d6-8e61-c41a946d6a4c','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/9d1a8823-daff-41d0-ac0f-c6da25bbeec4').
wasDerivedFrom('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/dea13e4c-b8ea-4d5e-8450-311b90842ffe','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/d61a950d-edab-4b8e-b0fa-b3a72191bd58').
wasDerivedFrom('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/be351ed0-ba75-4be4-81ca-ace6ca636573','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/5787eb91-0d0c-4061-b952-11fc44188e4c').
wasDerivedFrom('http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/9d1a8823-daff-41d0-ac0f-c6da25bbeec4','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/12c1dee8-292f-45a9-b6e6-e4743ff9b783').
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/in/variant_summary',[prop(prov:type,['provone:port']),prop(prov:label,'variant_summary')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/in/join_variants_gene',[prop(prov:type,['provone:port']),prop(prov:label,'join_variants_gene')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/out/join_variants_gene_clinvar',[prop(prov:type,['provone:port']),prop(prov:label,'join_variants_gene_clinvar')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/out/filtered_genemap',[prop(prov:type,['provone:port']),prop(prov:label,'filtered_genemap')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/LabelClinvar/out/STDOUT',[prop(prov:type,['provone:port']),prop(prov:label,'STDOUT')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/in/svi_classification',[prop(prov:type,['provone:port']),prop(prov:label,'svi_classification')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/out/filtered_variants',[prop(prov:type,['provone:port']),prop(prov:label,'filtered_variants')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/LabelClinvar/in/join_variants_gene_clinvar',[prop(prov:type,['provone:port']),prop(prov:label,'join_variants_gene_clinvar')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/out/join_variants_gene',[prop(prov:type,['provone:port']),prop(prov:label,'join_variants_gene')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/in/filtered_variants',[prop(prov:type,['provone:port']),prop(prov:label,'filtered_variants')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/in/svi_classification',[prop(prov:type,['provone:port']),prop(prov:label,'svi_classification')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/in/filtered_genemap',[prop(prov:type,['provone:port']),prop(prov:label,'filtered_genemap')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/out/Result',[prop(prov:type,['provone:port']),prop(prov:label,'Result')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/in/clinvar',[prop(prov:type,['provone:port']),prop(prov:label,'clinvar')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/in/GeneMap',[prop(prov:type,['provone:port']),prop(prov:label,'GeneMap')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/in/gene_map',[prop(prov:type,['provone:port']),prop(prov:label,'gene_map')]).
hasDefaultParam('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/in/gene_map','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/be351ed0-ba75-4be4-81ca-ace6ca636573').
hasDefaultParam('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/in/svi_classification','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/dea13e4c-b8ea-4d5e-8450-311b90842ffe').
hasDefaultParam('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/in/variant_summary','http://ns.taverna.org.uk/2011/data/76676230-4711-4a10-b7bc-9a0d093dc526/ref/07604491-8cd7-48d6-8e61-c41a946d6a4c').
agent('taverna-engine',[prop(prov:type,['provone:user']),prop(prov:label,'TavernaEngine')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/',[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,'Workflow8')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/',[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'ComposeVariantsGene')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/',[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'ComposeClinvar')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/LabelClinvar/',[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'LabelClinvar')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/',[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'SeparateVariants')]).
entity('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/',[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'SeparateGene')]).
hasSubProgram('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/').
hasSubProgram('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/').
hasSubProgram('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/LabelClinvar/').
hasSubProgram('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/').
hasSubProgram('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/').
hasInPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/in/filtered_variants').
hasInPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/in/filtered_genemap').
hasInPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/in/variant_summary').
hasInPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/in/join_variants_gene').
hasInPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/LabelClinvar/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/LabelClinvar/in/join_variants_gene_clinvar').
hasInPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/in/svi_classification').
hasInPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/in/clinvar').
hasInPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/in/GeneMap').
hasInPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/in/svi_classification').
hasInPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/in/gene_map').
hasOutPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeVariantsGene/out/join_variants_gene').
hasOutPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/ComposeClinvar/out/join_variants_gene_clinvar').
hasOutPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/LabelClinvar/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/LabelClinvar/out/STDOUT').
hasOutPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateVariants/out/filtered_variants').
hasOutPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/out/Result').
hasOutPort('http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/','http://ns.taverna.org.uk/2010/workflowBundle/ea0b115a-fbda-4caa-9f9b-e015fa884ed5/workflow/Workflow8/processor/SeparateGene/out/filtered_genemap').

%=======================================================================================================================================

dataSet(3,'VisTrails').
entity(w1v,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,'Pathogenesis')]).
hasDataSet(w1v, 2).
entity(pg141v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'GeneMap')]).
entity(pg121v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'ClinvarPath')]).
entity(pg111v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Variants')]).
entity(pg101v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Classify')]).
entity(pg81v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'JoinClinvar')]).
entity(pg41v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'JoinVariantGene')]).
entity(pg31v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'FilterGene')]).
entity(pg21v,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'FilterVariants')]).
entity(pin11v,[prop(prov:type,['provone:port']),prop(prov:label,'source')]).
entity(pin21v,[prop(prov:type,['provone:port']),prop(prov:label,'source')]).
entity(pin31v,[prop(prov:type,['provone:port']),prop(prov:label,'source')]).
entity(pin61v,[prop(prov:type,['provone:port']),prop(prov:label,'source')]).
entity(pin101v,[prop(prov:type,['provone:port']),prop(prov:label,'source')]).
entity(pin111v,[prop(prov:type,['provone:port']),prop(prov:label,'value')]).
entity(pin121v,[prop(prov:type,['provone:port']),prop(prov:label,'value')]).
entity(pin131v,[prop(prov:type,['provone:port']),prop(prov:label,'value')]).
entity(pout201v,[prop(prov:type,['provone:port']),prop(prov:label,'value')]).
entity(pin211v,[prop(prov:type,['provone:port']),prop(prov:label,'svi_classification')]).
entity(pout361v,[prop(prov:type,['provone:port']),prop(prov:label,'value')]).
entity(pin371v,[prop(prov:type,['provone:port']),prop(prov:label,'gene_map_path')]).
entity(pout401v,[prop(prov:type,['provone:port']),prop(prov:label,'joined_var_gene')]).
entity(pin411v,[prop(prov:type,['provone:port']),prop(prov:label,'variants_gene_map')]).
entity(pout441v,[prop(prov:type,['provone:port']),prop(prov:label,'value')]).
entity(pin451v,[prop(prov:type,['provone:port']),prop(prov:label,'clinvar_path')]).
entity(pout501v,[prop(prov:type,['provone:port']),prop(prov:label,'clinvar_map')]).
entity(pin511v,[prop(prov:type,['provone:port']),prop(prov:label,'var_gene_clinvar')]).
entity(pout521v,[prop(prov:type,['provone:port']),prop(prov:label,'filtered_gene')]).
entity(pin531v,[prop(prov:type,['provone:port']),prop(prov:label,'gene_maps')]).
entity(pout561v,[prop(prov:type,['provone:port']),prop(prov:label,'filtered_variants')]).
entity(pin571v,[prop(prov:type,['provone:port']),prop(prov:label,'variants')]).
activity(ex11v,[prop(prov:type,['provone:execution']),prop(prov:label,'GeneMap'),prop(prov:startTime,'2017-10-14 14:12:05.0'),prop(prov:endTime,'2017-10-14 14:12:05.0'),prop(wfms:completed,'1')]).
activity(ex21v,[prop(prov:type,['provone:execution']),prop(prov:label,'FilterGene'),prop(prov:startTime,'2017-10-14 14:12:05.0'),prop(prov:endTime,'2017-10-14 14:12:05.0'),prop(wfms:completed,'1')]).
activity(ex31v,[prop(prov:type,['provone:execution']),prop(prov:label,'Variants'),prop(prov:startTime,'2017-10-14 14:12:05.0'),prop(prov:endTime,'2017-10-14 14:12:05.0'),prop(wfms:completed,'1')]).
activity(ex41v,[prop(prov:type,['provone:execution']),prop(prov:label,'FilterVariants'),prop(prov:startTime,'2017-10-14 14:12:05.0'),prop(prov:endTime,'2017-10-14 14:12:06.0'),prop(wfms:completed,'1')]).
activity(ex51v,[prop(prov:type,['provone:execution']),prop(prov:label,'JoinVariantGene'),prop(prov:startTime,'2017-10-14 14:12:06.0'),prop(prov:endTime,'2017-10-14 14:12:06.0'),prop(wfms:completed,'1')]).
activity(ex61v,[prop(prov:type,['provone:execution']),prop(prov:label,'ClinvarPath'),prop(prov:startTime,'2017-10-14 14:12:06.0'),prop(prov:endTime,'2017-10-14 14:12:06.0'),prop(wfms:completed,'1')]).
activity(ex71v,[prop(prov:type,['provone:execution']),prop(prov:label,'JoinClinvar'),prop(prov:startTime,'2017-10-14 14:12:06.0'),prop(prov:endTime,'2017-10-14 14:12:10.0'),prop(wfms:completed,'1')]).
activity(ex81v,[prop(prov:type,['provone:execution']),prop(prov:label,'Classify'),prop(prov:startTime,'2017-10-14 14:12:10.0'),prop(prov:endTime,'2017-10-14 14:12:10.0'),prop(wfms:completed,'1')]).
activity(ew11v,[prop(prov:type,['provone:execution']),prop(prov:label,'Pathogenesis*'),prop(prov:startTime,'2017-10-14 14:12:05.0'),prop(prov:endTime,'2017-10-14 14:12:10.0'),prop(wfms:completed,'1')]).
hadDataSet(ew11v, 2).
entity(d01v,[prop(prov:type,['provone:data']),prop(prov:label,'source'),prop(prov:value,'import%20pandas%0A%0Aclass%20Filter_Gene%3A%0A%0A%20%20%20%20def%20filter%28self%2C%20gene_map_path%29%3A%0A%20%20%20%20%20%20%20%20user_phenotypes%20%3D%20%5B%27myasthenic%27%2C%20%27congenital%27%5D%0A%20%20%20%20%20%20%20%20data_frame%20%3D%20pandas.read_csv%28gene_map_path%2C%20skipinitialspace%3DTrue%29%0A%20%20%20%20%20%20%20%20filtered_data_frame%20%3D%20pandas.DataFrame%28%29%0A%20%20%20%20%20%20%20%20for%20user_phenotype%20in%20user_phenotypes%3A%0A%20%20%20%20%20%20%20%20%20%20%20%20filtered_data_frame%20%3D%20pandas.concat%28%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5Bfiltered_data_frame%2C%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20data_frame%5Bdata_frame%5B%27Phenotypes%27%5D.str.lower%28%29.str.contains%28user_phenotype%2C%20na%3DFalse%29%5D%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5D%29%0A%20%20%20%20%20%20%20%20return%20filtered_data_frame%0A%0Afilter_gene%20%3D%20Filter_Gene%28%29%0Afiltered_gene%20%3D%20filter_gene.filter%28gene_map_path%29%20%20%20%20%20%20%20%20%20%0Awriter%20%3D%20pandas.ExcelWriter%28%27C%3A%5C%5CUsers%5CWellington%5C%5CDrive%5C%5CPhD%5C%5CWorkflows%5C%5CDiagnosis%5C%5CVisTrails%5C%5Coutput%5C%5Cfiltered_genemap.xlsx%27%2C%20engine%3D%27xlsxwriter%27%29%0Afiltered_gene.to_excel%28writer%2C%20sheet_name%3D%27Sheet1%27%29%0Awriter.save%28%29%0Awriter.close%28%29')]).
entity(d31v,[prop(prov:type,['provone:data']),prop(prov:label,'source'),prop(prov:value,'import%20pandas%0A%20%20%20%20%0Aclass%20Filter_Variants%3A%0A%20%20%20%20%0A%20%20%20%20def%20filter_variants%28self%2C%20svi_classification%29%3A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%0A%0A%20%20%20%20%20%20%20%20data_frame%20%3D%20pandas.read_csv%28svi_classification%2C%20skipinitialspace%3DTrue%2C%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20usecols%3D%5B%27Class%27%2C%20%27GeneID%27%2C%20%27GeneSymbol%27%2C%20%27VariantID%27%2C%20%27B.Start%27%2C%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%27ExonicFunc.knownGene%27%2C%20%27Gene.knownGene%27%5D%29%0A%20%20%20%20%20%20%20%20filtered_variants%20%3D%20data_frame.ix%5Bdata_frame%5B%27ExonicFunc.knownGene%27%5D%20%21%3D%20%27synonymous%20SNV%27%5D%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20return%20filtered_variants%0A%0AFilter_Var%20%3D%20Filter_Variants%28%29%0Afiltered_variants%20%3D%20Filter_Var.filter_variants%28svi_classification%29%0Awriter%20%3D%20pandas.ExcelWriter%28%27C%3A%5C%5CUsers%5CWellington%5C%5CDrive%5C%5CPhD%5C%5CWorkflows%5C%5CDiagnosis%5C%5CVisTrails%5C%5Coutput%5C%5Cfiltered_variants.xlsx%27%2C%20engine%3D%27xlsxwriter%27%29%0Afiltered_variants.to_excel%28writer%2C%20sheet_name%3D%27Sheet1%27%29%0Awriter.save%28%29%0Awriter.close%28%29%0A%0A')]).
entity(d41v,[prop(prov:type,['provone:data']),prop(prov:label,'source'),prop(prov:value,'import%20pandas%0A%0Aclass%20Var_Gene%3A%0A%0A%20%20%20%20def%20join_var_gene%28self%2C%20variants%2C%20gene_maps%29%3A%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20data%20%3D%20%5B%0A%20%20%20%20%20%20%20%20%20%20%20%20gene%20%2B%20variant%0A%20%20%20%20%20%20%20%20%20%20%20%20for%20gi%2C%20gene%20in%20zip%28gene_maps%5B%22Gene%20Symbols%22%5D%2C%20gene_maps.values.tolist%28%29%29%0A%20%20%20%20%20%20%20%20%20%20%20%20for%20vi%2C%20variant%20in%20zip%28variants%5B%27Gene.knownGene%27%5D%2C%20variants.values.tolist%28%29%29%0A%20%20%20%20%20%20%20%20%20%20%20%20if%20set%28vi.split%28%22%2C%22%29%29%20%26%20set%28gi.split%28%22%2C%22%29%29%0A%20%20%20%20%20%20%20%20%20%20%20%20%5D%0A%20%20%20%20%20%20%20%20columns%20%3D%20list%28gene_maps.columns%29%20%2B%20list%28variants.columns%29%0A%20%20%20%20%20%20%20%20return%20pandas.DataFrame.from_records%28data%2C%20columns%3Dcolumns%29%0A%20%20%20%20%20%20%20%20%0A%23filtered_variants%20%3D%20pandas.read_excel%28variants%29%0A%23%27C%3A%5C%5CUsers%5C%5CWellington%5C%5CGoogle%20Drive%5C%5CPhD%5C%5CWorkflows%5C%5CSVI%5C%5CVisTrails%5C%5Coutput%5C%5Cfiltered_variants.xlsx%27%2C%20engine%3D%27xlrd%27%29%0A%23filtered_genemap%20%3D%20pandas.read_excel%28gene_maps%29%0A%23%27C%3A%5C%5CUsers%5C%5CWellington%5C%5CGoogle%20Drive%5C%5CPhD%5C%5CWorkflows%5C%5CSVI%5C%5CVisTrails%5C%5Coutput%5C%5Cfiltered_genemap.xlsx%27%2C%20engine%3D%27xlrd%27%29%0A%23filtered_variants%20%3D%20pandas.read_excel%28sys.argv%5B1%5D%2C%20engine%3D%27xlrd%27%29%0A%23filtered_genemap%20%3D%20pandas.read_excel%28%28sys.argv%5B2%5D%29.strip%28%29%2C%20engine%3D%27xlrd%27%29%0Avar_gene%20%3D%20Var_Gene%28%29%0Ajoined_var_gene%20%3D%20var_gene.join_var_gene%28variants%2C%20gene_maps%29%0Awriter%20%3D%20pandas.ExcelWriter%28%27C%3A%5C%5CUsers%5CWellington%5C%5CDrive%5C%5CPhD%5C%5CWorkflows%5C%5CDiagnosis%5C%5CVisTrails%5C%5Coutput%5C%5Cvariants_gene.xlsx%27%2C%0Aengine%3D%27xlsxwriter%27%29%0Ajoined_var_gene.to_excel%28writer%2C%20sheet_name%3D%27Sheet1%27%29%0Awriter.save%28%29%0Awriter.close%28%29%0A')]).
entity(d51v,[prop(prov:type,['provone:data']),prop(prov:label,'value'),prop(prov:value,'C:\\UsersWellington\\Drive\\PhD\\Workflows\\Diagnosis\\input\\ClinVar\\variant_summary.csv')]).
entity(d61v,[prop(prov:type,['provone:data']),prop(prov:label,'source'),prop(prov:value,'import%20pandas%0A%0Aclass%20Clinvar%3A%0A%0A%20%20%20%20def%20join_clinvar%28self%2C%20clinvar_path%2C%20variants_gene_map%29%3A%0A%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20clinvar_data_frame%20%3D%20pandas.read_csv%28clinvar_path%29%0A%20%20%20%20%20%20%20%20%23variants_gene_map%20%3D%20pandas.read_excel%28variants_gene_map%29%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20%23variants_gene_map%20%3D%20self.join_variants_gene_map%28%29%0A%20%20%20%20%20%20%20%20%23%20%27chr%27%20%2B%20Chromosome%20%2B%20%27_%27%20%2B%20Start%20%3D%3D%20%20%23%20Chromosome%20%2B%20%20%27_%27%20%2B%20Start%0A%20%20%20%20%20%20%20%20%23%20get%20column%20chromosome%20and%20edit%20values%20by%20adding%20%27chr%27%0A%20%20%20%20%20%20%20%20clinvar_data_frame%5B%27Chromosome%27%5D%20%3D%20%27chr%27%20%2B%20clinvar_data_frame%5B%27Chromosome%27%5D%0A%20%20%20%20%20%20%20%20clinvar_data_frame.reset_index%28inplace%3DTrue%29%0A%20%20%20%20%20%20%20%20variants_gene_map.reset_index%28inplace%3DTrue%29%0A%20%20%20%20%20%20%20%20var_gene_clinvar%20%3D%20pandas.merge%28clinvar_data_frame%2C%20variants_gene_map%2C%20left_on%3D%5B%27Chromosome%27%2C%20%27Start%27%5D%2C%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20right_on%3D%5B%27%23%20Chromosome%27%2C%20%27B.Start%27%5D%2C%20how%3D%27right%27%29%0A%20%20%20%20%20%20%20%20return%20var_gene_clinvar%0A%0A%20%20%20%20%20%20%20%20%23clinvar_map%20%3D%20join_clinvar%28sys.argv%5B1%5D%2C%20sys.argv%5B2%5D%29%0A%20%20%20%20%20%20%20%20%23clinvar_path%20%3D%20%27C%3A%5C%5CUsers%5C%5CWellington%5C%5CGoogle%20Drive%5C%5CPhD%5C%5CPapers%5C%5CSemantics-2016%5C%5CSVI%20Workflow%5C%5CClinVar%5C%5Cvariant_summary.csv%27%0A%20%20%20%20%20%20%20%20%23variants_gene_map%20%3D%20%0A%20%20%20%20%20%20%20%20%23clinvar_map%20%3D%20join_clinvar%28clinvar_path%2C%20variants_gene_map%29%0A%0Aclinvar%20%3D%20Clinvar%28%29%20%20%20%20%20%20%20%20%20%20%20%20%0Aclinvar_map%20%3D%20clinvar.join_clinvar%28clinvar_path%2C%20variants_gene_map%29%0Awriter%20%3D%20pandas.ExcelWriter%28%27C%3A%5C%5CUsers%5CWellington%5C%5CDrive%5C%5CPhD%5C%5CWorkflows%5C%5CDiagnosis%5C%5CVisTrails%5C%5Coutput%5C%5Cvariants_gene_clinvar.xlsx%27%2C%20engine%3D%27xlsxwriter%27%29%0Aclinvar_map.to_excel%28writer%2C%20sheet_name%3D%27Sheet1%27%29%0Awriter.save%28%29%0Awriter.close%28%29')]).
entity(d81v,[prop(prov:type,['provone:data']),prop(prov:label,'value'),prop(prov:value,'C:\\Users\\Wellington\\Drive\\PhD\\Workflows\\Diagnosis\\input\\Omim\\genemap2.csv')]).
entity(d91v,[prop(prov:type,['provone:data']),prop(prov:label,'value'),prop(prov:value,'C:\\Users\\Wellington\\Drive\\PhD\\Workflows\\Diagnosis\\input\\Patient Variants\\svi-classification-MUN0785-CV1502-GM160308.csv')]).
entity(d101v,[prop(prov:type,['provone:data']),prop(prov:label,'source'),prop(prov:value,'import%20pandas%0Aimport%20fnmatch%0A%0Aclass%20Clinvar%3A%0A%0A%20%20%20%20def%20classify_clinvar%28self%2C%20var_gene_clinvar%29%3A%0A%20%20%20%20%20%20%20%20values%20%3D%20%27%27%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20clinvar_map%20%3D%20var_gene_clinvar%0A%20%20%20%20%20%20%20%20%23pandas.read_excel%28var_gene_clinvar%29%0A%20%20%20%20%20%20%20%20clinical_significants%20%3D%20clinvar_map%5B%27ClinicalSignificance%27%5D.values%0A%0A%20%20%20%20%20%20%20%20for%20clinical_significant%20in%20clinical_significants%3A%0A%20%20%20%20%20%20%20%20%20%20%20%20if%20str%28fnmatch.filter%28str%28clinical_significant%29.lower%28%29.split%28%27%3B%27%29%2C%20%27%2Apathogenic%2A%27%29%29%20%3D%3D%20%27%5B%5C%27pathogenic%5C%27%5D%27%3A%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20values%20%2B%3D%20%27RED%2C%27%0A%20%20%20%20%20%20%20%20%20%20%20%20elif%20str%28fnmatch.filter%28str%28clinical_significant%29.lower%28%29.split%28%27%3B%27%29%2C%20%27%2Abenign%2A%27%29%29%20%3D%3D%20%27%5B%5C%27benign%5C%27%5D%27%3A%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20values%20%2B%3D%20%27GREEN%2C%27%0A%20%20%20%20%20%20%20%20%20%20%20%20else%3A%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20values%20%2B%3D%20%27AMBER%2C%27%0A%0A%20%20%20%20%20%20%20%20values%20%3D%20values%5B0%3Alen%28values%29%20-%201%5D%0A%20%20%20%20%20%20%20%20clinvar_map%5B%27Class2%27%5D%20%3D%20str%28values%29.split%28%27%2C%27%29%0A%20%20%20%20%20%20%20%20clinvar_map.reset_index%28inplace%3DTrue%29%0A%20%20%20%20%20%20%20%20clinvar_map.set_index%28%27Class2%27%29%0A%20%20%20%20%20%20%20%20clinvar_map%20%3D%20clinvar_map%5B%0A%20%20%20%20%20%20%20%20%20%20%20%20%5B%27ClinicalSignificance%27%2C%20%27Class%27%2C%20%27Class2%27%2C%20%27GeneID_x%27%2C%20%27GeneID_y%27%2C%20%27Entrez%20Gene%20ID%27%2C%20%27Phenotypes%27%2C%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%27Gene%20Symbols%27%2C%20%27Gene.knownGene%27%2C%20%27Chromosome%27%2C%20%27%23%20Chromosome%27%2C%20%27Start%27%2C%20%27B.Start%27%2C%20%27ExonicFunc.knownGene%27%5D%5D%0A%20%20%20%20%20%20%20%20return%20clinvar_map%0A%0Aclinvar%20%3D%20Clinvar%28%29%0Aclinvar_map%20%3D%20clinvar.classify_clinvar%28var_gene_clinvar%29%20%20%0A%20%20%20%20%0Awriter%20%3D%20pandas.ExcelWriter%28%0A%20%20%20%20%27C%3A%5C%5CUsers%5CWellington%5C%5CDrive%5C%5CPhD%5C%5CWorkflows%5C%5CDiagnosis%5C%5CVisTrails%5C%5Coutput%5C%5Cresult.xlsx%27%2C%0A%20%20%20%20engine%3D%27xlsxwriter%27%29%0Aclinvar_map.to_excel%28writer%2C%20sheet_name%3D%27Output%27%29%0Awriter.save%28%29%0Awriter.close%28%29')]).
hasInPort(pg41v,pin571v).
hasOutPort(pg21v,pout561v).
hasInPort(pg41v,pin531v).
hasOutPort(pg31v,pout521v).
hasInPort(pg101v,pin511v).
hasOutPort(pg81v,pout501v).
hasInPort(pg81v,pin451v).
hasOutPort(pg121v,pout441v).
hasInPort(pg81v,pin411v).
hasOutPort(pg41v,pout401v).
hasInPort(pg31v,pin371v).
hasOutPort(pg141v,pout361v).
hasInPort(pg21v,pin211v).
hasOutPort(pg111v,pout201v).
hasOutPort(w1v,pin11v).
hasOutPort(pg21v,pin11v).
hasOutPort(pg31v,pin21v).
hasOutPort(pg41v,pin31v).
hasOutPort(pg81v,pin61v).
hasOutPort(pg101v,pin101v).
hasOutPort(pg111v,pin111v).
hasOutPort(pg121v,pin121v).
hasOutPort(pg141v,pin131v).
hadPlan(ex11v,pg141v).
hadPlan(ex61v,pg121v).
hadPlan(ex31v,pg111v).
hadPlan(ex81v,pg101v).
hadPlan(ex71v,pg81v).
hadPlan(ex51v,pg41v).
hadPlan(ex21v,pg31v).
hadPlan(ex41v,pg21v).
hadPlan(ew11v,w1v).
hadInPort(ex51v,pin571v).
hadOutPort(ex41v,pout561v).
hadInPort(ex51v,pin531v).
hadOutPort(ex21v,pout521v).
hadInPort(ex81v,pin511v).
hadOutPort(ex71v,pout501v).
hadInPort(ex71v,pin451v).
hadOutPort(ex61v,pout441v).
hadInPort(ex71v,pin411v).
hadOutPort(ex51v,pout401v).
hadInPort(ex21v,pin371v).
hadOutPort(ex11v,pout361v).
hadInPort(ex41v,pin211v).
hadOutPort(ex31v,pout201v).
hadOutPort(ew11v,pin131v).
hadOutPort(ex11v,pin131v).
hadOutPort(ex21v,pin21v).
hadOutPort(ex31v,pin111v).
hadOutPort(ex41v,pin11v).
hadOutPort(ex51v,pin31v).
hadOutPort(ex61v,pin121v).
hadOutPort(ex71v,pin61v).
hadOutPort(ex81v,pin101v).
hasDefaultParam(pin131v,d81v).
hasDefaultParam(pin121v,d51v).
hasDefaultParam(pin111v,d91v).
hasDefaultParam(pin101v,d101v).
hasDefaultParam(pin61v,d61v).
hasDefaultParam(pin31v,d41v).
hasDefaultParam(pin21v,d01v).
hasDefaultParam(pin11v,d31v).
hasSubProgram(w1v,pg141v).
hasSubProgram(w1v,pg121v).
hasSubProgram(w1v,pg111v).
hasSubProgram(w1v,pg101v).
hasSubProgram(w1v,pg81v).
hasSubProgram(w1v,pg41v).
hasSubProgram(w1v,pg31v).
hasSubProgram(w1v,pg21v).
used(ew11v,d81v).
used(ex11v,d81v).
used(ex21v,d01v).
used(ex31v,d91v).
used(ex41v,d31v).
used(ex51v,d41v).
used(ex61v,d51v).
used(ex71v,d61v).
used(ex81v,d101v).
wasPartOf(ex81v,ew11v).
wasPartOf(ex71v,ew11v).
wasPartOf(ex61v,ew11v).
wasPartOf(ex51v,ew11v).
wasPartOf(ex41v,ew11v).
wasPartOf(ex31v,ew11v).
wasPartOf(ex21v,ew11v).
wasPartOf(ex11v,ew11v).
wasAssociatedWith(ew11v,u11v).
wasInformedBy(ex41v,ex31v).
wasInformedBy(ex21v,ex11v).
wasInformedBy(ex71v,ex51v).
wasInformedBy(ex71v,ex61v).
wasInformedBy(ex81v,ex71v).
wasInformedBy(ex51v,ex21v).
wasInformedBy(ex51v,ex41v).
agent(u11v,[prop(prov:type,['provone:user']),prop(prov:label,'wellmor')]).

%wasDerivedFrom by inference
%gerou(ew11v).
% gerou(WEx) :-
% wasGeneratedBy(DataId,ExId),wasPartOf(ExId,WEx),print('wasGeneratedBy('),print(DataId),
% print(','),print(ExId), print(')').

%============================================================================================================================================

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
	distinct(trace(PGName, WkfName, WExName, OutputId, InputId)).
	%setof(InputId,OutputId^trace(PGName, WkfName, WExName, OutputId, InputId), InputId).

trace(PGName, WkfName, WExName, OutputId, InputId) :-
	dataSet(PGId, PGName),
	hasDataSet(WkfId, PGId),
	activity(WExId,[prop(prov:type,['provone:execution']),prop(prov:label, WExName),_,_,_]),
	entity(WkfId,[prop(prov:type,ETypes),prop(prov:label,WkfName)]),
	member('provone:workflow', ETypes),
	hadPlan(WExId,WkfId),
	wasPartOf(ExId, WExId),
	wasGeneratedBy(OutputId, ExId),
	dataFlow(OutputId, InputId).

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

