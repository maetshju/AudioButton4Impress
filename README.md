# AudioButton4Impress

A simple macro in LibreOffice BASIC to insert a button that plays audio when clicked in Impress. This macro is a workaround to play audio files at will in an Impres presentation (such as playing speech sounds in a phonetics class).

The macro will:

1. ask you to select an audio file with the file picker
2. create a rounded rectangle
3. add the 〈♫〉 symbol as its text
4. link the audio file to the rectangle and play when clicked during a presentation

## Installation

Download the `impress_audio_button.bas` file by whatever means you like (e.g., cloning the repo, clicking on it and downloading from the "Raw" view, copying and pasting into a file you save with the same name, etc.).

### Importing the macro

In LibreOffice Impress, go to "Tools > Macros > Edit Macros...".

[!Tool menu](imgs/tool_menu.png)

In the dialog that appears, go to "File > Import BASIC...".

[!Import menu](imgs/import.png)

Choose the `.bas` file that you downloaded earlier. You will now have the text of the macro loaded in. Save the macro, and close the window.

### Adding the macro to the toolbar

Click on "Tools > Customize..." in the main Impress window.

[!Customize menu](imgs/customize.png)

1. In the left-hand column of menu items, select the "Macros" category.
2. Search for "Audio" in the search bar and click on the "AudioButton" result that appears.
3. In the right-hand column of menu items, select the "Insert" option in the "Target" dropdown.
4. Click on the ">" button in the middle of the window to add the macro to the "Insert" menu.
5. Optional: You can scroll down to the bottom of the items in the right-hand side and then drag the "AudioButton" option to where you would like for it to appear in the menu.
6. Optional: You can click "Modify > Rename..." to change the name the macro shows up as. I like "Audio Button..." to match the conventions of the menu.

[!Adding the macro to the "Insert" menu.](imgs/insert_macro)

You can, of course, add the macro to other menus if you would like by choosing a different menu in step 4.

## Using the macro

You can use the macro by clicking on it in the "Insert" menu. You will be prompted to choose a file, and then a gray rectangle will appear in the upper-left corner.

[!Button example](imgs/button.png)

Drag this button wherever you like. You can change the text, size, color, etc. as desired since it is just a regular shape object.

## Interacting with the audio button

To play the sound, start a presentation. Then, when you left-click on the sound, it will play. If you need to stop the sound early, advance to the next slide.

To change the sound, right click on the button and choose the "Interaction..." menu. In the 
"Audio" section, use the "Browse" button to choose a new file or type the filename into the textbox.

## Caveats

Since this macro is a workaround, there are some limitations.

### Audio file locations

Impress will **not** embed the audio into the presentation, unlike PowerPoint. You will need to have the audio files accessible at the file paths you specified when creating the audio button.

If you are using the same comptuer to present as you used to create the slideshow, this should not be a problem if the file locations do not change.

If you cannot guarantee that the file paths will remain consistent, one workaround is to have the audio files in a folder that is in the same folder as the slideshow. E.g., the slideshow is in "/home/matt/presentation", and the audio is in "/home/matt/presentation/audio".

Then, you can edit the file paths for the audio objects to be relative to the presentation. E.g., a sound called "sound1.wav" would be listed as "audio/sound1.wav" instead of "/home/matt/presentation/audio/sound1.wav".

### No controls for audio

There are no media controls for the audio. As such, you cannot see how much of the audio is left or scrub to find specific moments in the file. You can halt playback by changing slides, but that is the only real control that you have over the audio.
