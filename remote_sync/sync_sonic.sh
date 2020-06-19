#!/usr/bin/env bash

cd /Users/ashishsingh/PycharmProjects/sonic_testing/remote_sync/
rsync -avzhe 'ssh -J 19205522@resit-ssh.ucd.ie' --exclude-from 'ignore_files.txt' /Users/ashishsingh/PycharmProjects/sonic_testing/  19205522@login.ucd.ie:/home/people/19205522/Research/Codes/sonic_testing/


#rsync -avzhe 'ssh -J 19205522@resit-ssh.ucd.ie' /Users/ashishsingh/Results/Datasets/HPE/TrainTestData_70_30  19205522@login.ucd.ie:/home/people/19205522/scratch/Results/Datasets/HPE/

#rsync -avzhe 'ssh -J 19205522@resit-ssh.ucd.ie' --exclude-from 'ignore_files.txt' /Users/ashishsingh/PycharmProjects/sonic_testing/  19205522@login.ucd.ie:/home/people/19205522/Research/Codes/sonic_testing/


#rsync -avzhe 'ssh -J 19205522@resit-ssh.ucd.ie' /Users/ashishsingh/Downloads/temp/  19205522@login.ucd.ie:/home/people/19205522/scratch/temp/