# Course Site Scaffold

For Mikael Vejdemo-Johansson's course websites at CUNY.

This scaffold will automatically

1. Link slides to their own source code.
2. Make a clean looking semester schedule.

## Things to do before using the site

1. Edit `Makefile` and insert the correct course slug under `COURSECODE`.
2. Edit `_quarto.yml` and add course name etc.
3. Edit `learning.qmd` and add learning goals etc.
4. Edit `index.qmd` and create welcome text.
5. Edit `schedule.yml` and add the schedule of the course.
6. Write lecture slides in the `lectures/L\d\d.qmd` files. See `lectures/L01.qmd` for front matter and import.