Sub AudioButton
Dim size As New com.sun.star.awt.Size

	picker = createUnoService("com.sun.star.ui.dialogs.FilePicker")
	picker.AppendFilter("Common audio formats (*.wav, *.mp3, *.flac, *.aiff, *.aac)", "*.wav; *.mp3; *.flac; *.aiff; *.aac")
	picker.AppendFilter("All files", "*")
	if picker.execute() then
    	sound_path = convertFromURL(picker.SelectedFiles(0))
    	sound_path = ConvertToURL(sound_path)
	end if
    
    doc = ThisComponent
    slide = doc.CurrentController.CurrentPage
  
    shape = doc.createInstance("com.sun.star.drawing.RectangleShape")
    slide.add(shape)

    size.Width = 1000
    size.Height = 1000
    shape.setSize(size)
    
    with shape
    
    	.FillColor = RGB(199, 199, 200)
    	.LineStyle = com.sun.star.drawing.FillStyle.SOLID
    	.LineColor = RGB(255, 255, 255)
    
	  	.setString("♫")
	  	.CharHeight = 24
	  	
	  	.setPropertyValue("CornerRadius", 300)
	  	
	  	.OnClick = com.sun.star.presentation.ClickAction.SOUND
	  	.bookmark = sound_path
	  	.Sound = sound_path
	  	
  	end with
  
End Sub
