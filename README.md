# Setting-up-a-large-number-of-jobs
These are the various scripts I have used when setting up a large number of jobs.

This script is specifically written for altering initial VASP files. 

Initial files: INCAR, KPOINTS, POSCAR, POTCAR, and job_submit_script files. For noncollinear calculations I also have a few python scripts that are needed to updated the MAGMOM line in the INCAR file and extract data. Those can be found under the Python respository.

1. Start by creating a parent folder. 
2. In that parent folder create a 'files' directory that houses all the initial files. 
3. The mkdir_editfiles_submitjobs*.sh scripts should be in the parent file.
4. I have my changename script under the Misc. repository.
5. To run this script type ./filename (i.e., ./mkdir_editfiles_submitjobs_4.sh)

Do not forget to make your shell script executable. I typically use chmod u+x filename, but google whether that is the best option for you.


