

{.push header: "BoundsChecking".}


# Constructors and methods
proc clampGEQUAL*[T](this: var osg, value: var T, minValue: T, valueName: cstring)  {.importcpp: "clampGEQUAL".}
    ## If value is greater than or equal to minValue do nothing - legal
    ## value, Otherwise set value to minValue, and warn that valueName was
    ## clamped. Note this is effectively A=max(A,B).

proc clampLEQUAL*[T](this: var osg, value: var T, maxValue: T, valueName: cstring)  {.importcpp: "clampLEQUAL".}
    ## If value is less than or equal to maxValue do nothing - legal value,
    ## Otherwise set value to maxValue, and warn that valueName was clamped.
    ## Note this is effectively A=min(A,B).

proc clampBetweenRange*[T](this: var osg, value: var T, minValue: T, maxValue: T, valueName: cstring)  {.importcpp: "clampBetweenRange".}
    ## If value is between or equal to minValue and maxValue do nothing -
    ## legal value, Otherwise clamp value to specified range and warn that
    ## valueName was clamped. Equivalent to calling clampGEQUAL( value,
    ## minValue, valueName ); clampLEQUAL( value, maxValue, valueName );

proc clampArrayElementGEQUAL*[A;T](this: var osg, value: var A, i: cuint, minValue: T, valueName: cstring)  {.importcpp: "clampArrayElementGEQUAL".}
    ## If value[i] is greater than or equal to minValue do nothing - legal
    ## value, Otherwise set value[i] to minValue, and warn that valueName[i]
    ## was clamped. Note this is effectively A[i]=max(A[i],B).

proc clampArrayElementLEQUAL*[A;T](this: var osg, value: var A, i: cuint, maxValue: T, valueName: cstring)  {.importcpp: "clampArrayElementLEQUAL".}
    ## If value[i] is less than or equal to maxValue do nothing - legal
    ## value, Otherwise set value[i] to maxValue, and warn that valueName[i]
    ## was clamped. Note this is effectively A[i]=min(A[i],B).

proc clampArrayElementBetweenRange*[A;T](this: var osg, value: var A, i: cuint, minValue: T, maxValue: T, valueName: cstring)  {.importcpp: "clampArrayElementBetweenRange".}
    ## If value[i] is between or equal to minValue and maxValue do nothing -
    ## legal value, Otherwise clamp value[i] to specified range and warn that
    ## valueName[i] was clamped. Equivalent to calling
    ## clampArrayElementGEQUAL( value, i, minValue, valueName );
    ## clampArrayElementLEQUAL( value, i, maxValue, valueName );

proc clampArrayElementsGEQUAL*[A;T](this: var osg, value: var A, first: cuint, last: cuint, minValue: T, valueName: cstring)  {.importcpp: "clampArrayElementsGEQUAL".}
    ## For each element of value[] in the range (first,last), if the element
    ## is greater than or equal to minValue do nothing - legal value,
    ## Otherwise clamp the element to minValue, and warn that valueName[i]
    ## was clamped.

proc clampArrayElementsLEQUAL*[A;T](this: var osg, value: var A, first: cuint, last: cuint, maxValue: T, valueName: cstring)  {.importcpp: "clampArrayElementsLEQUAL".}
    ## For each element of value[] in the range (first,last), if the element
    ## is less than or equal to maxValue do nothing - legal value, Otherwise
    ## clamp the element to maxValue, and warn that valueName[i] was clamped.

proc clampArrayElementsBetweenRange*[A;T](this: var osg, value: var A, first: cuint, last: cuint, minValue: T, maxValue: T, valueName: cstring)  {.importcpp: "clampArrayElementsBetweenRange".}
    ## For each element of value[] in the range (first,last), if the element
    ## is between or equal to minValue and maxValue do nothing - legal value,
    ## Otherwise clamp the element to the range and warn that valueName[i]
    ## was clamped. Equivalent to calling clampArrayElementsGEQUAL( value,
    ## first, last, minValue, valueName); clampArrayElementsLEQUAL( value,
    ## first, last, maxValue, valueName);

proc clampArray3GEQUAL*[A;T](this: var osg, value: var A, minValue: T, valueName: cstring)  {.importcpp: "clampArray3GEQUAL".}
    ## For each element of the three-element array value[], if the element is
    ## greater than or equal to minValue do nothing - legal value, Otherwise
    ## clamp the element to minValue, and warn that valueName[i] was clamped.

proc clampArray3LEQUAL*[A;T](this: var osg, value: var A, maxValue: T, valueName: cstring)  {.importcpp: "clampArray3LEQUAL".}
    ## For each element of the three-element array value[], if the element is
    ## less than or equal to maxValue do nothing - legal value, Otherwise
    ## clamp the element to maxValue, and warn that valueName[i] was clamped.

proc clampArray3BetweenRange*[A;T](this: var osg, value: var A, minValue: T, maxValue: T, valueName: cstring)  {.importcpp: "clampArray3BetweenRange".}
    ## For each element of the three-element array value[], if the element is
    ## between or equal to minValue and maxValue do nothing - legal value,
    ## Otherwise clamp the element to the range and warn that valueName[i]
    ## was clamped. Equivalent to calling clampArray3GEQUAL( value, minValue,
    ## valueName); clampArray3LEQUAL( value, maxValue, valueName);

proc clampArray4GEQUAL*[A;T](this: var osg, value: var A, minValue: T, valueName: cstring)  {.importcpp: "clampArray4GEQUAL".}
    ## For each element of the four-element array value[], if the element is
    ## greater than or equal to minValue do nothing - legal value, Otherwise
    ## clamp the element to minValue, and warn that valueName[i] was clamped.

proc clampArray4LEQUAL*[A;T](this: var osg, value: var A, maxValue: T, valueName: cstring)  {.importcpp: "clampArray4LEQUAL".}
    ## For each element of the four-element array value[], if the element is
    ## less than or equal to maxValue do nothing - legal value, Otherwise
    ## clamp the element to maxValue, and warn that valueName[i] was clamped.

proc clampArray4BetweenRange*[A;T](this: var osg, value: var A, minValue: T, maxValue: T, valueName: cstring)  {.importcpp: "clampArray4BetweenRange".}
    ## For each element of the four-element array value[], if the element is
    ## between or equal to minValue and maxValue do nothing - legal value,
    ## Otherwise clamp the element to the range and warn that valueName[i]
    ## was clamped. Equivalent to calling clampArray4GEQUAL( value, minValue,
    ## valueName); clampArray4LEQUAL( value, maxValue, valueName);

{.pop.} # header: "BoundsChecking
