use ExtUtils::MakeMaker;

use 5.006000;

WriteMakefile(
    dist	=> {
	            PREOP	=> 'pod2text Heap.pm | tee README >$(DISTVNAME)/README; chmod -R u=rwX,go=rX . ;',
	            COMPRESS	=> 'gzip -9v',
	            SUFFIX	=> '.gz',
	           },
    NAME => "Array::Heap",
    VERSION_FROM => "Heap.pm",
);

