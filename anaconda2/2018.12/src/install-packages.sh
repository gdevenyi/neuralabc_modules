for package in nipype nibabel simpleitk dipy jupyterlab nilearn bokeh \
		plotly keras tensorflow theano statsmodels seaborn numba \
		pytorch jcc tqdm multiprocess pathos vtk seaborn; do
	conda install --no-update-deps ${package}
done

pip install qbatch
