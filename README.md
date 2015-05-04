RatPack [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-01.svg)](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-01)
========================
RatPack is a simplistic implementation of the Sinatra concept on top
of KomHttpServer for Squeak Smalltalk.

For licensing, see the file COPYRIGHT


##General workflow to:
###setup image:
	1. Download Image from SWA materials
	2. Clone git repository
	3. Load Baseline / In workspace run:
			Metacello new
				baseline: 'project-name(e.g. 'RatPack';
				repository: 'github://HPI-SWA-Teaching/project-name(e.g. SWT15-Project-01:master/packages';
				onConflict: [:ex | ex allow];
				load
	4. In squeak image open Apps > Monticello Browser
		4.1 +Repository
		4.1.1 filetree://
		4.1.2 navigate & select "name"/packages
		4.2 open filetree//... and load project(e.g. RatPack)
	
	
###commit changes:
	1. Monticello browser
		1.1 select project(e.g. RatPack)
		1.2 save to filetree (git is read only)
		1.3 change logmessage & accept
	2. git
		1.1 select files to commit
		1.2 change commit message & commit
		1.3 push
	
###pull changes:
	1. git 
		1. pull
	2. monticello
		2.1 open filetree & select project(e.g. RatPack)
		2.2 load

###setup test-runner:
	1. In squeak image open Apps > Test Auto Runner 
		1.1 select all project-files
		1.2 select testing-class(e.g. RatPack-Testing)
		1.3 add
