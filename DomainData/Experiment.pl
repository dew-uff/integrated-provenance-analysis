% cworkflow(wkfid, tag).
cworkflow(13, 'SciPhy').
cworkflow(14, 'SciEvol').

% eworkflow(ewkfid, tag, tagexec).
eworkflow(36, 'SciPhy', 'SciPhy_1').
eworkflow(37, 'SciPhy', 'SciPhy_2').
eworkflow(38, 'SciEvol', 'SciEvol_1').
eworkflow(39, 'SciEvol', 'SciEvol_2').

% cactivity(actid, wkfid, tag).
cactivity(525, 13, 'act1').
cactivity(526, 13, 'act2').
cactivity(527, 14, 'act1').
cactivity(528, 14, 'act2').

% cfield(fname, relid, ftype)
cfield('name', 1, 'String').
cfield('description', 2, 'String').
cfield('size', 3, 'Integer').
cfield('index', 4, 'Integer').

%crelation(relid, actid, rtype, rname).
crelation(1, 525,'input', 'idataselection').
crelation(2, 525,'input', 'imafft').
crelation(3, 527,'input', 'ireadseq').
crelation(4, 528,'input', 'iraxml').

% eactivity(actid, wkfid, cactid, tag, status).
eactivity(132, 36, 525, act1, 'running').
eactivity(133, 37, 526, act2, 'running').
eactivity(134, 38, 527, act1, 'finished').
eactivity(135, 39, 528, act2, 'finished').

% eactivation (taskid, actid, status, duration).
eactivation(89, 132, running,  4).
eactivation(90, 132, running,  3).
eactivation(91, 132, running,  1).
eactivation(92, 132, running,  2).
eactivation(93, 133, finished, 30).
eactivation(94, 133, finished, 21).
eactivation(95, 133, finished, 2).
eactivation(96, 133, finished, 8).

% echangefile ( cfid, taskid, filename, path, changetype).
echangefile( 26, 89, 'ORTHOMCL1000.fastanumbered_cut', '/root/data_SciPhy/mafft/1/data', create).
echangefile( 27, 90, 'ORTHOMCL1000.mafft_cut', '/root/data_SciPhy/mafft/1/data', change).
echangefile( 28, 91, 'ORTHOMCL1000.mafft', '/root/data_SciPhy/mafft/1/data', change).
echangefile( 29, 92, 'ORTHOMCL1000.fastanumbered', '/root/data_SciPhy/mafft/1/data', delete).


% ecommit(hash, cfid, cmtime, moment).
ecommit('017e1f779b2571b9f63a9f59753f3a8d05dc59d8', 26, '2014-02-09 11:25:05.52', activityend).
ecommit('d2767ebf31ab136d6a55ca294a2e873e7c04323e', 27, '2014-09-09 11:25:05.58', activityend).
ecommit('f280f6567ca717b402fef94ebf0d2d59e1eb9b67', 28, '2014-09-09 11:25:05.59', activityend).
ecommit('1f03a4a300aadfa99bb1368c286bc15de2d1633b', 29, '2014-09-09 11:25:06.32', activityend).

%iparam(inid, taskid, tag, value).

%oparam(outid, inid, taskid, tag, value).

%imod(ik, ewkfid, eactid, taskid, path, file, idseq).
imod(1, 36, 132, 89, '/root/SciPhy/fasta1', 'fasta1', 'A00145').
imod(2, 36, 132, 90, '/root/SciPhy/fasta2', 'fasta2', 'A00144').
imod(3, 36, 132, 91, '/root/SciPhy/fasta3', 'fasta3', 'A00143').
imod(4, 36, 133, 96, '/root/SciPhy/fasta4', 'fasta4', 'A00142').

%omod(ok, ik, ewkfid, eactid, taskid, path, file).
omod(1, 1, 36, 132, 89, '/root/SciPhy/fasta2', 'fasta2').
omod(2, 2, 36, 132, 90, '/root/SciPhy/fasta3', 'fasta3').
omod(3, 3, 36, 132, 91, '/root/SciPhy/fasta4', 'fasta4').

%tree(trid, bootstrap).
tree(1,86).
tree(2,72).
tree(3,83).

%treeSeq(trid, idseq).
treeSeq(1,'A00145').
treeSeq(2,'A00144').
treeSeq(3,'A00143').
treeSeq(4,'A00142').

