#!/bin/bash

dad_years_old=$1
son_years_old=$2
years_passed=0

if [ $(( $son_years_old * 2 )) -eq $dad_years_old ]; then
    echo "0"
    exit
elif [ $(( $son_years_old * 2 )) -lt $dad_years_old ]; then
    while [ $(( $son_years_old * 2 )) -lt $dad_years_old ]; do
        ((son_years_old++))
        ((dad_years_old++))
        ((years_passed++))
    done
    echo $years_passed
else
    while [ $(( $son_years_old * 2 )) -gt $dad_years_old ]; do
        ((son_years_old--))
        ((dad_years_old--))
        ((years_passed++))
    done
    echo $years_passed
fi

############################### Smarter solution #######################

# Problem can be represented geometrically as 2 straight lines
# where the x axis is years, the y axis is age.

# Line1 is father's age with a slope of one. Y intercept is dad's age
# Equation1: y1 = x + dad_years_old  

# Line2 is son's age doubled - a slope of 2. Y intercept is son's age * 2
# Equation2: y2 = 2(x + son_years_old)

# The x coordinate of the intersection of the two lines 
# is the desired solution.  The point where y1 = y2.  Or, where...
# Equation3: x + dad_years_old = 2(x + son_years_old)

# Solving Equation3 for x: 
#    x - 2x = 2(son_years_old) - dad_years_old
#   -x = 2(son_years_old) - dad_years_old
#    x = dad_years_old - 2(son_years_old)

x=$(( dad_years_old - 2 * son_years_old ))

# kata requires a positive integer result so we will remove the
# leading (-) sign, if it exists...
echo "${x//-}"
exit

