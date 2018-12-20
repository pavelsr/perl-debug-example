.PHONY: cpanfile fastprof nytprof

modules:
	cpanm --installdeps .

cpanfile:
	# echo "requires 'IO::Socket::SSL';" > cpanfile		# https support
	scan-prereqs-cpanfile --ignore=script --diff=cpanfile > cpanfile
	
fastprof:
	perl -d:FastProf start.pl
	fprofpp
	
nytprof:
	# export NYTPROF=trace=2:slowops=0 
	# export NYTPROF=start=init:stmts=0:slowops=0
	export NYTPROF=trace=1:start=init:slowops=0 && perl -d:NYTProf start.pl
	nytprofhtml --open
	dot -Tpng nytprof/packages-callgraph.dot > nytprof/packages-callgraph.png
	dot -Tpng nytprof/subs-callgraph.dot > nytprof/subs-callgraph.dot 
	eog nytprof/packages-callgraph.png
	eog nytprof/subs-callgraph.png
	
ltrace:	
	perl -MDebug::LTrace='*' start.pl
	
tracecalls:
	perl -d:TraceCalls=sub1 start.pl

calltrace:
	perl -d:CallTrace start.pl
	
dumptrace:
	perl -d:DumpTrace start.pl