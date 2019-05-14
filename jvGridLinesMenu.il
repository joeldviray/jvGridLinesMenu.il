procedure(jvGridLinesMenu()

grid_choices = hiCreateRadioField(
	?name 'grid_choices
	?prompt "Grid Spacing"
	?value "0.01x0.01"
	?choices list("0.001x0.001" "0.01x0.01" "0.1x0.1" "Custom")
	?itemsPerRow 4
	;?callback `("jvInsertPolySecondLeft()" "jvRemovePolySecondLeft()" "option3()")

)

jvFormGridLines=hiCreateAppForm(?name gensym('jvFormGridLines)
	?formTitle "Grid Lines"
	?fields list(grid_choices)
	;?buttonLayout `OKCancelApply
	?initialSize list(280 1000)
)
hiDisplayForm(jvFormGridLines)



);procedure
