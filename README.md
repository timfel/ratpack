RatPack [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-01.svg)](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-01)
========================
RatPack is a simplistic implementation of the Sinatra concept on top
of KomHttpServer for Squeak Smalltalk.

For licensing, see the file COPYRIGHT


========================
General workflow to:
setup image:
	1. download Image from SWA materials
	2. clone git repository
	3. +Package RatPack
		3.1 +Repository
		3.1.1 filetree:\\
		3.1.2 navigate to "name"/packages
	4. load baseline
			Metacello new
				baseline: 'RatPack';
				repository: 'github://HPI-SWA-Teaching/SWT15-Project-01:master/packages';
				onConflict: [:ex | ex allow];
			load
			
	
commit changes:
	1. monticello
		1.1 select RatPack
		1.2 save to filetree (git is read only)
		1.3 change logmessage & accept
	2. git
		1.1 select files to commit
		1.2 change commit message & commit
		1.3 push
	
pull changes:
	1. git 
		1. pull
	2. monticello
		2.1 open filetree
		2.2 load
========================