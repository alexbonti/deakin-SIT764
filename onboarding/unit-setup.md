# SIT782-Project-Delivery OnTrack Documentation

## Things to note:

You could safely perform the unit administration in this order.

## Announcements

1. Make Weekly Announcements, starting from Week 0. Feel free to edit the announcements in `./communications/to-students`.

2. Ensure that in Week 1, you announce:
    * the link to the 365 group for project briefs 
    * the link to the office forms survey where students submit their project preferences
    * the link to OnTrack

3. **Ideally** announce what students need to deliver for the week.

## OnTrack Administration

To support project teams in OnTrack, you'll need to use both the tutorial and team mechanisms. Most of the steps listed here happen in the Unit Administration section.

1. Under `Groups` in the `Unit Administration`, create a Group Set called `Teamwork`, with the params: `Create Groups: Staff Only`, `Manage Groups: Staff Only`, `Restrict to Tutorials: Any Tutorial`.

2. In `Tutorials`, create a tutorial named `Team1`.

3. In `Groups`, create a group called `Team 1` and assign that group to the `Team1` tutorial. Rinse and repeat for Team _n_. I

4. Create **at least one** tutorial and group first, otherwise you can't configure a task as a Teamwork-type task.

5. Go to Callista and download the class list for the relevant trimester and year as a `.csv`. Do not change the schema of this file or the batch upload will not work.

6. In the `Student` tab, drag the `*.csv` class list to the batch import section and start the upload, this should safely upload the students.

## Task Administration

1. Set up the 365 group to be **read only** for group members, ensure **Andrew Cain and your SIT764 Unit Chair** are listed as **Owners** as well. Name this group: `SIT782-t(trimester number)-YYYY`.

2. Create 2 folders in `Documents`, name one folder `Project Briefs`, and the other folder `Document Templates`. 

3. Convert all project proposals/briefs to `.pdf` and upload them to the `Project Briefs` folder.

4. Upload all `.dotx` document templates (this is the repository under `./tasks/templates/*.dotx`) to the `Document Templates` folder.

5. Do a folder search of `/tasks` to update all URLs to the newly generated URLs.

6. Generate the pdf files for the tasks (if there are any changes) by using the build script in the `/tools` folder.

7. Archive **only** the **pdf** files.

8. Drag the csv file to generate all the tasks and deadlines, **remember to add leeway for the trimester break.**

9. Check each task and manually change the relevant tasks to Teamwork tasks where appropriate.

10. Drag the archive file of task pdfs to the relevant place to upload. As long as the task prefixes are in reconcilable, you **should** be okay.


## Staff Administration

1. Once you have sorted out your academic supervisors, go to the `Staff`, add them AND your practical demonstrator/tutor as `Tutors`.

2. Ensure both you and `Andrew Cain` are Convenors.

3. Assign your academic supervisors to teams accordingly once you have set up the students in teams.
