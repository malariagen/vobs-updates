#!/bin/bash
while inotifywait -e close_write post.ipynb
do
    pixi run jupyter nbconvert post.ipynb \
	 --to html \
	 --template basic \
	 --no-prompt \
	 --TagRemovePreprocessor.enabled=True \
	 --TagRemovePreprocessor.remove_input_tags remove_input \
	 --TagRemovePreprocessor.remove_all_output_tags remove_output \
	 --TagRemovePreprocessor.remove_cell_tags remove_cell
done