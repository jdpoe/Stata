clear all
version 15
set more off, perm	
macro drop all
********************************************************************************
*File Name:		directory.do
*Date:   		September 11, 2016 - last modified October 17, 2018
*Purpose: 		This do file creates a common project file directory
********************************************************************************
	****************************************************************************
	* For this directory to work you must:
	***	Set the root directory where you want the project to land
	***	name the project
	****************************************************************************
		local ROOT "C:\Dropbox\@@@ Research @@@\@ Directory @\"
		cd "`ROOT'"
		local projectname test
	****************************************************************************
	* The following commands create the directory
	* Once the files are generated you will need to: 
	***	rename your project draft
	***	fill out your analysis plan
	*** read the notes in the do files
	*** finish filling out the do file headers
	****************************************************************************
		mkdir `projectname'
		mkdir `projectname'\DO
			file open CLEAN using `projectname'\DO\clean.do, write
			file open DIAG using `projectname'\DO\diag.do, write
			file open ANALYSIS using `projectname'\DO\analysis.do, write
			file open OUTPUT using `projectname'\DO\output.do, write
		mkdir `projectname'\Admin
			file open PLAN using "`projectname'\Admin\analysis_plan.docx", write
			mkdir `projectname'\Admin\Logs
				file open TODO using "`projectname'\Admin\ToDo.docx", write
		mkdir `projectname'\Documentation
		mkdir `projectname'\Writing
			file open WRITING using "`projectname'\Writing\project_draft_v01.docx", write
		mkdir `projectname'\Work
			mkdir `projectname'\Work\Analysis
				mkdir `projectname'\Work\Analysis\Graphs
				mkdir `projectname'\Work\Analysis\Tables
				mkdir `projectname'\Work\Analysis\Estimates
				mkdir `projectname'\Work\Analysis\Diagnostics
				mkdir `projectname'\Work\Analysis\Trash
			mkdir `projectname'\Work\Cleaning
			mkdir `projectname'\Work\Datasets
				mkdir `projectname'\Work\Datasets\Origional-Raw
				mkdir `projectname'\Work\Datasets\In-Progress
				mkdir `projectname'\Work\Datasets\Cleaned
			mkdir `projectname'\Work\Output
				mkdir `projectname'\Work\Output\project_draft_v01
	
	****************************************************************************
	*	The following section builds headers for the do files 
	***	clean -- take the raw data and convert it to an analytic file 
	***	diag -- All project specific diagnostics 
	***	analysis -- All project specific analysis
	***	output	-- All project specific output for a given draft of a paper
	****************************************************************************
	
		file write DIAG "clear all" 																			_n
		file write DIAG "version 15" 																			_n
		file write DIAG "set more off, perm" 																	_n
		file write DIAG "macro drop all" 																		_n
		file write DIAG "set scheme sj"  																		_n
		file write DIAG "quietly capture log close"  															_n
		file write DIAG "cd `ROOT'"																				_n
		file write DIAG "quietly log using `projectname'\Admin\Logs\.smcl, replace"  							_n					
		file write DIAG "set linesize 200"  																	_n
		file write DIAG "*******************************************************************"  					_n
		file write DIAG "*File Name:		diag.do"  															_n
		file write DIAG "*Date:"  																				_n
		file write DIAG "*Author:" 		 																		_n
		file write DIAG "*To do:" 																				_n
		file write DIAG "*******************************************************************"  					_n
		file write DIAG " ******************************************************************************* "		_n
		file write DIAG " *** Set the Log File Name "															_n
		file write DIAG " *** save all files to `projectname'\Work\Analysis\Diagnostics\ "						_n
		file write DIAG " *** add quotes around cd command if there are spaces"									_n
		file write DIAG " ******************************************************************************* "		_n
		
		
		file close DIAG
		
		
		file write CLEAN "clear all" 																			_n
		file write CLEAN "version 15" 																			_n
		file write CLEAN "set more off, perm" 																	_n
		file write CLEAN "macro drop all" 																		_n
		file write CLEAN "set scheme sj"  																		_n
		file write CLEAN "quietly capture log close"  															_n
		file write CLEAN "cd `ROOT'"																			_n
		file write CLEAN "quietly log using `projectname'\Admin\Logs\.smcl, replace"  							_n					
		file write CLEAN "set linesize 200"  																	_n
		file write CLEAN "*******************************************************************"  				_n
		file write CLEAN "*File Name:		clean.do"  															_n
		file write CLEAN "*Date:"  																				_n
		file write CLEAN "*Author:" 		 																	_n
		file write CLEAN "*To do:" 																				_n
		file write CLEAN "*******************************************************************"  				_n
		file write CLEAN " ******************************************************************************* "	_n
		file write CLEAN " *** Set the Log File Name "															_n
		file write CLEAN " *** save all files to `projectname'\Work\cleaning\ "									_n
		file write CLEAN " *** add quotes around cd command if there are spaces"								_n
		file write CLEAN " ******************************************************************************* "	_n
		
		
		file close CLEAN
		
		file write ANALYSIS "clear all" 																			_n
		file write ANALYSIS "version 15" 																			_n
		file write ANALYSIS "set more off, perm" 																	_n
		file write ANALYSIS "macro drop all" 																		_n
		file write ANALYSIS "set scheme sj"  																		_n
		file write ANALYSIS "quietly capture log close"  															_n
		file write ANALYSIS "cd `ROOT'"																				_n
		file write ANALYSIS "quietly log using `projectname'\Admin\Logs\.smcl, replace"  							_n					
		file write ANALYSIS "set linesize 200"  																	_n
		file write ANALYSIS "*******************************************************************"  					_n
		file write ANALYSIS "*File Name:		analysis.do"  														_n
		file write ANALYSIS "*Date:"  																				_n
		file write ANALYSIS "*Author:" 		 																		_n
		file write ANALYSIS "*To do:" 																				_n
		file write ANALYSIS "*******************************************************************"  					_n
		file write ANALYSIS " ******************************************************************************* "		_n
		file write ANALYSIS " *** Set the Log File Name "															_n
		file write ANALYSIS " *** save all files to `projectname'\Work\Analysis\ "									_n
		file write ANALYSIS " *** add quotes around cd command if there are spaces"									_n
		file write ANALYSIS " ******************************************************************************* "		_n
		
		
		file close ANALYSIS
		
		file write OUTPUT "clear all" 																			_n
		file write OUTPUT "version 15" 																			_n
		file write OUTPUT "set more off, perm" 																	_n
		file write OUTPUT "macro drop all" 																		_n
		file write OUTPUT "set scheme sj"  																		_n
		file write OUTPUT "quietly capture log close"  															_n
		file write OUTPUT "cd `ROOT'"																			_n
		file write OUTPUT "quietly log using `projectname'\Admin\Logs\.smcl, replace"  							_n					
		file write OUTPUT "set linesize 200"  																	_n
		file write OUTPUT "*******************************************************************"  				_n
		file write OUTPUT "*File Name:		output.do"  														_n
		file write OUTPUT "*Date:"  																			_n
		file write OUTPUT "*Author:" 		 																	_n
		file write OUTPUT "*To do:" 																			_n
		file write OUTPUT "*******************************************************************"  				_n
		file write OUTPUT " ******************************************************************************* "	_n
		file write OUTPUT " *** Set the Log File Name "															_n
		file write OUTPUT " *** save all files to `projectname'\Work\Output\ "									_n
		file write OUTPUT " *** add quotes around cd command if there are spaces"								_n
		file write OUTPUT " ******************************************************************************* "	_n
		
		
		file close OUTPUT
		