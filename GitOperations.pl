#! /usr/bin/perl	

###################### Developed By Zubair Asghar #################
###################### Dated : 20 August, 2015    #################


##################### Declarations ################################

my $git_version = 0;

##################################################################

#################### Sub Routines ################################
sub printOutput{
		my $result = shift;
		print "\t\t$result";

}




##################################################################



#################### MAIN ########################################
sleep(1);
print `clear`;
print "\n\n\n";
print "\t\t#################   Git Operation Starts ##################\n\n\n\n";

$git_version = `git --version`;
printOutput("GIT_VERSION \t\t\t".$git_version);
printOutput("GIT_PATH IS \t\t\t".$ARGV[0]."\n");
printOutput("GIT_COMMIT_MESSAGE \t\t".$ARGV[1]."\n");
printOutput("GIT_ORIGIN \t\t\t".$ARGV[2]."\n");
print "\n\n";




my $gitInitResult = `git init  $ARGV[0]`;
printOutput("Executing Git Init: $gitInitResult  \n");

my $gitAddResult = `git add .`;
printOutput("Executed  Git Add: $gitAddResult \n");

my $gitCommitResult = `git commit -m "sfsdfds"`;
printOutput("Executed Git Commit: \n");


my $gitAddOriginResult = `git remote add origin $ARGV[2]`; 
printOutput("Executed Git Origin Addition \n");


my $gitPushResult = `git push -u origin master`;
printOutput("Executed Git Push To Origin ");




print "\n\n\n\t\t##################### END  ################################\n"; 

